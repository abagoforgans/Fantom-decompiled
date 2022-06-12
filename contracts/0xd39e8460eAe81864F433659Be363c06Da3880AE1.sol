contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
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
    if arg2 >= sub_0152600c[address(arg1)]:
        revert with 'NH{q', 50
    return sub_0152600c[address(arg1)][arg2]
}

function sub_152a9f06(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_152a9f06[arg1]
}

function sub_3309ba44(?) {
    return sub_3309ba44
}

function sub_44754090(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_44754090[arg1]
}

function sub_690aba52(?) {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function sub_77e840ed(?) {
    require calldata.size - 4 >= 32
    return sub_77e840ed[arg1]
}

function sub_797c82a7(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_797c82a7[arg1]
}

function sub_844109e4(?) {
    require calldata.size - 4 >= 64
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

function sub_aaccf275(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    stor1.length = arg1
}

function sub_c1376628(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    sub_e108d5db = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    owner = arg1
}

function sub_8506b20f(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e4d07d70Address)
    staticcall sub_e4d07d70Address.0x9a6b2087 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
    if not sub_0152600c[msg.sender][1][arg1]:
        revert with 0, 'Factions: summoner not owned'
    require ext_code.size(sub_e4d07d70Address)
    staticcall sub_e4d07d70Address.0x9a6b2087 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
        mem[32] = sha3(msg.sender, 15) + 1
        if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
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
        _20 = mem[_19]
        require mem[_19] == mem[_19 + 31 len 1]
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
        sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(uint8(_20) - 1)]
        call msg.sender with:
           value sub_152a9f06[uint8(uint8(_20) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(_20) - 1)] wei
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
    if not sub_0152600c[msg.sender][1][arg1]:
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
    if ext_call.return_data[31 len 1] < 1:
        revert with 'NH{q', 17
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    if not sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
        revert with 'NH{q', 17
    sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]--
    if sub_0152600c[msg.sender][1][arg1]:
        if sub_0152600c[msg.sender][1][arg1] < 1:
            revert with 'NH{q', 17
        if sub_0152600c[msg.sender] < 1:
            revert with 'NH{q', 17
        if sub_0152600c[msg.sender] - 1 != sub_0152600c[msg.sender][1][arg1] - 1:
            if sub_0152600c[msg.sender] - 1 >= sub_0152600c[msg.sender]:
                revert with 'NH{q', 50
            if sub_0152600c[msg.sender][1][arg1] - 1 >= sub_0152600c[msg.sender]:
                revert with 'NH{q', 50
            sub_0152600c[msg.sender][sub_0152600c[msg.sender][1][arg1]] = sub_0152600c[msg.sender][sub_0152600c[msg.sender]]
            sub_0152600c[msg.sender][1][sub_0152600c[msg.sender][sub_0152600c[msg.sender]]] = sub_0152600c[msg.sender][1][arg1]
        if not sub_0152600c[msg.sender]:
            revert with 'NH{q', 49
        sub_0152600c[msg.sender][sub_0152600c[msg.sender]] = 0
        sub_0152600c[msg.sender]--
        sub_0152600c[msg.sender][1][arg1] = 0
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
        if not sub_0152600c[msg.sender][1][arg1]:
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
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
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
        _133 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _136 = mem[_133 + 32]
        require mem[_133 + 32] <= test266151307()
        require _133 + mem[_133 + 32] + 31 < _133 + return_data.size
        _137 = mem[_133 + mem[_133 + 32]]
        if mem[_133 + mem[_133 + 32]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_133 + mem[_133 + 32]])) + 1 < 0 or _133 + ceil32(return_data.size) + ceil32(ceil32(mem[_133 + mem[_133 + 32]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _133 + ceil32(return_data.size) + ceil32(ceil32(mem[_133 + mem[_133 + 32]])) + 1
        mem[_133 + ceil32(return_data.size)] = _137
        require _136 + _137 + 32 <= return_data.size
        t = 0
        while t < _137:
            mem[t + _133 + ceil32(return_data.size) + 32] = mem[t + _133 + _136 + 32]
            t = t + 32
            continue 
        if ceil32(_137) <= _137:
            _198 = mem[_133 + 96]
            require mem[_133 + 128] == bool(mem[_133 + 128])
            require mem[_133 + 160] == bool(mem[_133 + 160])
            _205 = mem[_133 + 192]
            require mem[_133 + 192] <= test266151307()
            require _133 + mem[_133 + 192] + 31 < _133 + return_data.size
            _207 = mem[_133 + mem[_133 + 192]]
            if mem[_133 + mem[_133 + 192]] > test266151307():
                revert with 'NH{q', 65
            _209 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 192]])) + 1
            mem[_209] = _207
            require _205 + _207 + 32 <= return_data.size
            t = 0
            while t < _207:
                mem[t + _209 + 32] = mem[t + _133 + _205 + 32]
                t = t + 32
                continue 
            if ceil32(_207) <= _207:
                _255 = mem[_133 + 224]
                require mem[_133 + 224] <= test266151307()
                require _133 + mem[_133 + 224] + 31 < _133 + return_data.size
                _259 = mem[_133 + mem[_133 + 224]]
                if mem[_133 + mem[_133 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _263 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1
                mem[_263] = _259
                require _255 + _259 + 32 <= return_data.size
                t = 0
                while t < _259:
                    mem[t + _263 + 32] = mem[t + _133 + _255 + 32]
                    t = t + 32
                    continue 
                if ceil32(_259) > _259:
                    mem[_263 + _259 + 32] = 0
            else:
                mem[_209 + _207 + 32] = 0
                _257 = mem[_133 + 224]
                require mem[_133 + 224] <= test266151307()
                require _133 + mem[_133 + 224] + 31 < _133 + return_data.size
                _261 = mem[_133 + mem[_133 + 224]]
                if mem[_133 + mem[_133 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _265 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1
                mem[_265] = _261
                require _257 + _261 + 32 <= return_data.size
                t = 0
                while t < _261:
                    mem[t + _265 + 32] = mem[t + _133 + _257 + 32]
                    t = t + 32
                    continue 
                if ceil32(_261) > _261:
                    mem[_265 + _261 + 32] = 0
            if 0 == _198:
                if idx >= 36:
                    revert with 'NH{q', 50
                if s > !mem[(32 * idx) + 96]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[(32 * idx) + 96]
                continue 
            if _198 < 1:
                revert with 'NH{q', 17
            if _198 - 1 >= 36:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 96] > !mem[(32 * _198 - 1) + 96]:
                revert with 'NH{q', 17
            if s > !(mem[(32 * idx) + 96] + mem[(32 * _198 - 1) + 96]):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 96] + mem[(32 * _198 - 1) + 96]
            continue 
        mem[_133 + ceil32(return_data.size) + _137 + 32] = 0
        _201 = mem[_133 + 96]
        require mem[_133 + 128] == bool(mem[_133 + 128])
        require mem[_133 + 160] == bool(mem[_133 + 160])
        _206 = mem[_133 + 192]
        require mem[_133 + 192] <= test266151307()
        require _133 + mem[_133 + 192] + 31 < _133 + return_data.size
        _208 = mem[_133 + mem[_133 + 192]]
        if mem[_133 + mem[_133 + 192]] > test266151307():
            revert with 'NH{q', 65
        _210 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 192]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 192]])) + 1
        mem[_210] = _208
        require _206 + _208 + 32 <= return_data.size
        t = 0
        while t < _208:
            mem[t + _210 + 32] = mem[t + _133 + _206 + 32]
            t = t + 32
            continue 
        if ceil32(_208) <= _208:
            _256 = mem[_133 + 224]
            require mem[_133 + 224] <= test266151307()
            require _133 + mem[_133 + 224] + 31 < _133 + return_data.size
            _260 = mem[_133 + mem[_133 + 224]]
            if mem[_133 + mem[_133 + 224]] > test266151307():
                revert with 'NH{q', 65
            _264 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1
            mem[_264] = _260
            require _256 + _260 + 32 <= return_data.size
            t = 0
            while t < _260:
                mem[t + _264 + 32] = mem[t + _133 + _256 + 32]
                t = t + 32
                continue 
            if ceil32(_260) > _260:
                mem[_264 + _260 + 32] = 0
        else:
            mem[_210 + _208 + 32] = 0
            _258 = mem[_133 + 224]
            require mem[_133 + 224] <= test266151307()
            require _133 + mem[_133 + 224] + 31 < _133 + return_data.size
            _262 = mem[_133 + mem[_133 + 224]]
            if mem[_133 + mem[_133 + 224]] > test266151307():
                revert with 'NH{q', 65
            _266 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_133 + mem[_133 + 224]])) + 1
            mem[_266] = _262
            require _258 + _262 + 32 <= return_data.size
            t = 0
            while t < _262:
                mem[t + _266 + 32] = mem[t + _133 + _258 + 32]
                t = t + 32
                continue 
            if ceil32(_262) > _262:
                mem[_266 + _262 + 32] = 0
        if 0 == _201:
            if idx >= 36:
                revert with 'NH{q', 50
            if s > !mem[(32 * idx) + 96]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 96]
            continue 
        if _201 < 1:
            revert with 'NH{q', 17
        if _201 - 1 >= 36:
            revert with 'NH{q', 50
        if idx >= 36:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 96] > !mem[(32 * _201 - 1) + 96]:
            revert with 'NH{q', 17
        if s > !(mem[(32 * idx) + 96] + mem[(32 * _201 - 1) + 96]):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + 96] + mem[(32 * _201 - 1) + 96]
        continue 
    return s
}

function sub_c27bfc2d(?) payable {
    mem[64] = 96
    require not msg.value
    if 24 * 3600 > !sub_3309ba44:
        revert with 'NH{q', 17
    if sub_3309ba44 + (24 * 3600) >= block.timestamp:
        revert with 0, 'Factions: too early to clash'
    sub_3309ba44 = block.timestamp
    idx = 0
    s = 0
    while uint8(idx) < 5:
        _196 = mem[64]
        mem[64] = mem[64] + 1152
        mem[_196] = stor22[uint8(idx)]
        t = _196
        u = (36 * uint8(idx)) + 22
        while _196 + 1152 > t + 32:
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
            _327 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _329 = mem[_327 + 32]
            require mem[_327 + 32] <= test266151307()
            require _327 + mem[_327 + 32] + 31 < _327 + return_data.size
            _330 = mem[_327 + mem[_327 + 32]]
            if mem[_327 + mem[_327 + 32]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_327 + mem[_327 + 32]])) + 1 < 0 or _327 + ceil32(return_data.size) + ceil32(ceil32(mem[_327 + mem[_327 + 32]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _327 + ceil32(return_data.size) + ceil32(ceil32(mem[_327 + mem[_327 + 32]])) + 1
            mem[_327 + ceil32(return_data.size)] = _330
            require _329 + _330 + 32 <= return_data.size
            idx = 0
            while idx < _330:
                mem[idx + _327 + ceil32(return_data.size) + 32] = mem[idx + _327 + _329 + 32]
                idx = idx + 32
                continue 
            if ceil32(_330) <= _330:
                _391 = mem[_327 + 96]
                require mem[_327 + 128] == bool(mem[_327 + 128])
                require mem[_327 + 160] == bool(mem[_327 + 160])
                _398 = mem[_327 + 192]
                require mem[_327 + 192] <= test266151307()
                require _327 + mem[_327 + 192] + 31 < _327 + return_data.size
                _400 = mem[_327 + mem[_327 + 192]]
                if mem[_327 + mem[_327 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _402 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 192]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 192]])) + 1
                mem[_402] = _400
                require _398 + _400 + 32 <= return_data.size
                idx = 0
                while idx < _400:
                    mem[idx + _402 + 32] = mem[idx + _327 + _398 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_400) <= _400:
                    _448 = mem[_327 + 224]
                    require mem[_327 + 224] <= test266151307()
                    require _327 + mem[_327 + 224] + 31 < _327 + return_data.size
                    _452 = mem[_327 + mem[_327 + 224]]
                    if mem[_327 + mem[_327 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _456 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1
                    mem[_456] = _452
                    require _448 + _452 + 32 <= return_data.size
                    idx = 0
                    while idx < _452:
                        mem[idx + _456 + 32] = mem[idx + _327 + _448 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_452) > _452:
                        mem[_456 + _452 + 32] = 0
                else:
                    mem[_402 + _400 + 32] = 0
                    _450 = mem[_327 + 224]
                    require mem[_327 + 224] <= test266151307()
                    require _327 + mem[_327 + 224] + 31 < _327 + return_data.size
                    _454 = mem[_327 + mem[_327 + 224]]
                    if mem[_327 + mem[_327 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _458 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1
                    mem[_458] = _454
                    require _450 + _454 + 32 <= return_data.size
                    idx = 0
                    while idx < _454:
                        mem[idx + _458 + 32] = mem[idx + _327 + _450 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_454) > _454:
                        mem[_458 + _454 + 32] = 0
                if 0 == _391:
                    if t >= 36:
                        revert with 'NH{q', 50
                    if u > !mem[(32 * t) + _196]:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + mem[(32 * t) + _196]
                    continue 
                if _391 < 1:
                    revert with 'NH{q', 17
                if _391 - 1 >= 36:
                    revert with 'NH{q', 50
                if t >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * t) + _196] > !mem[(32 * _391 - 1) + _196]:
                    revert with 'NH{q', 17
                if u > !(mem[(32 * t) + _196] + mem[(32 * _391 - 1) + _196]):
                    revert with 'NH{q', 17
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + mem[(32 * t) + _196] + mem[(32 * _391 - 1) + _196]
                continue 
            mem[_327 + ceil32(return_data.size) + _330 + 32] = 0
            _394 = mem[_327 + 96]
            require mem[_327 + 128] == bool(mem[_327 + 128])
            require mem[_327 + 160] == bool(mem[_327 + 160])
            _399 = mem[_327 + 192]
            require mem[_327 + 192] <= test266151307()
            require _327 + mem[_327 + 192] + 31 < _327 + return_data.size
            _401 = mem[_327 + mem[_327 + 192]]
            if mem[_327 + mem[_327 + 192]] > test266151307():
                revert with 'NH{q', 65
            _403 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 192]])) + 1
            mem[_403] = _401
            require _399 + _401 + 32 <= return_data.size
            idx = 0
            while idx < _401:
                mem[idx + _403 + 32] = mem[idx + _327 + _399 + 32]
                idx = idx + 32
                continue 
            if ceil32(_401) <= _401:
                _449 = mem[_327 + 224]
                require mem[_327 + 224] <= test266151307()
                require _327 + mem[_327 + 224] + 31 < _327 + return_data.size
                _453 = mem[_327 + mem[_327 + 224]]
                if mem[_327 + mem[_327 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _457 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1
                mem[_457] = _453
                require _449 + _453 + 32 <= return_data.size
                idx = 0
                while idx < _453:
                    mem[idx + _457 + 32] = mem[idx + _327 + _449 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_453) > _453:
                    mem[_457 + _453 + 32] = 0
            else:
                mem[_403 + _401 + 32] = 0
                _451 = mem[_327 + 224]
                require mem[_327 + 224] <= test266151307()
                require _327 + mem[_327 + 224] + 31 < _327 + return_data.size
                _455 = mem[_327 + mem[_327 + 224]]
                if mem[_327 + mem[_327 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _459 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_327 + mem[_327 + 224]])) + 1
                mem[_459] = _455
                require _451 + _455 + 32 <= return_data.size
                idx = 0
                while idx < _455:
                    mem[idx + _459 + 32] = mem[idx + _327 + _451 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_455) > _455:
                    mem[_459 + _455 + 32] = 0
            if 0 == _394:
                if t >= 36:
                    revert with 'NH{q', 50
                if u > !mem[(32 * t) + _196]:
                    revert with 'NH{q', 17
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + mem[(32 * t) + _196]
                continue 
            if _394 < 1:
                revert with 'NH{q', 17
            if _394 - 1 >= 36:
                revert with 'NH{q', 50
            if t >= 36:
                revert with 'NH{q', 50
            if mem[(32 * t) + _196] > !mem[(32 * _394 - 1) + _196]:
                revert with 'NH{q', 17
            if u > !(mem[(32 * t) + _196] + mem[(32 * _394 - 1) + _196]):
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            u = u + mem[(32 * t) + _196] + mem[(32 * _394 - 1) + _196]
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
        if s > !sub_797c82a7[uint8(idx)]:
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
    if sub_152a9f06.length > !s:
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
        mem[32] = sha3(msg.sender, 15) + 1
        if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Factions: not owned'
        require ext_code.size(sub_e4d07d70Address)
        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _107 = mem[_106]
        require mem[_106] == mem[_106 + 31 len 1]
        if mem[_106 + 31 len 1] < 1:
            revert with 'NH{q', 17
        if uint8(mem[_106 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if not sub_44754090[uint8(mem[_106 + 31 len 1] - 1)]:
            revert with 'NH{q', 17
        sub_44754090[uint8(mem[_106 + 31 len 1] - 1)]--
        if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
            if uint8(mem[_106 + 31 len 1] - 1) >= 5:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_106 + 31 len 1] - 1)]:
                mem[32] = 203
                _113 = mem[64]
                mem[64] = mem[64] + 1152
                mem[_113] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                s = _113
                t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                while _113 + 1152 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                s = 0
                while s < 36:
                    if uint8(uint8(_107) - 1) >= 5:
                        revert with 'NH{q', 50
                    if s >= 36:
                        revert with 'NH{q', 50
                    if stor[s + (36 * uint8(uint8(_107) - 1)) + 22] < mem[(32 * s) + _113]:
                        revert with 'NH{q', 17
                    stor[s + (36 * uint8(uint8(_107) - 1)) + 22] -= mem[(32 * s) + _113]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            else:
                mem[32] = sha3(msg.sender, 15) + 1
                if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 'Factions: summoner not owned'
                require ext_code.size(sub_e4d07d70Address)
                staticcall sub_e4d07d70Address.0x9a6b2087 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_129] == mem[_129 + 31 len 1]
                if mem[_129 + 31 len 1] < 1:
                    revert with 'NH{q', 17
                if uint8(mem[_129 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                if sub_152a9f06[uint8(mem[_129 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 'NH{q', 17
                if not sub_44754090[uint8(mem[_129 + 31 len 1] - 1)]:
                    revert with 'NH{q', 18
                if uint8(mem[_129 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                if sub_797c82a7[uint8(mem[_129 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_129 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_129 + 31 len 1] - 1)]:
                    revert with 'NH{q', 17
                sub_797c82a7[uint8(mem[_129 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_129 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_129 + 31 len 1] - 1)]
                if uint8(mem[_129 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_129 + 31 len 1] - 1)]
                call msg.sender with:
                   value sub_152a9f06[uint8(mem[_129 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_129 + 31 len 1] - 1)] wei
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
                    if uint8(uint8(_107) - 1) >= 5:
                        revert with 'NH{q', 50
                    if s >= 36:
                        revert with 'NH{q', 50
                    if stor[s + (36 * uint8(uint8(_107) - 1)) + 22] < mem[(32 * s) + _163]:
                        revert with 'NH{q', 17
                    stor[s + (36 * uint8(uint8(_107) - 1)) + 22] -= mem[(32 * s) + _163]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
        else:
            if sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] < 1:
                revert with 'NH{q', 17
            if sub_0152600c[msg.sender] < 1:
                revert with 'NH{q', 17
            if sub_0152600c[msg.sender] - 1 == sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] - 1:
                if not sub_0152600c[msg.sender]:
                    revert with 'NH{q', 49
                sub_0152600c[msg.sender][sub_0152600c[msg.sender]] = 0
                sub_0152600c[msg.sender]--
                sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                if uint8(mem[_106 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_106 + 31 len 1] - 1)]:
                    mem[32] = 203
                    _131 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_131] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _131
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                    while _131 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(_107) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(_107) - 1)) + 22] < mem[(32 * s) + _131]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(_107) - 1)) + 22] -= mem[(32 * s) + _131]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                else:
                    mem[32] = sha3(msg.sender, 15) + 1
                    if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
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
                        if uint8(uint8(_107) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(_107) - 1)) + 22] < mem[(32 * s) + _168]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(_107) - 1)) + 22] -= mem[(32 * s) + _168]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
            else:
                if sub_0152600c[msg.sender] - 1 >= sub_0152600c[msg.sender]:
                    revert with 'NH{q', 50
                if sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] - 1 >= sub_0152600c[msg.sender]:
                    revert with 'NH{q', 50
                sub_0152600c[msg.sender][sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]] = sub_0152600c[msg.sender][sub_0152600c[msg.sender]]
                sub_0152600c[msg.sender][1][sub_0152600c[msg.sender][sub_0152600c[msg.sender]]] = sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]
                if not sub_0152600c[msg.sender]:
                    revert with 'NH{q', 49
                sub_0152600c[msg.sender][sub_0152600c[msg.sender]] = 0
                sub_0152600c[msg.sender]--
                sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                if uint8(mem[_106 + 31 len 1] - 1) >= 5:
                    revert with 'NH{q', 50
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_106 + 31 len 1] - 1)]:
                    mem[32] = 203
                    _137 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_137] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _137
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                    while _137 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(_107) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(_107) - 1)) + 22] < mem[(32 * s) + _137]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(_107) - 1)) + 22] -= mem[(32 * s) + _137]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                else:
                    mem[32] = sha3(msg.sender, 15) + 1
                    if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Factions: summoner not owned'
                    require ext_code.size(sub_e4d07d70Address)
                    staticcall sub_e4d07d70Address.0x9a6b2087 with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _154 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_154] == mem[_154 + 31 len 1]
                    if mem[_154 + 31 len 1] < 1:
                        revert with 'NH{q', 17
                    if uint8(mem[_154 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_152a9f06[uint8(mem[_154 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 'NH{q', 17
                    if not sub_44754090[uint8(mem[_154 + 31 len 1] - 1)]:
                        revert with 'NH{q', 18
                    if uint8(mem[_154 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_797c82a7[uint8(mem[_154 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_154 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_154 + 31 len 1] - 1)]:
                        revert with 'NH{q', 17
                    sub_797c82a7[uint8(mem[_154 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_154 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_154 + 31 len 1] - 1)]
                    if uint8(mem[_154 + 31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_154 + 31 len 1] - 1)]
                    call msg.sender with:
                       value sub_152a9f06[uint8(mem[_154 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_154 + 31 len 1] - 1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 203
                    _172 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_172] = stor203[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _172
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
                    while _172 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(_107) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(_107) - 1)) + 22] < mem[(32 * s) + _172]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(_107) - 1)) + 22] -= mem[(32 * s) + _172]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_84979437(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e4d07d70Address)
    staticcall sub_e4d07d70Address.0x9a6b2087 with:
            gas gas_remaining wei
           args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] < 1:
        revert with 'NH{q', 17
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
    require return_data.size >= 1152
    s = ceil32(return_data.size) + 96
    t = (2 * ceil32(return_data.size)) + 96
    idx = 0
    while idx < 36:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
        revert with 'NH{q', 50
    mem[(2 * ceil32(return_data.size)) + 1248] = stor22[uint8(uint8(ext_call.return_data[0]) - 1)]
    idx = (2 * ceil32(return_data.size)) + 1248
    s = (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22
    while (2 * ceil32(return_data.size)) + 2400 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 2404] = arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 2400] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if 1 > !idx:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx + 1
        require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
        staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                gas gas_remaining wei
               args (idx + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _220 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _224 = mem[_220 + 32]
        require mem[_220 + 32] <= test266151307()
        require _220 + mem[_220 + 32] + 31 < _220 + return_data.size
        _226 = mem[_220 + mem[_220 + 32]]
        if mem[_220 + mem[_220 + 32]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_220 + mem[_220 + 32]])) + 1 < 0 or _220 + ceil32(return_data.size) + ceil32(ceil32(mem[_220 + mem[_220 + 32]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _220 + ceil32(return_data.size) + ceil32(ceil32(mem[_220 + mem[_220 + 32]])) + 1
        mem[_220 + ceil32(return_data.size)] = _226
        require _224 + _226 + 32 <= return_data.size
        s = 0
        while s < _226:
            mem[s + _220 + ceil32(return_data.size) + 32] = mem[s + _220 + _224 + 32]
            s = s + 32
            continue 
        if ceil32(_226) <= _226:
            _372 = mem[_220 + 64]
            require mem[_220 + 128] == bool(mem[_220 + 128])
            require mem[_220 + 160] == bool(mem[_220 + 160])
            _384 = mem[_220 + 192]
            require mem[_220 + 192] <= test266151307()
            require _220 + mem[_220 + 192] + 31 < _220 + return_data.size
            _387 = mem[_220 + mem[_220 + 192]]
            if mem[_220 + mem[_220 + 192]] > test266151307():
                revert with 'NH{q', 65
            _389 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 192]])) + 1
            mem[_389] = _387
            require _384 + _387 + 32 <= return_data.size
            s = 0
            while s < _387:
                mem[s + _389 + 32] = mem[s + _220 + _384 + 32]
                s = s + 32
                continue 
            if ceil32(_387) <= _387:
                _519 = mem[_220 + 224]
                require mem[_220 + 224] <= test266151307()
                require _220 + mem[_220 + 224] + 31 < _220 + return_data.size
                _527 = mem[_220 + mem[_220 + 224]]
                if mem[_220 + mem[_220 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _533 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1
                mem[_533] = _527
                require _519 + _527 + 32 <= return_data.size
                s = 0
                while s < _527:
                    mem[s + _533 + 32] = mem[s + _220 + _519 + 32]
                    s = s + 32
                    continue 
                if ceil32(_527) > _527:
                    mem[_533 + _527 + 32] = 0
            else:
                mem[_389 + _387 + 32] = 0
                _524 = mem[_220 + 224]
                require mem[_220 + 224] <= test266151307()
                require _220 + mem[_220 + 224] + 31 < _220 + return_data.size
                _530 = mem[_220 + mem[_220 + 224]]
                if mem[_220 + mem[_220 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _536 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1
                mem[_536] = _530
                require _524 + _530 + 32 <= return_data.size
                s = 0
                while s < _530:
                    mem[s + _536 + 32] = mem[s + _220 + _524 + 32]
                    s = s + 32
                    continue 
                if ceil32(_530) > _530:
                    mem[_536 + _530 + 32] = 0
            if 1 == _372:
                if idx >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if idx >= 36:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
            else:
                if 2 == _372:
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                else:
                    if 3 == _372:
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                    else:
                        if 4 == _372:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                        else:
                            if 5 == _372:
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                            else:
                                if 6 == _372:
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
        else:
            mem[_220 + ceil32(return_data.size) + _226 + 32] = 0
            _376 = mem[_220 + 64]
            require mem[_220 + 128] == bool(mem[_220 + 128])
            require mem[_220 + 160] == bool(mem[_220 + 160])
            _386 = mem[_220 + 192]
            require mem[_220 + 192] <= test266151307()
            require _220 + mem[_220 + 192] + 31 < _220 + return_data.size
            _388 = mem[_220 + mem[_220 + 192]]
            if mem[_220 + mem[_220 + 192]] > test266151307():
                revert with 'NH{q', 65
            _391 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 192]])) + 1
            mem[_391] = _388
            require _386 + _388 + 32 <= return_data.size
            s = 0
            while s < _388:
                mem[s + _391 + 32] = mem[s + _220 + _386 + 32]
                s = s + 32
                continue 
            if ceil32(_388) <= _388:
                _520 = mem[_220 + 224]
                require mem[_220 + 224] <= test266151307()
                require _220 + mem[_220 + 224] + 31 < _220 + return_data.size
                _528 = mem[_220 + mem[_220 + 224]]
                if mem[_220 + mem[_220 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _534 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1
                mem[_534] = _528
                require _520 + _528 + 32 <= return_data.size
                s = 0
                while s < _528:
                    mem[s + _534 + 32] = mem[s + _220 + _520 + 32]
                    s = s + 32
                    continue 
                if ceil32(_528) > _528:
                    mem[_534 + _528 + 32] = 0
            else:
                mem[_391 + _388 + 32] = 0
                _525 = mem[_220 + 224]
                require mem[_220 + 224] <= test266151307()
                require _220 + mem[_220 + 224] + 31 < _220 + return_data.size
                _531 = mem[_220 + mem[_220 + 224]]
                if mem[_220 + mem[_220 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _537 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_220 + mem[_220 + 224]])) + 1
                mem[_537] = _531
                require _525 + _531 + 32 <= return_data.size
                s = 0
                while s < _531:
                    mem[s + _537 + 32] = mem[s + _220 + _525 + 32]
                    s = s + 32
                    continue 
                if ceil32(_531) > _531:
                    mem[_537 + _531 + 32] = 0
            if 1 == _376:
                if idx >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if idx >= 36:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
            else:
                if 2 == _376:
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                else:
                    if 3 == _376:
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                    else:
                        if 4 == _376:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                        else:
                            if 5 == _376:
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                            else:
                                if 6 == _376:
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
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
        _371 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _379 = mem[_371 + 32]
        require mem[_371 + 32] <= test266151307()
        require _371 + mem[_371 + 32] + 31 < _371 + return_data.size
        _382 = mem[_371 + mem[_371 + 32]]
        if mem[_371 + mem[_371 + 32]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_371 + mem[_371 + 32]])) + 1 < 0 or _371 + ceil32(return_data.size) + ceil32(ceil32(mem[_371 + mem[_371 + 32]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _371 + ceil32(return_data.size) + ceil32(ceil32(mem[_371 + mem[_371 + 32]])) + 1
        mem[_371 + ceil32(return_data.size)] = _382
        require _379 + _382 + 32 <= return_data.size
        t = 0
        while t < _382:
            mem[t + _371 + ceil32(return_data.size) + 32] = mem[t + _371 + _379 + 32]
            t = t + 32
            continue 
        if ceil32(_382) <= _382:
            _518 = mem[_371 + 96]
            require mem[_371 + 128] == bool(mem[_371 + 128])
            require mem[_371 + 160] == bool(mem[_371 + 160])
            _535 = mem[_371 + 192]
            require mem[_371 + 192] <= test266151307()
            require _371 + mem[_371 + 192] + 31 < _371 + return_data.size
            _539 = mem[_371 + mem[_371 + 192]]
            if mem[_371 + mem[_371 + 192]] > test266151307():
                revert with 'NH{q', 65
            _543 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 192]])) + 1
            mem[_543] = _539
            require _535 + _539 + 32 <= return_data.size
            t = 0
            while t < _539:
                mem[t + _543 + 32] = mem[t + _371 + _535 + 32]
                t = t + 32
                continue 
            if ceil32(_539) <= _539:
                _643 = mem[_371 + 224]
                require mem[_371 + 224] <= test266151307()
                require _371 + mem[_371 + 224] + 31 < _371 + return_data.size
                _647 = mem[_371 + mem[_371 + 224]]
                if mem[_371 + mem[_371 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _663 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1
                mem[_663] = _647
                require _643 + _647 + 32 <= return_data.size
                t = 0
                while t < _647:
                    mem[t + _663 + 32] = mem[t + _371 + _643 + 32]
                    t = t + 32
                    continue 
                if ceil32(_647) > _647:
                    mem[_663 + _647 + 32] = 0
            else:
                mem[_543 + _539 + 32] = 0
                _645 = mem[_371 + 224]
                require mem[_371 + 224] <= test266151307()
                require _371 + mem[_371 + 224] + 31 < _371 + return_data.size
                _653 = mem[_371 + mem[_371 + 224]]
                if mem[_371 + mem[_371 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _673 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1
                mem[_673] = _653
                require _645 + _653 + 32 <= return_data.size
                t = 0
                while t < _653:
                    mem[t + _673 + 32] = mem[t + _371 + _645 + 32]
                    t = t + 32
                    continue 
                if ceil32(_653) > _653:
                    mem[_673 + _653 + 32] = 0
            if 0 == _518:
                if idx >= 36:
                    revert with 'NH{q', 50
                if s > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]
                continue 
            if _518 < 1:
                revert with 'NH{q', 17
            if _518 - 1 >= 36:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !mem[(32 * _518 - 1) + (2 * ceil32(return_data.size)) + 1248]:
                revert with 'NH{q', 17
            if s > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + mem[(32 * _518 - 1) + (2 * ceil32(return_data.size)) + 1248]):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + mem[(32 * _518 - 1) + (2 * ceil32(return_data.size)) + 1248]
            continue 
        mem[_371 + ceil32(return_data.size) + _382 + 32] = 0
        _523 = mem[_371 + 96]
        require mem[_371 + 128] == bool(mem[_371 + 128])
        require mem[_371 + 160] == bool(mem[_371 + 160])
        _538 = mem[_371 + 192]
        require mem[_371 + 192] <= test266151307()
        require _371 + mem[_371 + 192] + 31 < _371 + return_data.size
        _540 = mem[_371 + mem[_371 + 192]]
        if mem[_371 + mem[_371 + 192]] > test266151307():
            revert with 'NH{q', 65
        _546 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 192]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 192]])) + 1
        mem[_546] = _540
        require _538 + _540 + 32 <= return_data.size
        t = 0
        while t < _540:
            mem[t + _546 + 32] = mem[t + _371 + _538 + 32]
            t = t + 32
            continue 
        if ceil32(_540) <= _540:
            _644 = mem[_371 + 224]
            require mem[_371 + 224] <= test266151307()
            require _371 + mem[_371 + 224] + 31 < _371 + return_data.size
            _648 = mem[_371 + mem[_371 + 224]]
            if mem[_371 + mem[_371 + 224]] > test266151307():
                revert with 'NH{q', 65
            _664 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1
            mem[_664] = _648
            require _644 + _648 + 32 <= return_data.size
            t = 0
            while t < _648:
                mem[t + _664 + 32] = mem[t + _371 + _644 + 32]
                t = t + 32
                continue 
            if ceil32(_648) > _648:
                mem[_664 + _648 + 32] = 0
        else:
            mem[_546 + _540 + 32] = 0
            _646 = mem[_371 + 224]
            require mem[_371 + 224] <= test266151307()
            require _371 + mem[_371 + 224] + 31 < _371 + return_data.size
            _654 = mem[_371 + mem[_371 + 224]]
            if mem[_371 + mem[_371 + 224]] > test266151307():
                revert with 'NH{q', 65
            _674 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_371 + mem[_371 + 224]])) + 1
            mem[_674] = _654
            require _646 + _654 + 32 <= return_data.size
            t = 0
            while t < _654:
                mem[t + _674 + 32] = mem[t + _371 + _646 + 32]
                t = t + 32
                continue 
            if ceil32(_654) > _654:
                mem[_674 + _654 + 32] = 0
        if 0 == _523:
            if idx >= 36:
                revert with 'NH{q', 50
            if s > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]
            continue 
        if _523 < 1:
            revert with 'NH{q', 17
        if _523 - 1 >= 36:
            revert with 'NH{q', 50
        if idx >= 36:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !mem[(32 * _523 - 1) + (2 * ceil32(return_data.size)) + 1248]:
            revert with 'NH{q', 17
        if s > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + mem[(32 * _523 - 1) + (2 * ceil32(return_data.size)) + 1248]):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + mem[(32 * _523 - 1) + (2 * ceil32(return_data.size)) + 1248]
        continue 
    return s
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
        _643 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _644 = mem[_643]
        require mem[_643] == mem[_643 + 31 len 1]
        if mem[_643 + 32] <= 0:
            revert with 0, 'Factions: not enrolled'
        if msg.value < stor1.length:
            revert with 0, 'Factions: did not pay tribute'
        if mem[_643 + 31 len 1] < 1:
            revert with 'NH{q', 17
        if uint8(mem[_643 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if sub_44754090[uint8(mem[_643 + 31 len 1] - 1)] == -1:
            revert with 'NH{q', 17
        sub_44754090[uint8(mem[_643 + 31 len 1] - 1)]++
        if uint8(mem[_643 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        if sub_797c82a7[uint8(mem[_643 + 31 len 1] - 1)] > !stor1.length:
            revert with 'NH{q', 17
        sub_797c82a7[uint8(mem[_643 + 31 len 1] - 1)] += stor1.length
        if uint8(mem[_643 + 31 len 1] - 1) >= 5:
            revert with 'NH{q', 50
        sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_643 + 31 len 1] - 1)]
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = sha3(msg.sender, 15) + 1
        if sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
            require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
            staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _659 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _659 + 31 < _659 + return_data.size
            _661 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require return_data.size >= 1152
            t = _659
            u = _661
            s = 0
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _667 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_667 len 1152] = call.data[calldata.size len 1152]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _673 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _675 = mem[_673]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _681 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _683 = mem[_681]
            require mem[_681] == mem[_681 + 28 len 4]
            _685 = mem[_681 + 32]
            require mem[_681 + 32] == mem[_681 + 60 len 4]
            _687 = mem[_681 + 64]
            require mem[_681 + 64] == mem[_681 + 92 len 4]
            _689 = mem[_681 + 96]
            require mem[_681 + 96] == mem[_681 + 124 len 4]
            _691 = mem[_681 + 128]
            require mem[_681 + 128] == mem[_681 + 156 len 4]
            _693 = mem[_681 + 160]
            require mem[_681 + 160] == mem[_681 + 188 len 4]
            s = 0
            while s < 36:
                if 1 > !s:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s + 1
                require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
                staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                        gas gas_remaining wei
                       args (s + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _991 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 256
                _994 = mem[_991 + 32]
                require mem[_991 + 32] <= test266151307()
                require _991 + mem[_991 + 32] + 31 < _991 + return_data.size
                _1000 = mem[_991 + mem[_991 + 32]]
                if mem[_991 + mem[_991 + 32]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_991 + mem[_991 + 32]])) + 1 < 0 or _991 + ceil32(return_data.size) + ceil32(ceil32(mem[_991 + mem[_991 + 32]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _991 + ceil32(return_data.size) + ceil32(ceil32(mem[_991 + mem[_991 + 32]])) + 1
                mem[_991 + ceil32(return_data.size)] = _1000
                require _994 + _1000 + 32 <= return_data.size
                idx = 0
                while idx < _1000:
                    mem[idx + _991 + ceil32(return_data.size) + 32] = mem[idx + _991 + _994 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1000) <= _1000:
                    _1283 = mem[_991 + 64]
                    require mem[_991 + 128] == bool(mem[_991 + 128])
                    require mem[_991 + 160] == bool(mem[_991 + 160])
                    _1303 = mem[_991 + 192]
                    require mem[_991 + 192] <= test266151307()
                    require _991 + mem[_991 + 192] + 31 < _991 + return_data.size
                    _1307 = mem[_991 + mem[_991 + 192]]
                    if mem[_991 + mem[_991 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1311 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 192]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 192]])) + 1
                    mem[_1311] = _1307
                    require _1303 + _1307 + 32 <= return_data.size
                    idx = 0
                    while idx < _1307:
                        mem[idx + _1311 + 32] = mem[idx + _991 + _1303 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1307) <= _1307:
                        _1564 = mem[_991 + 224]
                        require mem[_991 + 224] <= test266151307()
                        require _991 + mem[_991 + 224] + 31 < _991 + return_data.size
                        _1575 = mem[_991 + mem[_991 + 224]]
                        if mem[_991 + mem[_991 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1583 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1
                        mem[_1583] = _1575
                        require _1564 + _1575 + 32 <= return_data.size
                        idx = 0
                        while idx < _1575:
                            mem[idx + _1583 + 32] = mem[idx + _991 + _1564 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1575) > _1575:
                            mem[_1583 + _1575 + 32] = 0
                    else:
                        mem[_1311 + _1307 + 32] = 0
                        _1569 = mem[_991 + 224]
                        require mem[_991 + 224] <= test266151307()
                        require _991 + mem[_991 + 224] + 31 < _991 + return_data.size
                        _1579 = mem[_991 + mem[_991 + 224]]
                        if mem[_991 + mem[_991 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1587 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1
                        mem[_1587] = _1579
                        require _1569 + _1579 + 32 <= return_data.size
                        idx = 0
                        while idx < _1579:
                            mem[idx + _1587 + 32] = mem[idx + _991 + _1569 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1579) > _1579:
                            mem[_1587 + _1579 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if 1 == _1283:
                        if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_683) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_683)
                    else:
                        if 2 == _1283:
                            if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_685) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_685)
                        else:
                            if 3 == _1283:
                                if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_687) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_687)
                            else:
                                if 4 == _1283:
                                    if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_689) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_689)
                                else:
                                    if 5 == _1283:
                                        if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_691) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_691)
                                    else:
                                        if _1283 != 6:
                                        else:
                                            if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_693) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_693)
                else:
                    mem[_991 + ceil32(return_data.size) + _1000 + 32] = 0
                    _1288 = mem[_991 + 64]
                    require mem[_991 + 128] == bool(mem[_991 + 128])
                    require mem[_991 + 160] == bool(mem[_991 + 160])
                    _1305 = mem[_991 + 192]
                    require mem[_991 + 192] <= test266151307()
                    require _991 + mem[_991 + 192] + 31 < _991 + return_data.size
                    _1309 = mem[_991 + mem[_991 + 192]]
                    if mem[_991 + mem[_991 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1313 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 192]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 192]])) + 1
                    mem[_1313] = _1309
                    require _1305 + _1309 + 32 <= return_data.size
                    idx = 0
                    while idx < _1309:
                        mem[idx + _1313 + 32] = mem[idx + _991 + _1305 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1309) <= _1309:
                        _1565 = mem[_991 + 224]
                        require mem[_991 + 224] <= test266151307()
                        require _991 + mem[_991 + 224] + 31 < _991 + return_data.size
                        _1576 = mem[_991 + mem[_991 + 224]]
                        if mem[_991 + mem[_991 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1584 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1
                        mem[_1584] = _1576
                        require _1565 + _1576 + 32 <= return_data.size
                        idx = 0
                        while idx < _1576:
                            mem[idx + _1584 + 32] = mem[idx + _991 + _1565 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1576) > _1576:
                            mem[_1584 + _1576 + 32] = 0
                    else:
                        mem[_1313 + _1309 + 32] = 0
                        _1570 = mem[_991 + 224]
                        require mem[_991 + 224] <= test266151307()
                        require _991 + mem[_991 + 224] + 31 < _991 + return_data.size
                        _1580 = mem[_991 + mem[_991 + 224]]
                        if mem[_991 + mem[_991 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1588 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_991 + mem[_991 + 224]])) + 1
                        mem[_1588] = _1580
                        require _1570 + _1580 + 32 <= return_data.size
                        idx = 0
                        while idx < _1580:
                            mem[idx + _1588 + 32] = mem[idx + _991 + _1570 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1580) > _1580:
                            mem[_1588 + _1580 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if 1 == _1288:
                        if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_683) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_683)
                    else:
                        if 2 == _1288:
                            if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_685) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_685)
                        else:
                            if 3 == _1288:
                                if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_687) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_687)
                            else:
                                if 4 == _1288:
                                    if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_689) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_689)
                                else:
                                    if 5 == _1288:
                                        if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_691) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_691)
                                    else:
                                        if _1288 != 6:
                                        else:
                                            if mem[(32 * s) + _661 + 31 len 1] and _675 > -1 / mem[(32 * s) + _661 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _661 + 31 len 1] * _675 and uint32(_693) > -1 / mem[(32 * s) + _661 + 31 len 1] * _675:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _667] = mem[(32 * s) + _661 + 31 len 1] * _675 * uint32(_693)
                if uint8(uint8(_644) - 1) >= 5:
                    revert with 'NH{q', 50
                if s >= 36:
                    revert with 'NH{q', 50
                if stor[s + (36 * uint8(uint8(_644) - 1)) + 22] > !mem[(32 * s) + _667]:
                    revert with 'NH{q', 17
                stor[s + (36 * uint8(uint8(_644) - 1)) + 22] += mem[(32 * s) + _667]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 203
            t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
            s = _667
            while _667 + 1152 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
        else:
            sub_0152600c[msg.sender]++
            sub_0152600c[msg.sender][sub_0152600c[msg.sender]] = cd[((32 * idx) + cd[4] + 36)]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(msg.sender, 15) + 1
            sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] = sub_0152600c[msg.sender]
            require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
            staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _660 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _660 + 31 < _660 + return_data.size
            _662 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require return_data.size >= 1152
            t = _660
            u = _662
            s = 0
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            _668 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_668 len 1152] = call.data[calldata.size len 1152]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _674 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _676 = mem[_674]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _682 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _684 = mem[_682]
            require mem[_682] == mem[_682 + 28 len 4]
            _686 = mem[_682 + 32]
            require mem[_682 + 32] == mem[_682 + 60 len 4]
            _688 = mem[_682 + 64]
            require mem[_682 + 64] == mem[_682 + 92 len 4]
            _690 = mem[_682 + 96]
            require mem[_682 + 96] == mem[_682 + 124 len 4]
            _692 = mem[_682 + 128]
            require mem[_682 + 128] == mem[_682 + 156 len 4]
            _694 = mem[_682 + 160]
            require mem[_682 + 160] == mem[_682 + 188 len 4]
            s = 0
            while s < 36:
                if 1 > !s:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s + 1
                require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
                staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                        gas gas_remaining wei
                       args (s + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _992 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 256
                _996 = mem[_992 + 32]
                require mem[_992 + 32] <= test266151307()
                require _992 + mem[_992 + 32] + 31 < _992 + return_data.size
                _1002 = mem[_992 + mem[_992 + 32]]
                if mem[_992 + mem[_992 + 32]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_992 + mem[_992 + 32]])) + 1 < 0 or _992 + ceil32(return_data.size) + ceil32(ceil32(mem[_992 + mem[_992 + 32]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _992 + ceil32(return_data.size) + ceil32(ceil32(mem[_992 + mem[_992 + 32]])) + 1
                mem[_992 + ceil32(return_data.size)] = _1002
                require _996 + _1002 + 32 <= return_data.size
                idx = 0
                while idx < _1002:
                    mem[idx + _992 + ceil32(return_data.size) + 32] = mem[idx + _992 + _996 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1002) <= _1002:
                    _1285 = mem[_992 + 64]
                    require mem[_992 + 128] == bool(mem[_992 + 128])
                    require mem[_992 + 160] == bool(mem[_992 + 160])
                    _1304 = mem[_992 + 192]
                    require mem[_992 + 192] <= test266151307()
                    require _992 + mem[_992 + 192] + 31 < _992 + return_data.size
                    _1308 = mem[_992 + mem[_992 + 192]]
                    if mem[_992 + mem[_992 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1312 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 192]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 192]])) + 1
                    mem[_1312] = _1308
                    require _1304 + _1308 + 32 <= return_data.size
                    idx = 0
                    while idx < _1308:
                        mem[idx + _1312 + 32] = mem[idx + _992 + _1304 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1308) <= _1308:
                        _1567 = mem[_992 + 224]
                        require mem[_992 + 224] <= test266151307()
                        require _992 + mem[_992 + 224] + 31 < _992 + return_data.size
                        _1577 = mem[_992 + mem[_992 + 224]]
                        if mem[_992 + mem[_992 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1585 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1
                        mem[_1585] = _1577
                        require _1567 + _1577 + 32 <= return_data.size
                        idx = 0
                        while idx < _1577:
                            mem[idx + _1585 + 32] = mem[idx + _992 + _1567 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1577) > _1577:
                            mem[_1585 + _1577 + 32] = 0
                    else:
                        mem[_1312 + _1308 + 32] = 0
                        _1571 = mem[_992 + 224]
                        require mem[_992 + 224] <= test266151307()
                        require _992 + mem[_992 + 224] + 31 < _992 + return_data.size
                        _1581 = mem[_992 + mem[_992 + 224]]
                        if mem[_992 + mem[_992 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1589 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1
                        mem[_1589] = _1581
                        require _1571 + _1581 + 32 <= return_data.size
                        idx = 0
                        while idx < _1581:
                            mem[idx + _1589 + 32] = mem[idx + _992 + _1571 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1581) > _1581:
                            mem[_1589 + _1581 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if 1 == _1285:
                        if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_684) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_684)
                    else:
                        if 2 == _1285:
                            if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_686) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_686)
                        else:
                            if 3 == _1285:
                                if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_688) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_688)
                            else:
                                if 4 == _1285:
                                    if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_690) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_690)
                                else:
                                    if 5 == _1285:
                                        if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_692) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_692)
                                    else:
                                        if _1285 != 6:
                                        else:
                                            if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_694) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_694)
                else:
                    mem[_992 + ceil32(return_data.size) + _1002 + 32] = 0
                    _1291 = mem[_992 + 64]
                    require mem[_992 + 128] == bool(mem[_992 + 128])
                    require mem[_992 + 160] == bool(mem[_992 + 160])
                    _1306 = mem[_992 + 192]
                    require mem[_992 + 192] <= test266151307()
                    require _992 + mem[_992 + 192] + 31 < _992 + return_data.size
                    _1310 = mem[_992 + mem[_992 + 192]]
                    if mem[_992 + mem[_992 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1314 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 192]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 192]])) + 1
                    mem[_1314] = _1310
                    require _1306 + _1310 + 32 <= return_data.size
                    idx = 0
                    while idx < _1310:
                        mem[idx + _1314 + 32] = mem[idx + _992 + _1306 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1310) <= _1310:
                        _1568 = mem[_992 + 224]
                        require mem[_992 + 224] <= test266151307()
                        require _992 + mem[_992 + 224] + 31 < _992 + return_data.size
                        _1578 = mem[_992 + mem[_992 + 224]]
                        if mem[_992 + mem[_992 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1586 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1
                        mem[_1586] = _1578
                        require _1568 + _1578 + 32 <= return_data.size
                        idx = 0
                        while idx < _1578:
                            mem[idx + _1586 + 32] = mem[idx + _992 + _1568 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1578) > _1578:
                            mem[_1586 + _1578 + 32] = 0
                    else:
                        mem[_1314 + _1310 + 32] = 0
                        _1572 = mem[_992 + 224]
                        require mem[_992 + 224] <= test266151307()
                        require _992 + mem[_992 + 224] + 31 < _992 + return_data.size
                        _1582 = mem[_992 + mem[_992 + 224]]
                        if mem[_992 + mem[_992 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1590 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_992 + mem[_992 + 224]])) + 1
                        mem[_1590] = _1582
                        require _1572 + _1582 + 32 <= return_data.size
                        idx = 0
                        while idx < _1582:
                            mem[idx + _1590 + 32] = mem[idx + _992 + _1572 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1582) > _1582:
                            mem[_1590 + _1582 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if 1 == _1291:
                        if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_684) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_684)
                    else:
                        if 2 == _1291:
                            if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_686) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_686)
                        else:
                            if 3 == _1291:
                                if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_688) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_688)
                            else:
                                if 4 == _1291:
                                    if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_690) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_690)
                                else:
                                    if 5 == _1291:
                                        if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_692) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_692)
                                    else:
                                        if _1291 != 6:
                                        else:
                                            if mem[(32 * s) + _662 + 31 len 1] and _676 > -1 / mem[(32 * s) + _662 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _662 + 31 len 1] * _676 and uint32(_694) > -1 / mem[(32 * s) + _662 + 31 len 1] * _676:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _668] = mem[(32 * s) + _662 + 31 len 1] * _676 * uint32(_694)
                if uint8(uint8(_644) - 1) >= 5:
                    revert with 'NH{q', 50
                if s >= 36:
                    revert with 'NH{q', 50
                if stor[s + (36 * uint8(uint8(_644) - 1)) + 22] > !mem[(32 * s) + _668]:
                    revert with 'NH{q', 17
                stor[s + (36 * uint8(uint8(_644) - 1)) + 22] += mem[(32 * s) + _668]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 203
            t = sha3(cd[((32 * idx) + cd[4] + 36)], 203)
            s = _668
            while _668 + 1152 > s:
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
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
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
    require ext_code.size(sub_e4d07d70Address)
    staticcall sub_e4d07d70Address.0x9a6b2087 with:
            gas gas_remaining wei
           args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
    if sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] > !stor1.length:
        revert with 'NH{q', 17
    sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] += stor1.length
    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
        revert with 'NH{q', 50
    sub_77e840ed[arg1] = sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]
    mem[0] = arg1
    mem[32] = sha3(msg.sender, 15) + 1
    if sub_0152600c[msg.sender][1][arg1]:
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
        require return_data.size >= 1152
        s = ceil32(return_data.size) + 96
        t = (2 * ceil32(return_data.size)) + 96
        idx = 0
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
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
            if 1 > !idx:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx + 1
            require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
            staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _351 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _354 = mem[_351 + 32]
            require mem[_351 + 32] <= test266151307()
            require _351 + mem[_351 + 32] + 31 < _351 + return_data.size
            _360 = mem[_351 + mem[_351 + 32]]
            if mem[_351 + mem[_351 + 32]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_351 + mem[_351 + 32]])) + 1 < 0 or _351 + ceil32(return_data.size) + ceil32(ceil32(mem[_351 + mem[_351 + 32]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _351 + ceil32(return_data.size) + ceil32(ceil32(mem[_351 + mem[_351 + 32]])) + 1
            mem[_351 + ceil32(return_data.size)] = _360
            require _354 + _360 + 32 <= return_data.size
            s = 0
            while s < _360:
                mem[s + _351 + ceil32(return_data.size) + 32] = mem[s + _351 + _354 + 32]
                s = s + 32
                continue 
            if ceil32(_360) <= _360:
                _643 = mem[_351 + 64]
                require mem[_351 + 128] == bool(mem[_351 + 128])
                require mem[_351 + 160] == bool(mem[_351 + 160])
                _663 = mem[_351 + 192]
                require mem[_351 + 192] <= test266151307()
                require _351 + mem[_351 + 192] + 31 < _351 + return_data.size
                _667 = mem[_351 + mem[_351 + 192]]
                if mem[_351 + mem[_351 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _671 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 192]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 192]])) + 1
                mem[_671] = _667
                require _663 + _667 + 32 <= return_data.size
                s = 0
                while s < _667:
                    mem[s + _671 + 32] = mem[s + _351 + _663 + 32]
                    s = s + 32
                    continue 
                if ceil32(_667) <= _667:
                    _924 = mem[_351 + 224]
                    require mem[_351 + 224] <= test266151307()
                    require _351 + mem[_351 + 224] + 31 < _351 + return_data.size
                    _935 = mem[_351 + mem[_351 + 224]]
                    if mem[_351 + mem[_351 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _943 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1
                    mem[_943] = _935
                    require _924 + _935 + 32 <= return_data.size
                    s = 0
                    while s < _935:
                        mem[s + _943 + 32] = mem[s + _351 + _924 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_935) > _935:
                        mem[_943 + _935 + 32] = 0
                else:
                    mem[_671 + _667 + 32] = 0
                    _929 = mem[_351 + 224]
                    require mem[_351 + 224] <= test266151307()
                    require _351 + mem[_351 + 224] + 31 < _351 + return_data.size
                    _939 = mem[_351 + mem[_351 + 224]]
                    if mem[_351 + mem[_351 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _947 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1
                    mem[_947] = _939
                    require _929 + _939 + 32 <= return_data.size
                    s = 0
                    while s < _939:
                        mem[s + _947 + 32] = mem[s + _351 + _929 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_939) > _939:
                        mem[_947 + _939 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if 1 == _643:
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
                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if 2 == _643:
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
                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if 3 == _643:
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
                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if 4 == _643:
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
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if 5 == _643:
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
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _643 != 6:
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]:
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
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            else:
                mem[_351 + ceil32(return_data.size) + _360 + 32] = 0
                _648 = mem[_351 + 64]
                require mem[_351 + 128] == bool(mem[_351 + 128])
                require mem[_351 + 160] == bool(mem[_351 + 160])
                _665 = mem[_351 + 192]
                require mem[_351 + 192] <= test266151307()
                require _351 + mem[_351 + 192] + 31 < _351 + return_data.size
                _669 = mem[_351 + mem[_351 + 192]]
                if mem[_351 + mem[_351 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _673 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 192]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 192]])) + 1
                mem[_673] = _669
                require _665 + _669 + 32 <= return_data.size
                s = 0
                while s < _669:
                    mem[s + _673 + 32] = mem[s + _351 + _665 + 32]
                    s = s + 32
                    continue 
                if ceil32(_669) <= _669:
                    _925 = mem[_351 + 224]
                    require mem[_351 + 224] <= test266151307()
                    require _351 + mem[_351 + 224] + 31 < _351 + return_data.size
                    _936 = mem[_351 + mem[_351 + 224]]
                    if mem[_351 + mem[_351 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _944 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1
                    mem[_944] = _936
                    require _925 + _936 + 32 <= return_data.size
                    s = 0
                    while s < _936:
                        mem[s + _944 + 32] = mem[s + _351 + _925 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_936) > _936:
                        mem[_944 + _936 + 32] = 0
                else:
                    mem[_673 + _669 + 32] = 0
                    _930 = mem[_351 + 224]
                    require mem[_351 + 224] <= test266151307()
                    require _351 + mem[_351 + 224] + 31 < _351 + return_data.size
                    _940 = mem[_351 + mem[_351 + 224]]
                    if mem[_351 + mem[_351 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _948 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_351 + mem[_351 + 224]])) + 1
                    mem[_948] = _940
                    require _930 + _940 + 32 <= return_data.size
                    s = 0
                    while s < _940:
                        mem[s + _948 + 32] = mem[s + _351 + _930 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_940) > _940:
                        mem[_948 + _940 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if 1 == _648:
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
                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if 2 == _648:
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
                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if 3 == _648:
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
                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if 4 == _648:
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
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if 5 == _648:
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
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _648 != 6:
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]:
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
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        sub_0152600c[msg.sender]++
        sub_0152600c[msg.sender][sub_0152600c[msg.sender]] = arg1
        mem[0] = arg1
        mem[32] = sha3(msg.sender, 15) + 1
        sub_0152600c[msg.sender][1][arg1] = sub_0152600c[msg.sender]
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
        require return_data.size >= 1152
        s = ceil32(return_data.size) + 96
        t = (2 * ceil32(return_data.size)) + 96
        idx = 0
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
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
            if 1 > !idx:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx + 1
            require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
            staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _352 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _356 = mem[_352 + 32]
            require mem[_352 + 32] <= test266151307()
            require _352 + mem[_352 + 32] + 31 < _352 + return_data.size
            _362 = mem[_352 + mem[_352 + 32]]
            if mem[_352 + mem[_352 + 32]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_352 + mem[_352 + 32]])) + 1 < 0 or _352 + ceil32(return_data.size) + ceil32(ceil32(mem[_352 + mem[_352 + 32]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _352 + ceil32(return_data.size) + ceil32(ceil32(mem[_352 + mem[_352 + 32]])) + 1
            mem[_352 + ceil32(return_data.size)] = _362
            require _356 + _362 + 32 <= return_data.size
            s = 0
            while s < _362:
                mem[s + _352 + ceil32(return_data.size) + 32] = mem[s + _352 + _356 + 32]
                s = s + 32
                continue 
            if ceil32(_362) <= _362:
                _645 = mem[_352 + 64]
                require mem[_352 + 128] == bool(mem[_352 + 128])
                require mem[_352 + 160] == bool(mem[_352 + 160])
                _664 = mem[_352 + 192]
                require mem[_352 + 192] <= test266151307()
                require _352 + mem[_352 + 192] + 31 < _352 + return_data.size
                _668 = mem[_352 + mem[_352 + 192]]
                if mem[_352 + mem[_352 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _672 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 192]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 192]])) + 1
                mem[_672] = _668
                require _664 + _668 + 32 <= return_data.size
                s = 0
                while s < _668:
                    mem[s + _672 + 32] = mem[s + _352 + _664 + 32]
                    s = s + 32
                    continue 
                if ceil32(_668) <= _668:
                    _927 = mem[_352 + 224]
                    require mem[_352 + 224] <= test266151307()
                    require _352 + mem[_352 + 224] + 31 < _352 + return_data.size
                    _937 = mem[_352 + mem[_352 + 224]]
                    if mem[_352 + mem[_352 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _945 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1
                    mem[_945] = _937
                    require _927 + _937 + 32 <= return_data.size
                    s = 0
                    while s < _937:
                        mem[s + _945 + 32] = mem[s + _352 + _927 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_937) > _937:
                        mem[_945 + _937 + 32] = 0
                else:
                    mem[_672 + _668 + 32] = 0
                    _931 = mem[_352 + 224]
                    require mem[_352 + 224] <= test266151307()
                    require _352 + mem[_352 + 224] + 31 < _352 + return_data.size
                    _941 = mem[_352 + mem[_352 + 224]]
                    if mem[_352 + mem[_352 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _949 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1
                    mem[_949] = _941
                    require _931 + _941 + 32 <= return_data.size
                    s = 0
                    while s < _941:
                        mem[s + _949 + 32] = mem[s + _352 + _931 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_941) > _941:
                        mem[_949 + _941 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if 1 == _645:
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
                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if 2 == _645:
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
                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if 3 == _645:
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
                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if 4 == _645:
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
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if 5 == _645:
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
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _645 != 6:
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]:
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
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            else:
                mem[_352 + ceil32(return_data.size) + _362 + 32] = 0
                _651 = mem[_352 + 64]
                require mem[_352 + 128] == bool(mem[_352 + 128])
                require mem[_352 + 160] == bool(mem[_352 + 160])
                _666 = mem[_352 + 192]
                require mem[_352 + 192] <= test266151307()
                require _352 + mem[_352 + 192] + 31 < _352 + return_data.size
                _670 = mem[_352 + mem[_352 + 192]]
                if mem[_352 + mem[_352 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _674 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 192]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 192]])) + 1
                mem[_674] = _670
                require _666 + _670 + 32 <= return_data.size
                s = 0
                while s < _670:
                    mem[s + _674 + 32] = mem[s + _352 + _666 + 32]
                    s = s + 32
                    continue 
                if ceil32(_670) <= _670:
                    _928 = mem[_352 + 224]
                    require mem[_352 + 224] <= test266151307()
                    require _352 + mem[_352 + 224] + 31 < _352 + return_data.size
                    _938 = mem[_352 + mem[_352 + 224]]
                    if mem[_352 + mem[_352 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _946 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1
                    mem[_946] = _938
                    require _928 + _938 + 32 <= return_data.size
                    s = 0
                    while s < _938:
                        mem[s + _946 + 32] = mem[s + _352 + _928 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_938) > _938:
                        mem[_946 + _938 + 32] = 0
                else:
                    mem[_674 + _670 + 32] = 0
                    _932 = mem[_352 + 224]
                    require mem[_352 + 224] <= test266151307()
                    require _352 + mem[_352 + 224] + 31 < _352 + return_data.size
                    _942 = mem[_352 + mem[_352 + 224]]
                    if mem[_352 + mem[_352 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _950 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_352 + mem[_352 + 224]])) + 1
                    mem[_950] = _942
                    require _932 + _942 + 32 <= return_data.size
                    s = 0
                    while s < _942:
                        mem[s + _950 + 32] = mem[s + _352 + _932 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_942) > _942:
                        mem[_950 + _942 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if 1 == _651:
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
                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if 2 == _651:
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
                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if 3 == _651:
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
                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if 4 == _651:
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
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if 5 == _651:
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
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _651 != 6:
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]:
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
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
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
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
