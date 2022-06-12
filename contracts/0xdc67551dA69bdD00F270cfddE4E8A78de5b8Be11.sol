contract main {




// =====================  Runtime code  =====================


#
#  - sub_84979437(?)
#
const sub_7287b627(?) = 0x6292f3fb422e393342f257857e744d43b1ae7e70

const sub_b2d946bc(?) = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb


address owner;
array of uint256 stor1;
uint256 sub_e108d5db;
address sub_e4d07d70Address;
array of uint256 sub_152a9f06;
array of uint256 sub_797c82a7;
mapping of uint256 sub_77e840ed;
array of uint256 sub_0152600c;
mapping of uint8 stor16;
array of uint256 sub_44754090;
array of uint256 stor22;
uint256 sub_3309ba44;
array of struct stor203;

function sub_0152600c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= sub_0152600c[address(arg1)]:
        revert with 'NH{q', 50
    return sub_0152600c[address(arg1)][arg2]
}

function sub_152a9f06(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_152a9f06[arg1]
}

function sub_3309ba44(?) {
    return sub_3309ba44
}

function sub_44754090(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_44754090[arg1]
}

function sub_690aba52(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function sub_77e840ed(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_77e840ed[arg1]
}

function sub_797c82a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_797c82a7[arg1]
}

function sub_844109e4(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 5
    require arg2 < 36
    return stor[arg2 + (36 * arg1) + 22]
}

function sub_8b747176(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if 1 > uint8(arg1):
        revert with 0, 'HillBattlefield: bad index'
    if uint8(arg1) > 5:
        revert with 0, 'HillBattlefield: bad index'
    if uint8(arg1) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(arg1) - 1) >= 5:
        revert with 'NH{q', 50
    return sub_797c82a7[uint8(uint8(arg1) - 1)]
}

function owner() {
    return owner
}

function sub_c7d12e24(?) {
    return stor1.length
}

function sub_e108d5db(?) {
    return sub_e108d5db
}

function sub_e4d07d70(?) {
    return sub_e4d07d70Address
}

function sub_fc23c5ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0152600c[address(arg1)]
}

function sub_fe986f38(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if 1 > uint8(arg1):
        revert with 0, 'HillBattlefield: bad index'
    if uint8(arg1) > 5:
        revert with 0, 'HillBattlefield: bad index'
    if uint8(arg1) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(arg1) - 1) >= 5:
        revert with 'NH{q', 50
    return sub_44754090[uint8(uint8(arg1) - 1)]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    owner = arg1
}

function sub_aaccf275(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    stor1.length = arg1
}

function sub_c1376628(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    sub_e108d5db = arg1
}

function sub_8506b20f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_e4d07d70Address)
    staticcall sub_e4d07d70Address.0x9a6b2087 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[31 len 1] < 1:
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    if sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] < sub_77e840ed[arg1]:
        revert with 'NH{q', 17
    if not sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
        revert with 'NH{q', 18
    return (sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)])
}

function sub_8c14aa76(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_0152600c[address(msg.sender)][1][arg1]:
        revert with 0, 'Factions: summoner not owned'
    require ext_code.size(sub_e4d07d70Address)
    staticcall sub_e4d07d70Address.0x9a6b2087 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[31 len 1] < 1:
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    if sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] < sub_77e840ed[arg1]:
        revert with 'NH{q', 17
    if not sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
        revert with 'NH{q', 18
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    if sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] < sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
        revert with 'NH{q', 17
    sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] -= sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    sub_77e840ed[arg1] = sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]
    call msg.sender with:
       value sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04d57eab(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = sha3(address(msg.sender), 15) + 1
        if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Factions: summoner not owned'
        require ext_code.size(sub_e4d07d70Address)
        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _21 = mem[_19]
        require mem[_19] == mem[_19 + 31 len 1]
        require mem[_19 + 32] == mem[_19 + 32]
        if mem[_19 + 31 len 1] < 1:
            revert with 'NH{q', 17
        if uint8(mem[_19 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if sub_152a9f06[uint8(mem[_19 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 'NH{q', 17
        if not sub_44754090[uint8(mem[_19 + 31 len 1] - 1)]:
            revert with 'NH{q', 18
        if uint8(mem[_19 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if sub_797c82a7[uint8(mem[_19 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_19 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_19 + 31 len 1] - 1)]:
            revert with 'NH{q', 17
        sub_797c82a7[uint8(mem[_19 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_19 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_19 + 31 len 1] - 1)]
        if uint8(mem[_19 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 14
        sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(uint8(_21) - 1)]
        call msg.sender with:
           value sub_152a9f06[uint8(uint8(_21) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(_21) - 1)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_4bee2ce6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_0152600c[address(msg.sender)][1][arg1]:
        revert with 0, 'Factions: not owned'
    require ext_code.size(sub_e4d07d70Address)
    staticcall sub_e4d07d70Address.0x9a6b2087 with:
            gas gas_remaining wei
           args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[31 len 1] < 1:
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    if not sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
        revert with 'NH{q', 17
    sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]--
    if sub_0152600c[address(msg.sender)][1][arg1]:
        if sub_0152600c[address(msg.sender)][1][arg1] < 1:
            revert with 'NH{q', 17
        if sub_0152600c[address(msg.sender)] < 1:
            revert with 'NH{q', 17
        if sub_0152600c[address(msg.sender)] - 1 != sub_0152600c[address(msg.sender)][1][arg1] - 1:
            if sub_0152600c[address(msg.sender)] - 1 >= sub_0152600c[address(msg.sender)]:
                revert with 'NH{q', 50
            if sub_0152600c[address(msg.sender)][1][arg1] - 1 >= sub_0152600c[address(msg.sender)]:
                revert with 'NH{q', 50
            sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)][1][arg1]] = sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]]
            sub_0152600c[address(msg.sender)][1][sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]]] = sub_0152600c[address(msg.sender)][1][arg1]
        if not sub_0152600c[address(msg.sender)]:
            revert with 'NH{q', 49
        sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]] = 0
        sub_0152600c[address(msg.sender)]--
        sub_0152600c[address(msg.sender)][1][arg1] = 0
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    if sub_77e840ed[arg1] == sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]:
        mem[ceil32(return_data.size) + 96] = stor203[arg1].field_0
        idx = ceil32(return_data.size) + 96
        s = 0
        while ceil32(return_data.size) + 1248 > idx + 32:
            mem[idx + 32] = stor203[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < 36:
            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] < mem[(32 * idx) + ceil32(return_data.size) + 96]:
                revert with 'NH{q', 17
            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] -= mem[(32 * idx) + ceil32(return_data.size) + 96]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if not sub_0152600c[address(msg.sender)][1][arg1]:
            revert with 0, 'Factions: summoner not owned'
        require ext_code.size(sub_e4d07d70Address)
        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if ext_call.return_data[31 len 1] < 1:
            revert with 'NH{q', 17
        if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] < sub_77e840ed[arg1]:
            revert with 'NH{q', 17
        if not sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
            revert with 'NH{q', 18
        if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] < sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
            revert with 'NH{q', 17
        sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] -= sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]
        if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        sub_77e840ed[arg1] = sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]
        call msg.sender with:
           value sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96] = stor203[arg1].field_0
        idx = (2 * ceil32(return_data.size)) + 96
        s = 0
        while (2 * ceil32(return_data.size)) + 1248 > idx + 32:
            mem[idx + 32] = stor203[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < 36:
            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] < mem[(32 * idx) + (2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 17
            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] -= mem[(32 * idx) + (2 * ceil32(return_data.size)) + 96]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_06f5d09d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if uint8(arg1) >= 5:
        revert with 'NH{q', 50
    mem[64] = 1248
    mem[96] = stor22[uint8(arg1)]
    idx = 96
    s = (36 * uint8(arg1)) + 22
    while 1248 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    idx = 0
    s = 0
    while idx < 36:
        mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
        staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_70] == mem[_70]
        _72 = mem[_70 + 32]
        require mem[_70 + 32] <= test266151307()
        require _70 + mem[_70 + 32] + 31 < _70 + return_data.size
        _73 = mem[_70 + mem[_70 + 32]]
        if mem[_70 + mem[_70 + 32]] > test266151307():
            revert with 'NH{q', 65
        if _70 + ceil32(return_data.size) + ceil32(ceil32(mem[_70 + mem[_70 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_70 + mem[_70 + 32]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _70 + ceil32(return_data.size) + ceil32(ceil32(mem[_70 + mem[_70 + 32]])) + 1
        mem[_70 + ceil32(return_data.size)] = _73
        require _72 + _73 + 32 <= return_data.size
        t = 0
        while t < _73:
            mem[_70 + ceil32(return_data.size) + t + 32] = mem[_70 + _72 + t + 32]
            t = t + 32
            continue 
        if ceil32(_73) <= _73:
            require mem[_70 + 64] == mem[_70 + 64]
            _135 = mem[_70 + 96]
            require mem[_70 + 96] == mem[_70 + 96]
            require mem[_70 + 128] == bool(mem[_70 + 128])
            require mem[_70 + 160] == bool(mem[_70 + 160])
            _141 = mem[_70 + 192]
            require mem[_70 + 192] <= test266151307()
            require _70 + mem[_70 + 192] + 31 < _70 + return_data.size
            _143 = mem[_70 + mem[_70 + 192]]
            if mem[_70 + mem[_70 + 192]] > test266151307():
                revert with 'NH{q', 65
            _145 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 192]])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 192]])) + 1
            mem[_145] = _143
            require _141 + _143 + 32 <= return_data.size
            t = 0
            while t < _143:
                mem[_145 + t + 32] = mem[_70 + _141 + t + 32]
                t = t + 32
                continue 
            if ceil32(_143) <= _143:
                _191 = mem[_70 + 224]
                require mem[_70 + 224] <= test266151307()
                require _70 + mem[_70 + 224] + 31 < _70 + return_data.size
                _195 = mem[_70 + mem[_70 + 224]]
                if mem[_70 + mem[_70 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _199 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1
                mem[_199] = _195
                require _191 + _195 + 32 <= return_data.size
                t = 0
                while t < _195:
                    mem[_199 + t + 32] = mem[_70 + _191 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_195) > _195:
                    mem[_199 + _195 + 32] = 0
            else:
                mem[_145 + _143 + 32] = 0
                _193 = mem[_70 + 224]
                require mem[_70 + 224] <= test266151307()
                require _70 + mem[_70 + 224] + 31 < _70 + return_data.size
                _197 = mem[_70 + mem[_70 + 224]]
                if mem[_70 + mem[_70 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _201 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1
                mem[_201] = _197
                require _193 + _197 + 32 <= return_data.size
                t = 0
                while t < _197:
                    mem[_201 + t + 32] = mem[_70 + _193 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_197) > _197:
                    mem[_201 + _197 + 32] = 0
            if not _135:
                if idx >= 36:
                    revert with 'NH{q', 50
                if s > -mem[(32 * idx) + 96] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[(32 * idx) + 96]
                continue 
            if _135 < 1:
                revert with 'NH{q', 17
            if _135 - 1 >= 36:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 96] > -mem[(32 * _135 - 1) + 96] - 1:
                revert with 'NH{q', 17
            if s > -mem[(32 * idx) + 96] + -mem[(32 * _135 - 1) + 96] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 96] + mem[(32 * _135 - 1) + 96]
            continue 
        mem[_70 + ceil32(return_data.size) + _73 + 32] = 0
        require mem[_70 + 64] == mem[_70 + 64]
        _136 = mem[_70 + 96]
        require mem[_70 + 96] == mem[_70 + 96]
        require mem[_70 + 128] == bool(mem[_70 + 128])
        require mem[_70 + 160] == bool(mem[_70 + 160])
        _142 = mem[_70 + 192]
        require mem[_70 + 192] <= test266151307()
        require _70 + mem[_70 + 192] + 31 < _70 + return_data.size
        _144 = mem[_70 + mem[_70 + 192]]
        if mem[_70 + mem[_70 + 192]] > test266151307():
            revert with 'NH{q', 65
        _146 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 192]])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 192]])) + 1
        mem[_146] = _144
        require _142 + _144 + 32 <= return_data.size
        t = 0
        while t < _144:
            mem[_146 + t + 32] = mem[_70 + _142 + t + 32]
            t = t + 32
            continue 
        if ceil32(_144) <= _144:
            _192 = mem[_70 + 224]
            require mem[_70 + 224] <= test266151307()
            require _70 + mem[_70 + 224] + 31 < _70 + return_data.size
            _196 = mem[_70 + mem[_70 + 224]]
            if mem[_70 + mem[_70 + 224]] > test266151307():
                revert with 'NH{q', 65
            _200 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1
            mem[_200] = _196
            require _192 + _196 + 32 <= return_data.size
            t = 0
            while t < _196:
                mem[_200 + t + 32] = mem[_70 + _192 + t + 32]
                t = t + 32
                continue 
            if ceil32(_196) > _196:
                mem[_200 + _196 + 32] = 0
        else:
            mem[_146 + _144 + 32] = 0
            _194 = mem[_70 + 224]
            require mem[_70 + 224] <= test266151307()
            require _70 + mem[_70 + 224] + 31 < _70 + return_data.size
            _198 = mem[_70 + mem[_70 + 224]]
            if mem[_70 + mem[_70 + 224]] > test266151307():
                revert with 'NH{q', 65
            _202 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_70 + mem[_70 + 224]])) + 1
            mem[_202] = _198
            require _194 + _198 + 32 <= return_data.size
            t = 0
            while t < _198:
                mem[_202 + t + 32] = mem[_70 + _194 + t + 32]
                t = t + 32
                continue 
            if ceil32(_198) > _198:
                mem[_202 + _198 + 32] = 0
        if not _136:
            if idx >= 36:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + 96] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 96]
            continue 
        if _136 < 1:
            revert with 'NH{q', 17
        if _136 - 1 >= 36:
            revert with 'NH{q', 50
        if idx >= 36:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 96] > -mem[(32 * _136 - 1) + 96] - 1:
            revert with 'NH{q', 17
        if s > -mem[(32 * idx) + 96] + -mem[(32 * _136 - 1) + 96] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + 96] + mem[(32 * _136 - 1) + 96]
        continue 
    return s
}

function sub_c27bfc2d(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_3309ba44 > -86401:
        revert with 'NH{q', 17
    if sub_3309ba44 + (24 * 3600) >= block.timestamp:
        revert with 0, 'Factions: too early to clash'
    sub_3309ba44 = block.timestamp
    idx = 0
    s = 0
    while uint8(idx) < 5:
        _132 = mem[64]
        mem[64] = mem[64] + 1152
        mem[_132] = stor22[uint8(idx)]
        t = _132
        u = (36 * uint8(idx)) + 22
        while _132 + 1152 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        t = 0
        u = 0
        while t < 36:
            mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = t
            require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
            staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                    gas gas_remaining wei
                   args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_199] == mem[_199]
            _201 = mem[_199 + 32]
            require mem[_199 + 32] <= test266151307()
            require _199 + mem[_199 + 32] + 31 < _199 + return_data.size
            _202 = mem[_199 + mem[_199 + 32]]
            if mem[_199 + mem[_199 + 32]] > test266151307():
                revert with 'NH{q', 65
            if _199 + ceil32(return_data.size) + ceil32(ceil32(mem[_199 + mem[_199 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_199 + mem[_199 + 32]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _199 + ceil32(return_data.size) + ceil32(ceil32(mem[_199 + mem[_199 + 32]])) + 1
            mem[_199 + ceil32(return_data.size)] = _202
            require _201 + _202 + 32 <= return_data.size
            idx = 0
            while idx < _202:
                mem[_199 + ceil32(return_data.size) + idx + 32] = mem[_199 + _201 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_202) <= _202:
                require mem[_199 + 64] == mem[_199 + 64]
                _264 = mem[_199 + 96]
                require mem[_199 + 96] == mem[_199 + 96]
                require mem[_199 + 128] == bool(mem[_199 + 128])
                require mem[_199 + 160] == bool(mem[_199 + 160])
                _270 = mem[_199 + 192]
                require mem[_199 + 192] <= test266151307()
                require _199 + mem[_199 + 192] + 31 < _199 + return_data.size
                _272 = mem[_199 + mem[_199 + 192]]
                if mem[_199 + mem[_199 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _274 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 192]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 192]])) + 1
                mem[_274] = _272
                require _270 + _272 + 32 <= return_data.size
                idx = 0
                while idx < _272:
                    mem[_274 + idx + 32] = mem[_199 + _270 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_272) <= _272:
                    _320 = mem[_199 + 224]
                    require mem[_199 + 224] <= test266151307()
                    require _199 + mem[_199 + 224] + 31 < _199 + return_data.size
                    _324 = mem[_199 + mem[_199 + 224]]
                    if mem[_199 + mem[_199 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _328 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1
                    mem[_328] = _324
                    require _320 + _324 + 32 <= return_data.size
                    idx = 0
                    while idx < _324:
                        mem[_328 + idx + 32] = mem[_199 + _320 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_324) > _324:
                        mem[_328 + _324 + 32] = 0
                else:
                    mem[_274 + _272 + 32] = 0
                    _322 = mem[_199 + 224]
                    require mem[_199 + 224] <= test266151307()
                    require _199 + mem[_199 + 224] + 31 < _199 + return_data.size
                    _326 = mem[_199 + mem[_199 + 224]]
                    if mem[_199 + mem[_199 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _330 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1
                    mem[_330] = _326
                    require _322 + _326 + 32 <= return_data.size
                    idx = 0
                    while idx < _326:
                        mem[_330 + idx + 32] = mem[_199 + _322 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_326) > _326:
                        mem[_330 + _326 + 32] = 0
                if not _264:
                    if t >= 36:
                        revert with 'NH{q', 50
                    if u > -mem[(32 * t) + _132] - 1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + mem[(32 * t) + _132]
                    continue 
                if _264 < 1:
                    revert with 'NH{q', 17
                if _264 - 1 >= 36:
                    revert with 'NH{q', 50
                if t >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * t) + _132] > -mem[(32 * _264 - 1) + _132] - 1:
                    revert with 'NH{q', 17
                if u > -mem[(32 * t) + _132] + -mem[(32 * _264 - 1) + _132] - 1:
                    revert with 'NH{q', 17
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + mem[(32 * t) + _132] + mem[(32 * _264 - 1) + _132]
                continue 
            mem[_199 + ceil32(return_data.size) + _202 + 32] = 0
            require mem[_199 + 64] == mem[_199 + 64]
            _265 = mem[_199 + 96]
            require mem[_199 + 96] == mem[_199 + 96]
            require mem[_199 + 128] == bool(mem[_199 + 128])
            require mem[_199 + 160] == bool(mem[_199 + 160])
            _271 = mem[_199 + 192]
            require mem[_199 + 192] <= test266151307()
            require _199 + mem[_199 + 192] + 31 < _199 + return_data.size
            _273 = mem[_199 + mem[_199 + 192]]
            if mem[_199 + mem[_199 + 192]] > test266151307():
                revert with 'NH{q', 65
            _275 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 192]])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 192]])) + 1
            mem[_275] = _273
            require _271 + _273 + 32 <= return_data.size
            idx = 0
            while idx < _273:
                mem[_275 + idx + 32] = mem[_199 + _271 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_273) <= _273:
                _321 = mem[_199 + 224]
                require mem[_199 + 224] <= test266151307()
                require _199 + mem[_199 + 224] + 31 < _199 + return_data.size
                _325 = mem[_199 + mem[_199 + 224]]
                if mem[_199 + mem[_199 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _329 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1
                mem[_329] = _325
                require _321 + _325 + 32 <= return_data.size
                idx = 0
                while idx < _325:
                    mem[_329 + idx + 32] = mem[_199 + _321 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_325) > _325:
                    mem[_329 + _325 + 32] = 0
            else:
                mem[_275 + _273 + 32] = 0
                _323 = mem[_199 + 224]
                require mem[_199 + 224] <= test266151307()
                require _199 + mem[_199 + 224] + 31 < _199 + return_data.size
                _327 = mem[_199 + mem[_199 + 224]]
                if mem[_199 + mem[_199 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _331 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 224]])) + 1
                mem[_331] = _327
                require _323 + _327 + 32 <= return_data.size
                idx = 0
                while idx < _327:
                    mem[_331 + idx + 32] = mem[_199 + _323 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_327) > _327:
                    mem[_331 + _327 + 32] = 0
            if not _265:
                if t >= 36:
                    revert with 'NH{q', 50
                if u > -mem[(32 * t) + _132] - 1:
                    revert with 'NH{q', 17
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + mem[(32 * t) + _132]
                continue 
            if _265 < 1:
                revert with 'NH{q', 17
            if _265 - 1 >= 36:
                revert with 'NH{q', 50
            if t >= 36:
                revert with 'NH{q', 50
            if mem[(32 * t) + _132] > -mem[(32 * _265 - 1) + _132] - 1:
                revert with 'NH{q', 17
            if u > -mem[(32 * t) + _132] + -mem[(32 * _265 - 1) + _132] - 1:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            u = u + mem[(32 * t) + _132] + mem[(32 * _265 - 1) + _132]
            continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        if s >= u:
            idx = uint8(idx) + 1
            s = s
            continue 
        idx = uint8(idx) + 1
        s = u
        continue 
    idx = 0
    s = 0
    while uint8(idx) < 5:
        if s > -sub_797c82a7[uint8(idx)] - 1:
            revert with 'NH{q', 17
        if uint8(idx):
            if uint8(idx) >= 5:
                revert with 'NH{q', 50
            sub_797c82a7[uint8(idx)] = 0
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        s = s + sub_797c82a7[uint8(idx)]
        continue 
    sub_797c82a7.length = s
    if sub_152a9f06.length > -s - 1:
        revert with 'NH{q', 17
    sub_152a9f06.length += s
}

function sub_4cb58280(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = sha3(address(msg.sender), 15) + 1
        if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Factions: not owned'
        require ext_code.size(sub_e4d07d70Address)
        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _104 = mem[_102]
        require mem[_102] == mem[_102 + 31 len 1]
        require mem[_102 + 32] == mem[_102 + 32]
        if mem[_102 + 31 len 1] < 1:
            revert with 'NH{q', 17
        if uint8(mem[_102 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if not sub_44754090[uint8(mem[_102 + 31 len 1] - 1)]:
            revert with 'NH{q', 17
        sub_44754090[uint8(mem[_102 + 31 len 1] - 1)]--
        if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            if uint8(mem[_102 + 31 len 1] - 1) >= 5:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_102 + 31 len 1] - 1)]:
                mem[32] = 203
                _110 = mem[64]
                mem[64] = mem[64] + 1152
                mem[_110] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                s = _110
                t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                while _110 + 1152 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                s = 0
                while s < 36:
                    if uint8(uint8(_104) - 1) >= 5:
                        revert with 'NH{q', 50
                    if s >= 36:
                        revert with 'NH{q', 50
                    if stor[s + (36 * uint8(uint8(_104) - 1)) + 22] < mem[(32 * s) + _110]:
                        revert with 'NH{q', 17
                    stor[s + (36 * uint8(uint8(_104) - 1)) + 22] -= mem[(32 * s) + _110]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            else:
                mem[32] = sha3(address(msg.sender), 15) + 1
                if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 'Factions: summoner not owned'
                require ext_code.size(sub_e4d07d70Address)
                staticcall sub_e4d07d70Address.0x9a6b2087 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_121] == mem[_121 + 31 len 1]
                require mem[_121 + 32] == mem[_121 + 32]
                if mem[_121 + 31 len 1] < 1:
                    revert with 'NH{q', 17
                if uint8(mem[_121 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                if sub_152a9f06[uint8(mem[_121 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 'NH{q', 17
                if not sub_44754090[uint8(mem[_121 + 31 len 1] - 1)]:
                    revert with 'NH{q', 18
                if uint8(mem[_121 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                if sub_797c82a7[uint8(mem[_121 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_121 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_121 + 31 len 1] - 1)]:
                    revert with 'NH{q', 17
                sub_797c82a7[uint8(mem[_121 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_121 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_121 + 31 len 1] - 1)]
                if uint8(mem[_121 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_121 + 31 len 1] - 1)]
                call msg.sender with:
                   value sub_152a9f06[uint8(mem[_121 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_121 + 31 len 1] - 1)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 203
                _158 = mem[64]
                mem[64] = mem[64] + 1152
                mem[_158] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                s = _158
                t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                while _158 + 1152 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                s = 0
                while s < 36:
                    if uint8(uint8(_104) - 1) >= 5:
                        revert with 'NH{q', 50
                    if s >= 36:
                        revert with 'NH{q', 50
                    if stor[s + (36 * uint8(uint8(_104) - 1)) + 22] < mem[(32 * s) + _158]:
                        revert with 'NH{q', 17
                    stor[s + (36 * uint8(uint8(_104) - 1)) + 22] -= mem[(32 * s) + _158]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
        else:
            if sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] < 1:
                revert with 'NH{q', 17
            if sub_0152600c[address(msg.sender)] < 1:
                revert with 'NH{q', 17
            if sub_0152600c[address(msg.sender)] - 1 == sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] - 1:
                if not sub_0152600c[address(msg.sender)]:
                    revert with 'NH{q', 49
                sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]] = 0
                sub_0152600c[address(msg.sender)]--
                sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                if uint8(mem[_102 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_102 + 31 len 1] - 1)]:
                    mem[32] = 203
                    _127 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_127] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _127
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                    while _127 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(_104) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(_104) - 1)) + 22] < mem[(32 * s) + _127]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(_104) - 1)) + 22] -= mem[(32 * s) + _127]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                else:
                    mem[32] = sha3(address(msg.sender), 15) + 1
                    if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Factions: summoner not owned'
                    require ext_code.size(sub_e4d07d70Address)
                    staticcall sub_e4d07d70Address.0x9a6b2087 with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_142] == mem[_142 + 31 len 1]
                    require mem[_142 + 32] == mem[_142 + 32]
                    if mem[_142 + 31 len 1] < 1:
                        revert with 'NH{q', 17
                    if uint8(mem[_142 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_152a9f06[uint8(mem[_142 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 'NH{q', 17
                    if not sub_44754090[uint8(mem[_142 + 31 len 1] - 1)]:
                        revert with 'NH{q', 18
                    if uint8(mem[_142 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_797c82a7[uint8(mem[_142 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_142 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_142 + 31 len 1] - 1)]:
                        revert with 'NH{q', 17
                    sub_797c82a7[uint8(mem[_142 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_142 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_142 + 31 len 1] - 1)]
                    if uint8(mem[_142 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_142 + 31 len 1] - 1)]
                    call msg.sender with:
                       value sub_152a9f06[uint8(mem[_142 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_142 + 31 len 1] - 1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 203
                    _163 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_163] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _163
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                    while _163 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(_104) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(_104) - 1)) + 22] < mem[(32 * s) + _163]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(_104) - 1)) + 22] -= mem[(32 * s) + _163]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
            else:
                if sub_0152600c[address(msg.sender)] - 1 >= sub_0152600c[address(msg.sender)]:
                    revert with 'NH{q', 50
                if sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 >= sub_0152600c[address(msg.sender)]:
                    revert with 'NH{q', 50
                sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]] = sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]]
                sub_0152600c[address(msg.sender)][1][sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]]] = sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]
                if not sub_0152600c[address(msg.sender)]:
                    revert with 'NH{q', 49
                sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]] = 0
                sub_0152600c[address(msg.sender)]--
                sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                if uint8(mem[_102 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_102 + 31 len 1] - 1)]:
                    mem[32] = 203
                    _133 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_133] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _133
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                    while _133 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(_104) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(_104) - 1)) + 22] < mem[(32 * s) + _133]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(_104) - 1)) + 22] -= mem[(32 * s) + _133]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                else:
                    mem[32] = sha3(address(msg.sender), 15) + 1
                    if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Factions: summoner not owned'
                    require ext_code.size(sub_e4d07d70Address)
                    staticcall sub_e4d07d70Address.0x9a6b2087 with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_146] == mem[_146 + 31 len 1]
                    require mem[_146 + 32] == mem[_146 + 32]
                    if mem[_146 + 31 len 1] < 1:
                        revert with 'NH{q', 17
                    if uint8(mem[_146 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_152a9f06[uint8(mem[_146 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 'NH{q', 17
                    if not sub_44754090[uint8(mem[_146 + 31 len 1] - 1)]:
                        revert with 'NH{q', 18
                    if uint8(mem[_146 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_797c82a7[uint8(mem[_146 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_146 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_146 + 31 len 1] - 1)]:
                        revert with 'NH{q', 17
                    sub_797c82a7[uint8(mem[_146 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_146 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_146 + 31 len 1] - 1)]
                    if uint8(mem[_146 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_146 + 31 len 1] - 1)]
                    call msg.sender with:
                       value sub_152a9f06[uint8(mem[_146 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_146 + 31 len 1] - 1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 203
                    _168 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_168] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _168
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                    while _168 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(_104) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(_104) - 1)) + 22] < mem[(32 * s) + _168]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(_104) - 1)) + 22] -= mem[(32 * s) + _168]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_665393dd(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor1.length and ('cd', 4).length > -1 / stor1.length:
        revert with 'NH{q', 17
    if msg.value < stor1.length * ('cd', 4).length:
        revert with 0, 'Factions: did not pay tribute'
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(sub_e4d07d70Address)
        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _701 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _702 = mem[_701]
        require mem[_701] == mem[_701 + 31 len 1]
        require mem[_701 + 32] == mem[_701 + 32]
        if mem[_701 + 32] <= 0:
            revert with 0, 'Factions: not enrolled'
        if msg.value < stor1.length:
            revert with 0, 'Factions: did not pay tribute'
        if mem[_701 + 31 len 1] < 1:
            revert with 'NH{q', 17
        if uint8(mem[_701 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if sub_44754090[uint8(mem[_701 + 31 len 1] - 1)] == -1:
            revert with 'NH{q', 17
        sub_44754090[uint8(mem[_701 + 31 len 1] - 1)]++
        if uint8(mem[_701 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if sub_797c82a7[uint8(mem[_701 + 31 len 1] - 1)] > -stor1.length - 1:
            revert with 'NH{q', 17
        sub_797c82a7[uint8(mem[_701 + 31 len 1] - 1)] += stor1.length
        if uint8(mem[_701 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_701 + 31 len 1] - 1)]
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = sha3(address(msg.sender), 15) + 1
        if sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
            staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _717 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _717 + 31 < _717 + return_data.size
            _719 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _717
            u = _719
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _725 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_725 len 1152] = call.data[calldata.size len 1152]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _731 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _733 = mem[_731]
            require mem[_731] == mem[_731]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _741 = mem[_739]
            require mem[_739] == mem[_739 + 28 len 4]
            _743 = mem[_739 + 32]
            require mem[_739 + 32] == mem[_739 + 60 len 4]
            _745 = mem[_739 + 64]
            require mem[_739 + 64] == mem[_739 + 92 len 4]
            _747 = mem[_739 + 96]
            require mem[_739 + 96] == mem[_739 + 124 len 4]
            _749 = mem[_739 + 128]
            require mem[_739 + 128] == mem[_739 + 156 len 4]
            _751 = mem[_739 + 160]
            require mem[_739 + 160] == mem[_739 + 188 len 4]
            s = 0
            while s < 36:
                if s > -2:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s + 1
                require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
                staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                        gas gas_remaining wei
                       args (s + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1109 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 256
                require mem[_1109] == mem[_1109]
                _1113 = mem[_1109 + 32]
                require mem[_1109 + 32] <= test266151307()
                require _1109 + mem[_1109 + 32] + 31 < _1109 + return_data.size
                _1115 = mem[_1109 + mem[_1109 + 32]]
                if mem[_1109 + mem[_1109 + 32]] > test266151307():
                    revert with 'NH{q', 65
                if _1109 + ceil32(return_data.size) + ceil32(ceil32(mem[_1109 + mem[_1109 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_1109 + mem[_1109 + 32]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1109 + ceil32(return_data.size) + ceil32(ceil32(mem[_1109 + mem[_1109 + 32]])) + 1
                mem[_1109 + ceil32(return_data.size)] = _1115
                require _1113 + _1115 + 32 <= return_data.size
                idx = 0
                while idx < _1115:
                    mem[_1109 + ceil32(return_data.size) + idx + 32] = mem[_1109 + _1113 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1115) <= _1115:
                    _1399 = mem[_1109 + 64]
                    require mem[_1109 + 64] == mem[_1109 + 64]
                    require mem[_1109 + 96] == mem[_1109 + 96]
                    require mem[_1109 + 128] == bool(mem[_1109 + 128])
                    require mem[_1109 + 160] == bool(mem[_1109 + 160])
                    _1419 = mem[_1109 + 192]
                    require mem[_1109 + 192] <= test266151307()
                    require _1109 + mem[_1109 + 192] + 31 < _1109 + return_data.size
                    _1423 = mem[_1109 + mem[_1109 + 192]]
                    if mem[_1109 + mem[_1109 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1427 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 192]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 192]])) + 1
                    mem[_1427] = _1423
                    require _1419 + _1423 + 32 <= return_data.size
                    idx = 0
                    while idx < _1423:
                        mem[_1427 + idx + 32] = mem[_1109 + _1419 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1423) <= _1423:
                        _1681 = mem[_1109 + 224]
                        require mem[_1109 + 224] <= test266151307()
                        require _1109 + mem[_1109 + 224] + 31 < _1109 + return_data.size
                        _1689 = mem[_1109 + mem[_1109 + 224]]
                        if mem[_1109 + mem[_1109 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1697 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1
                        mem[_1697] = _1689
                        require _1681 + _1689 + 32 <= return_data.size
                        idx = 0
                        while idx < _1689:
                            mem[_1697 + idx + 32] = mem[_1109 + _1681 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1689) > _1689:
                            mem[_1697 + _1689 + 32] = 0
                    else:
                        mem[_1427 + _1423 + 32] = 0
                        _1685 = mem[_1109 + 224]
                        require mem[_1109 + 224] <= test266151307()
                        require _1109 + mem[_1109 + 224] + 31 < _1109 + return_data.size
                        _1693 = mem[_1109 + mem[_1109 + 224]]
                        if mem[_1109 + mem[_1109 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1701 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1
                        mem[_1701] = _1693
                        require _1685 + _1693 + 32 <= return_data.size
                        idx = 0
                        while idx < _1693:
                            mem[_1701 + idx + 32] = mem[_1109 + _1685 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1693) > _1693:
                            mem[_1701 + _1693 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if _1399 == 1:
                        if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_741) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_741)
                    else:
                        if _1399 == 2:
                            if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_743) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_743)
                        else:
                            if _1399 == 3:
                                if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_745) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_745)
                            else:
                                if _1399 == 4:
                                    if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_747) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_747)
                                else:
                                    if _1399 == 5:
                                        if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_749) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_749)
                                    else:
                                        if _1399 != 6:
                                        else:
                                            if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_751) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_751)
                else:
                    mem[_1109 + ceil32(return_data.size) + _1115 + 32] = 0
                    _1402 = mem[_1109 + 64]
                    require mem[_1109 + 64] == mem[_1109 + 64]
                    require mem[_1109 + 96] == mem[_1109 + 96]
                    require mem[_1109 + 128] == bool(mem[_1109 + 128])
                    require mem[_1109 + 160] == bool(mem[_1109 + 160])
                    _1421 = mem[_1109 + 192]
                    require mem[_1109 + 192] <= test266151307()
                    require _1109 + mem[_1109 + 192] + 31 < _1109 + return_data.size
                    _1425 = mem[_1109 + mem[_1109 + 192]]
                    if mem[_1109 + mem[_1109 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1429 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 192]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 192]])) + 1
                    mem[_1429] = _1425
                    require _1421 + _1425 + 32 <= return_data.size
                    idx = 0
                    while idx < _1425:
                        mem[_1429 + idx + 32] = mem[_1109 + _1421 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1425) <= _1425:
                        _1682 = mem[_1109 + 224]
                        require mem[_1109 + 224] <= test266151307()
                        require _1109 + mem[_1109 + 224] + 31 < _1109 + return_data.size
                        _1690 = mem[_1109 + mem[_1109 + 224]]
                        if mem[_1109 + mem[_1109 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1698 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1
                        mem[_1698] = _1690
                        require _1682 + _1690 + 32 <= return_data.size
                        idx = 0
                        while idx < _1690:
                            mem[_1698 + idx + 32] = mem[_1109 + _1682 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1690) > _1690:
                            mem[_1698 + _1690 + 32] = 0
                    else:
                        mem[_1429 + _1425 + 32] = 0
                        _1686 = mem[_1109 + 224]
                        require mem[_1109 + 224] <= test266151307()
                        require _1109 + mem[_1109 + 224] + 31 < _1109 + return_data.size
                        _1694 = mem[_1109 + mem[_1109 + 224]]
                        if mem[_1109 + mem[_1109 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1702 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1109 + mem[_1109 + 224]])) + 1
                        mem[_1702] = _1694
                        require _1686 + _1694 + 32 <= return_data.size
                        idx = 0
                        while idx < _1694:
                            mem[_1702 + idx + 32] = mem[_1109 + _1686 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1694) > _1694:
                            mem[_1702 + _1694 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if _1402 == 1:
                        if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_741) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_741)
                    else:
                        if _1402 == 2:
                            if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_743) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_743)
                        else:
                            if _1402 == 3:
                                if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_745) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_745)
                            else:
                                if _1402 == 4:
                                    if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_747) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_747)
                                else:
                                    if _1402 == 5:
                                        if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_749) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_749)
                                    else:
                                        if _1402 != 6:
                                        else:
                                            if mem[(32 * s) + _719 + 31 len 1] and _733 > -1 / mem[(32 * s) + _719 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _719 + 31 len 1] * _733 and uint32(_751) > -1 / mem[(32 * s) + _719 + 31 len 1] * _733:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _725] = mem[(32 * s) + _719 + 31 len 1] * _733 * uint32(_751)
                if uint8(uint8(_702) - 1) >= 5:
                    revert with 'NH{q', 50
                if s >= 36:
                    revert with 'NH{q', 50
                if stor[s + (36 * uint8(uint8(_702) - 1)) + 22] > -mem[(32 * s) + _725] - 1:
                    revert with 'NH{q', 17
                stor[s + (36 * uint8(uint8(_702) - 1)) + 22] += mem[(32 * s) + _725]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 203
            t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
            s = _725
            while _725 + 1152 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
        else:
            sub_0152600c[address(msg.sender)]++
            sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]] = cd[((32 * idx) + cd[4] + 36)]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(address(msg.sender), 15) + 1
            sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] = sub_0152600c[address(msg.sender)]
            require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
            staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _718 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _718 + 31 < _718 + return_data.size
            _720 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _718
            u = _720
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _726 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_726 len 1152] = call.data[calldata.size len 1152]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _734 = mem[_732]
            require mem[_732] == mem[_732]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _740 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _742 = mem[_740]
            require mem[_740] == mem[_740 + 28 len 4]
            _744 = mem[_740 + 32]
            require mem[_740 + 32] == mem[_740 + 60 len 4]
            _746 = mem[_740 + 64]
            require mem[_740 + 64] == mem[_740 + 92 len 4]
            _748 = mem[_740 + 96]
            require mem[_740 + 96] == mem[_740 + 124 len 4]
            _750 = mem[_740 + 128]
            require mem[_740 + 128] == mem[_740 + 156 len 4]
            _752 = mem[_740 + 160]
            require mem[_740 + 160] == mem[_740 + 188 len 4]
            s = 0
            while s < 36:
                if s > -2:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s + 1
                require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
                staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                        gas gas_remaining wei
                       args (s + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1110 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 256
                require mem[_1110] == mem[_1110]
                _1114 = mem[_1110 + 32]
                require mem[_1110 + 32] <= test266151307()
                require _1110 + mem[_1110 + 32] + 31 < _1110 + return_data.size
                _1116 = mem[_1110 + mem[_1110 + 32]]
                if mem[_1110 + mem[_1110 + 32]] > test266151307():
                    revert with 'NH{q', 65
                if _1110 + ceil32(return_data.size) + ceil32(ceil32(mem[_1110 + mem[_1110 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_1110 + mem[_1110 + 32]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1110 + ceil32(return_data.size) + ceil32(ceil32(mem[_1110 + mem[_1110 + 32]])) + 1
                mem[_1110 + ceil32(return_data.size)] = _1116
                require _1114 + _1116 + 32 <= return_data.size
                idx = 0
                while idx < _1116:
                    mem[_1110 + ceil32(return_data.size) + idx + 32] = mem[_1110 + _1114 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1116) <= _1116:
                    _1400 = mem[_1110 + 64]
                    require mem[_1110 + 64] == mem[_1110 + 64]
                    require mem[_1110 + 96] == mem[_1110 + 96]
                    require mem[_1110 + 128] == bool(mem[_1110 + 128])
                    require mem[_1110 + 160] == bool(mem[_1110 + 160])
                    _1420 = mem[_1110 + 192]
                    require mem[_1110 + 192] <= test266151307()
                    require _1110 + mem[_1110 + 192] + 31 < _1110 + return_data.size
                    _1424 = mem[_1110 + mem[_1110 + 192]]
                    if mem[_1110 + mem[_1110 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1428 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 192]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 192]])) + 1
                    mem[_1428] = _1424
                    require _1420 + _1424 + 32 <= return_data.size
                    idx = 0
                    while idx < _1424:
                        mem[_1428 + idx + 32] = mem[_1110 + _1420 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1424) <= _1424:
                        _1683 = mem[_1110 + 224]
                        require mem[_1110 + 224] <= test266151307()
                        require _1110 + mem[_1110 + 224] + 31 < _1110 + return_data.size
                        _1691 = mem[_1110 + mem[_1110 + 224]]
                        if mem[_1110 + mem[_1110 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1699 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1
                        mem[_1699] = _1691
                        require _1683 + _1691 + 32 <= return_data.size
                        idx = 0
                        while idx < _1691:
                            mem[_1699 + idx + 32] = mem[_1110 + _1683 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1691) > _1691:
                            mem[_1699 + _1691 + 32] = 0
                    else:
                        mem[_1428 + _1424 + 32] = 0
                        _1687 = mem[_1110 + 224]
                        require mem[_1110 + 224] <= test266151307()
                        require _1110 + mem[_1110 + 224] + 31 < _1110 + return_data.size
                        _1695 = mem[_1110 + mem[_1110 + 224]]
                        if mem[_1110 + mem[_1110 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1703 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1
                        mem[_1703] = _1695
                        require _1687 + _1695 + 32 <= return_data.size
                        idx = 0
                        while idx < _1695:
                            mem[_1703 + idx + 32] = mem[_1110 + _1687 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1695) > _1695:
                            mem[_1703 + _1695 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if _1400 == 1:
                        if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_742) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_742)
                    else:
                        if _1400 == 2:
                            if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_744) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_744)
                        else:
                            if _1400 == 3:
                                if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_746) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_746)
                            else:
                                if _1400 == 4:
                                    if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_748) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_748)
                                else:
                                    if _1400 == 5:
                                        if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_750) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_750)
                                    else:
                                        if _1400 != 6:
                                        else:
                                            if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_752) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_752)
                else:
                    mem[_1110 + ceil32(return_data.size) + _1116 + 32] = 0
                    _1404 = mem[_1110 + 64]
                    require mem[_1110 + 64] == mem[_1110 + 64]
                    require mem[_1110 + 96] == mem[_1110 + 96]
                    require mem[_1110 + 128] == bool(mem[_1110 + 128])
                    require mem[_1110 + 160] == bool(mem[_1110 + 160])
                    _1422 = mem[_1110 + 192]
                    require mem[_1110 + 192] <= test266151307()
                    require _1110 + mem[_1110 + 192] + 31 < _1110 + return_data.size
                    _1426 = mem[_1110 + mem[_1110 + 192]]
                    if mem[_1110 + mem[_1110 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1430 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 192]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 192]])) + 1
                    mem[_1430] = _1426
                    require _1422 + _1426 + 32 <= return_data.size
                    idx = 0
                    while idx < _1426:
                        mem[_1430 + idx + 32] = mem[_1110 + _1422 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1426) <= _1426:
                        _1684 = mem[_1110 + 224]
                        require mem[_1110 + 224] <= test266151307()
                        require _1110 + mem[_1110 + 224] + 31 < _1110 + return_data.size
                        _1692 = mem[_1110 + mem[_1110 + 224]]
                        if mem[_1110 + mem[_1110 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1700 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1
                        mem[_1700] = _1692
                        require _1684 + _1692 + 32 <= return_data.size
                        idx = 0
                        while idx < _1692:
                            mem[_1700 + idx + 32] = mem[_1110 + _1684 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1692) > _1692:
                            mem[_1700 + _1692 + 32] = 0
                    else:
                        mem[_1430 + _1426 + 32] = 0
                        _1688 = mem[_1110 + 224]
                        require mem[_1110 + 224] <= test266151307()
                        require _1110 + mem[_1110 + 224] + 31 < _1110 + return_data.size
                        _1696 = mem[_1110 + mem[_1110 + 224]]
                        if mem[_1110 + mem[_1110 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1704 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1110 + mem[_1110 + 224]])) + 1
                        mem[_1704] = _1696
                        require _1688 + _1696 + 32 <= return_data.size
                        idx = 0
                        while idx < _1696:
                            mem[_1704 + idx + 32] = mem[_1110 + _1688 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1696) > _1696:
                            mem[_1704 + _1696 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if _1404 == 1:
                        if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_742) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_742)
                    else:
                        if _1404 == 2:
                            if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_744) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_744)
                        else:
                            if _1404 == 3:
                                if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_746) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_746)
                            else:
                                if _1404 == 4:
                                    if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_748) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_748)
                                else:
                                    if _1404 == 5:
                                        if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_750) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_750)
                                    else:
                                        if _1404 != 6:
                                        else:
                                            if mem[(32 * s) + _720 + 31 len 1] and _734 > -1 / mem[(32 * s) + _720 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _720 + 31 len 1] * _734 and uint32(_752) > -1 / mem[(32 * s) + _720 + 31 len 1] * _734:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _726] = mem[(32 * s) + _720 + 31 len 1] * _734 * uint32(_752)
                if uint8(uint8(_702) - 1) >= 5:
                    revert with 'NH{q', 50
                if s >= 36:
                    revert with 'NH{q', 50
                if stor[s + (36 * uint8(uint8(_702) - 1)) + 22] > -mem[(32 * s) + _726] - 1:
                    revert with 'NH{q', 17
                stor[s + (36 * uint8(uint8(_702) - 1)) + 22] += mem[(32 * s) + _726]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 203
            t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
            s = _726
            while _726 + 1152 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
        s = sha3(cd[((32 * idx) + cd[4] + 36)], 203) + 36
        while sha3(cd[((32 * idx) + cd[4] + 36)], 203) + 36 > s:
            stor[s] = 0
            s = s + 1
            continue 
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_3704483b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_e4d07d70Address)
    staticcall sub_e4d07d70Address.0x9a6b2087 with:
            gas gas_remaining wei
           args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Factions: not enrolled'
    if msg.value < stor1.length:
        revert with 0, 'Factions: did not pay tribute'
    if ext_call.return_data[31 len 1] < 1:
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    if sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)] == -1:
        revert with 'NH{q', 17
    sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]++
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    if sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] > -stor1.length - 1:
        revert with 'NH{q', 17
    sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] += stor1.length
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    sub_77e840ed[arg1] = sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]
    mem[0] = arg1
    mem[32] = sha3(address(msg.sender), 15) + 1
    if sub_0152600c[address(msg.sender)][1][arg1]:
        require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
        staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
        if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
            revert with 'NH{q', 65
        require 1152 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + 96
        t = (2 * ceil32(return_data.size)) + 96
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 1248 len 1152] = call.data[calldata.size len 1152]
        mem[(2 * ceil32(return_data.size)) + 2404] = arg1
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 2400] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(4 * ceil32(return_data.size)) + 2400 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 2400
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[28 len 4]
        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == ext_call.return_data[156 len 4]
        require ext_call.return_data[160] == ext_call.return_data[188 len 4]
        idx = 0
        while idx < 36:
            if idx > -2:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx + 1
            require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
            staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _411 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_411] == mem[_411]
            _415 = mem[_411 + 32]
            require mem[_411 + 32] <= test266151307()
            require _411 + mem[_411 + 32] + 31 < _411 + return_data.size
            _417 = mem[_411 + mem[_411 + 32]]
            if mem[_411 + mem[_411 + 32]] > test266151307():
                revert with 'NH{q', 65
            if _411 + ceil32(return_data.size) + ceil32(ceil32(mem[_411 + mem[_411 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_411 + mem[_411 + 32]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _411 + ceil32(return_data.size) + ceil32(ceil32(mem[_411 + mem[_411 + 32]])) + 1
            mem[_411 + ceil32(return_data.size)] = _417
            require _415 + _417 + 32 <= return_data.size
            s = 0
            while s < _417:
                mem[_411 + ceil32(return_data.size) + s + 32] = mem[_411 + _415 + s + 32]
                s = s + 32
                continue 
            if ceil32(_417) <= _417:
                _701 = mem[_411 + 64]
                require mem[_411 + 64] == mem[_411 + 64]
                require mem[_411 + 96] == mem[_411 + 96]
                require mem[_411 + 128] == bool(mem[_411 + 128])
                require mem[_411 + 160] == bool(mem[_411 + 160])
                _721 = mem[_411 + 192]
                require mem[_411 + 192] <= test266151307()
                require _411 + mem[_411 + 192] + 31 < _411 + return_data.size
                _725 = mem[_411 + mem[_411 + 192]]
                if mem[_411 + mem[_411 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _729 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 192]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 192]])) + 1
                mem[_729] = _725
                require _721 + _725 + 32 <= return_data.size
                s = 0
                while s < _725:
                    mem[_729 + s + 32] = mem[_411 + _721 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_725) <= _725:
                    _983 = mem[_411 + 224]
                    require mem[_411 + 224] <= test266151307()
                    require _411 + mem[_411 + 224] + 31 < _411 + return_data.size
                    _991 = mem[_411 + mem[_411 + 224]]
                    if mem[_411 + mem[_411 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _999 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1
                    mem[_999] = _991
                    require _983 + _991 + 32 <= return_data.size
                    s = 0
                    while s < _991:
                        mem[_999 + s + 32] = mem[_411 + _983 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) > _991:
                        mem[_999 + _991 + 32] = 0
                else:
                    mem[_729 + _725 + 32] = 0
                    _987 = mem[_411 + 224]
                    require mem[_411 + 224] <= test266151307()
                    require _411 + mem[_411 + 224] + 31 < _411 + return_data.size
                    _995 = mem[_411 + mem[_411 + 224]]
                    if mem[_411 + mem[_411 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1003 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1
                    mem[_1003] = _995
                    require _987 + _995 + 32 <= return_data.size
                    s = 0
                    while s < _995:
                        mem[_1003 + s + 32] = mem[_411 + _987 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_995) > _995:
                        mem[_1003 + _995 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if _701 == 1:
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if _701 == 2:
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if _701 == 3:
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                revert with 'NH{q', 50
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])) - 1:
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if _701 == 4:
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])) - 1:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if _701 == 5:
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])) - 1:
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _701 != 6:
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > -mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]
                                    else:
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])) - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            else:
                mem[_411 + ceil32(return_data.size) + _417 + 32] = 0
                _704 = mem[_411 + 64]
                require mem[_411 + 64] == mem[_411 + 64]
                require mem[_411 + 96] == mem[_411 + 96]
                require mem[_411 + 128] == bool(mem[_411 + 128])
                require mem[_411 + 160] == bool(mem[_411 + 160])
                _723 = mem[_411 + 192]
                require mem[_411 + 192] <= test266151307()
                require _411 + mem[_411 + 192] + 31 < _411 + return_data.size
                _727 = mem[_411 + mem[_411 + 192]]
                if mem[_411 + mem[_411 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _731 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 192]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 192]])) + 1
                mem[_731] = _727
                require _723 + _727 + 32 <= return_data.size
                s = 0
                while s < _727:
                    mem[_731 + s + 32] = mem[_411 + _723 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_727) <= _727:
                    _984 = mem[_411 + 224]
                    require mem[_411 + 224] <= test266151307()
                    require _411 + mem[_411 + 224] + 31 < _411 + return_data.size
                    _992 = mem[_411 + mem[_411 + 224]]
                    if mem[_411 + mem[_411 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1000 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1
                    mem[_1000] = _992
                    require _984 + _992 + 32 <= return_data.size
                    s = 0
                    while s < _992:
                        mem[_1000 + s + 32] = mem[_411 + _984 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_992) > _992:
                        mem[_1000 + _992 + 32] = 0
                else:
                    mem[_731 + _727 + 32] = 0
                    _988 = mem[_411 + 224]
                    require mem[_411 + 224] <= test266151307()
                    require _411 + mem[_411 + 224] + 31 < _411 + return_data.size
                    _996 = mem[_411 + mem[_411 + 224]]
                    if mem[_411 + mem[_411 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1004 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1
                    mem[_1004] = _996
                    require _988 + _996 + 32 <= return_data.size
                    s = 0
                    while s < _996:
                        mem[_1004 + s + 32] = mem[_411 + _988 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_996) > _996:
                        mem[_1004 + _996 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if _704 == 1:
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if _704 == 2:
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if _704 == 3:
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                revert with 'NH{q', 50
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])) - 1:
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if _704 == 4:
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])) - 1:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if _704 == 5:
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])) - 1:
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _704 != 6:
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > -mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]
                                    else:
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])) - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        sub_0152600c[address(msg.sender)]++
        sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]] = arg1
        mem[0] = arg1
        mem[32] = sha3(address(msg.sender), 15) + 1
        sub_0152600c[address(msg.sender)][1][arg1] = sub_0152600c[address(msg.sender)]
        require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
        staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
        if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
            revert with 'NH{q', 65
        require 1152 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + 96
        t = (2 * ceil32(return_data.size)) + 96
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 1248 len 1152] = call.data[calldata.size len 1152]
        mem[(2 * ceil32(return_data.size)) + 2404] = arg1
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 2400] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(4 * ceil32(return_data.size)) + 2400 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 2400
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[28 len 4]
        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == ext_call.return_data[156 len 4]
        require ext_call.return_data[160] == ext_call.return_data[188 len 4]
        idx = 0
        while idx < 36:
            if idx > -2:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx + 1
            require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
            staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _412 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_412] == mem[_412]
            _416 = mem[_412 + 32]
            require mem[_412 + 32] <= test266151307()
            require _412 + mem[_412 + 32] + 31 < _412 + return_data.size
            _418 = mem[_412 + mem[_412 + 32]]
            if mem[_412 + mem[_412 + 32]] > test266151307():
                revert with 'NH{q', 65
            if _412 + ceil32(return_data.size) + ceil32(ceil32(mem[_412 + mem[_412 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_412 + mem[_412 + 32]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _412 + ceil32(return_data.size) + ceil32(ceil32(mem[_412 + mem[_412 + 32]])) + 1
            mem[_412 + ceil32(return_data.size)] = _418
            require _416 + _418 + 32 <= return_data.size
            s = 0
            while s < _418:
                mem[_412 + ceil32(return_data.size) + s + 32] = mem[_412 + _416 + s + 32]
                s = s + 32
                continue 
            if ceil32(_418) <= _418:
                _702 = mem[_412 + 64]
                require mem[_412 + 64] == mem[_412 + 64]
                require mem[_412 + 96] == mem[_412 + 96]
                require mem[_412 + 128] == bool(mem[_412 + 128])
                require mem[_412 + 160] == bool(mem[_412 + 160])
                _722 = mem[_412 + 192]
                require mem[_412 + 192] <= test266151307()
                require _412 + mem[_412 + 192] + 31 < _412 + return_data.size
                _726 = mem[_412 + mem[_412 + 192]]
                if mem[_412 + mem[_412 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _730 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 192]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 192]])) + 1
                mem[_730] = _726
                require _722 + _726 + 32 <= return_data.size
                s = 0
                while s < _726:
                    mem[_730 + s + 32] = mem[_412 + _722 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_726) <= _726:
                    _985 = mem[_412 + 224]
                    require mem[_412 + 224] <= test266151307()
                    require _412 + mem[_412 + 224] + 31 < _412 + return_data.size
                    _993 = mem[_412 + mem[_412 + 224]]
                    if mem[_412 + mem[_412 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1001 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1
                    mem[_1001] = _993
                    require _985 + _993 + 32 <= return_data.size
                    s = 0
                    while s < _993:
                        mem[_1001 + s + 32] = mem[_412 + _985 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_993) > _993:
                        mem[_1001 + _993 + 32] = 0
                else:
                    mem[_730 + _726 + 32] = 0
                    _989 = mem[_412 + 224]
                    require mem[_412 + 224] <= test266151307()
                    require _412 + mem[_412 + 224] + 31 < _412 + return_data.size
                    _997 = mem[_412 + mem[_412 + 224]]
                    if mem[_412 + mem[_412 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1005 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1
                    mem[_1005] = _997
                    require _989 + _997 + 32 <= return_data.size
                    s = 0
                    while s < _997:
                        mem[_1005 + s + 32] = mem[_412 + _989 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_997) > _997:
                        mem[_1005 + _997 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if _702 == 1:
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if _702 == 2:
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if _702 == 3:
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                revert with 'NH{q', 50
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])) - 1:
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if _702 == 4:
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])) - 1:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if _702 == 5:
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])) - 1:
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _702 != 6:
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > -mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]
                                    else:
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])) - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            else:
                mem[_412 + ceil32(return_data.size) + _418 + 32] = 0
                _706 = mem[_412 + 64]
                require mem[_412 + 64] == mem[_412 + 64]
                require mem[_412 + 96] == mem[_412 + 96]
                require mem[_412 + 128] == bool(mem[_412 + 128])
                require mem[_412 + 160] == bool(mem[_412 + 160])
                _724 = mem[_412 + 192]
                require mem[_412 + 192] <= test266151307()
                require _412 + mem[_412 + 192] + 31 < _412 + return_data.size
                _728 = mem[_412 + mem[_412 + 192]]
                if mem[_412 + mem[_412 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _732 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 192]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 192]])) + 1
                mem[_732] = _728
                require _724 + _728 + 32 <= return_data.size
                s = 0
                while s < _728:
                    mem[_732 + s + 32] = mem[_412 + _724 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_728) <= _728:
                    _986 = mem[_412 + 224]
                    require mem[_412 + 224] <= test266151307()
                    require _412 + mem[_412 + 224] + 31 < _412 + return_data.size
                    _994 = mem[_412 + mem[_412 + 224]]
                    if mem[_412 + mem[_412 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1002 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1
                    mem[_1002] = _994
                    require _986 + _994 + 32 <= return_data.size
                    s = 0
                    while s < _994:
                        mem[_1002 + s + 32] = mem[_412 + _986 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_994) > _994:
                        mem[_1002 + _994 + 32] = 0
                else:
                    mem[_732 + _728 + 32] = 0
                    _990 = mem[_412 + 224]
                    require mem[_412 + 224] <= test266151307()
                    require _412 + mem[_412 + 224] + 31 < _412 + return_data.size
                    _998 = mem[_412 + mem[_412 + 224]]
                    if mem[_412 + mem[_412 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1006 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_412 + mem[_412 + 224]])) + 1
                    mem[_1006] = _998
                    require _990 + _998 + 32 <= return_data.size
                    s = 0
                    while s < _998:
                        mem[_1006 + s + 32] = mem[_412 + _990 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_998) > _998:
                        mem[_1006 + _998 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if _706 == 1:
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if _706 == 2:
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if _706 == 3:
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                revert with 'NH{q', 50
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])) - 1:
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if _706 == 4:
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])) - 1:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if _706 == 5:
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])) - 1:
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _706 != 6:
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > -mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]
                                    else:
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > (-1 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])) - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    s = 0
    idx = (2 * ceil32(return_data.size)) + 1248
    while (2 * ceil32(return_data.size)) + 2400 > idx:
        stor203[arg1][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 36
    while 36 > idx:
        stor203[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
