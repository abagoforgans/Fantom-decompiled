contract main {




// =====================  Runtime code  =====================


#
#  - sub_665393dd(?)
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
uint256 sub_bcf70bb4;
uint8 lastWinner;
array of struct stor204;

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

function sub_8b747176(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if 1 > uint8(arg1):
        revert with 0, 'HillBF: index'
    if uint8(arg1) > 5:
        revert with 0, 'HillBF: index'
    if uint8(arg1) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(arg1) - 1) >= 5:
        revert with 'NH{q', 50
    return sub_797c82a7[uint8(uint8(arg1) - 1)]
}

function owner() {
    return owner
}

function sub_bcf70bb4(?) {
    return sub_bcf70bb4
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

function lastWinner() {
    return lastWinner
}

function sub_fe986f38(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if 1 > uint8(arg1):
        revert with 0, 'HillBF: index'
    if uint8(arg1) > 5:
        revert with 0, 'HillBF: index'
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
        revert with 0, 'HillBF: not owned'
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
            revert with 0, 'HillBF: not owned'
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
        revert with 0, 'HillBF: not owned'
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
        mem[ceil32(return_data.size) + 96] = stor204[arg1].field_0
        idx = ceil32(return_data.size) + 96
        s = 0
        while ceil32(return_data.size) + 1248 > idx + 32:
            mem[idx + 32] = stor204[arg1][s].field_256
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
            revert with 0, 'HillBF: not owned'
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
        mem[(2 * ceil32(return_data.size)) + 96] = stor204[arg1].field_0
        idx = (2 * ceil32(return_data.size)) + 96
        s = 0
        while (2 * ceil32(return_data.size)) + 1248 > idx + 32:
            mem[idx + 32] = stor204[arg1][s].field_256
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
    if 1 > uint8(arg1):
        revert with 0, 'HillBF: index'
    if uint8(arg1) > 5:
        revert with 0, 'HillBF: index'
    if uint8(arg1) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(arg1) - 1) >= 5:
        revert with 'NH{q', 50
    mem[64] = 1248
    mem[96] = stor22[uint8(uint8(arg1) - 1)]
    idx = 96
    s = (36 * uint8(uint8(arg1) - 1)) + 22
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
        _137 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _140 = mem[_137 + 32]
        require mem[_137 + 32] <= test266151307()
        require _137 + mem[_137 + 32] + 31 < _137 + return_data.size
        _141 = mem[_137 + mem[_137 + 32]]
        if mem[_137 + mem[_137 + 32]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_137 + mem[_137 + 32]])) + 1 < 0 or _137 + ceil32(return_data.size) + ceil32(ceil32(mem[_137 + mem[_137 + 32]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _137 + ceil32(return_data.size) + ceil32(ceil32(mem[_137 + mem[_137 + 32]])) + 1
        mem[_137 + ceil32(return_data.size)] = _141
        require _140 + _141 + 32 <= return_data.size
        t = 0
        while t < _141:
            mem[t + _137 + ceil32(return_data.size) + 32] = mem[t + _137 + _140 + 32]
            t = t + 32
            continue 
        if ceil32(_141) <= _141:
            _202 = mem[_137 + 96]
            require mem[_137 + 128] == bool(mem[_137 + 128])
            require mem[_137 + 160] == bool(mem[_137 + 160])
            _209 = mem[_137 + 192]
            require mem[_137 + 192] <= test266151307()
            require _137 + mem[_137 + 192] + 31 < _137 + return_data.size
            _211 = mem[_137 + mem[_137 + 192]]
            if mem[_137 + mem[_137 + 192]] > test266151307():
                revert with 'NH{q', 65
            _213 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 192]])) + 1
            mem[_213] = _211
            require _209 + _211 + 32 <= return_data.size
            t = 0
            while t < _211:
                mem[t + _213 + 32] = mem[t + _137 + _209 + 32]
                t = t + 32
                continue 
            if ceil32(_211) <= _211:
                _259 = mem[_137 + 224]
                require mem[_137 + 224] <= test266151307()
                require _137 + mem[_137 + 224] + 31 < _137 + return_data.size
                _263 = mem[_137 + mem[_137 + 224]]
                if mem[_137 + mem[_137 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _267 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1
                mem[_267] = _263
                require _259 + _263 + 32 <= return_data.size
                t = 0
                while t < _263:
                    mem[t + _267 + 32] = mem[t + _137 + _259 + 32]
                    t = t + 32
                    continue 
                if ceil32(_263) > _263:
                    mem[_267 + _263 + 32] = 0
            else:
                mem[_213 + _211 + 32] = 0
                _261 = mem[_137 + 224]
                require mem[_137 + 224] <= test266151307()
                require _137 + mem[_137 + 224] + 31 < _137 + return_data.size
                _265 = mem[_137 + mem[_137 + 224]]
                if mem[_137 + mem[_137 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _269 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1
                mem[_269] = _265
                require _261 + _265 + 32 <= return_data.size
                t = 0
                while t < _265:
                    mem[t + _269 + 32] = mem[t + _137 + _261 + 32]
                    t = t + 32
                    continue 
                if ceil32(_265) > _265:
                    mem[_269 + _265 + 32] = 0
            if 0 == _202:
                if idx >= 36:
                    revert with 'NH{q', 50
                if s > !mem[(32 * idx) + 96]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[(32 * idx) + 96]
                continue 
            if _202 < 1:
                revert with 'NH{q', 17
            if _202 - 1 >= 36:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 96] > !mem[(32 * _202 - 1) + 96]:
                revert with 'NH{q', 17
            if s > !(mem[(32 * idx) + 96] + mem[(32 * _202 - 1) + 96]):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 96] + mem[(32 * _202 - 1) + 96]
            continue 
        mem[_137 + ceil32(return_data.size) + _141 + 32] = 0
        _205 = mem[_137 + 96]
        require mem[_137 + 128] == bool(mem[_137 + 128])
        require mem[_137 + 160] == bool(mem[_137 + 160])
        _210 = mem[_137 + 192]
        require mem[_137 + 192] <= test266151307()
        require _137 + mem[_137 + 192] + 31 < _137 + return_data.size
        _212 = mem[_137 + mem[_137 + 192]]
        if mem[_137 + mem[_137 + 192]] > test266151307():
            revert with 'NH{q', 65
        _214 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 192]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 192]])) + 1
        mem[_214] = _212
        require _210 + _212 + 32 <= return_data.size
        t = 0
        while t < _212:
            mem[t + _214 + 32] = mem[t + _137 + _210 + 32]
            t = t + 32
            continue 
        if ceil32(_212) <= _212:
            _260 = mem[_137 + 224]
            require mem[_137 + 224] <= test266151307()
            require _137 + mem[_137 + 224] + 31 < _137 + return_data.size
            _264 = mem[_137 + mem[_137 + 224]]
            if mem[_137 + mem[_137 + 224]] > test266151307():
                revert with 'NH{q', 65
            _268 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1
            mem[_268] = _264
            require _260 + _264 + 32 <= return_data.size
            t = 0
            while t < _264:
                mem[t + _268 + 32] = mem[t + _137 + _260 + 32]
                t = t + 32
                continue 
            if ceil32(_264) > _264:
                mem[_268 + _264 + 32] = 0
        else:
            mem[_214 + _212 + 32] = 0
            _262 = mem[_137 + 224]
            require mem[_137 + 224] <= test266151307()
            require _137 + mem[_137 + 224] + 31 < _137 + return_data.size
            _266 = mem[_137 + mem[_137 + 224]]
            if mem[_137 + mem[_137 + 224]] > test266151307():
                revert with 'NH{q', 65
            _270 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_137 + mem[_137 + 224]])) + 1
            mem[_270] = _266
            require _262 + _266 + 32 <= return_data.size
            t = 0
            while t < _266:
                mem[t + _270 + 32] = mem[t + _137 + _262 + 32]
                t = t + 32
                continue 
            if ceil32(_266) > _266:
                mem[_270 + _266 + 32] = 0
        if 0 == _205:
            if idx >= 36:
                revert with 'NH{q', 50
            if s > !mem[(32 * idx) + 96]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 96]
            continue 
        if _205 < 1:
            revert with 'NH{q', 17
        if _205 - 1 >= 36:
            revert with 'NH{q', 50
        if idx >= 36:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 96] > !mem[(32 * _205 - 1) + 96]:
            revert with 'NH{q', 17
        if s > !(mem[(32 * idx) + 96] + mem[(32 * _205 - 1) + 96]):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + 96] + mem[(32 * _205 - 1) + 96]
        continue 
    return s
}

function sub_c27bfc2d(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_bcf70bb4 >= block.timestamp:
        revert with 0, 'HillBF: too early'
    if block.timestamp > !sub_e108d5db:
        revert with 'NH{q', 17
    sub_bcf70bb4 = block.timestamp + sub_e108d5db
    idx = 0
    s = 0
    t = 0
    while uint8(idx) < 5:
        _196 = mem[64]
        mem[64] = mem[64] + 1152
        mem[_196] = stor22[uint8(idx)]
        u = _196
        v = (36 * uint8(idx)) + 22
        while _196 + 1152 > u + 32:
            mem[u + 32] = stor1[v]
            u = u + 32
            v = v + 1
            continue 
        u = 0
        v = 0
        while u < 36:
            mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = u
            require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
            staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                    gas gas_remaining wei
                   args u
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
                    if u >= 36:
                        revert with 'NH{q', 50
                    if v > !mem[(32 * u) + _196]:
                        revert with 'NH{q', 17
                    if u == -1:
                        revert with 'NH{q', 17
                    u = u + 1
                    v = v + mem[(32 * u) + _196]
                    continue 
                if _391 < 1:
                    revert with 'NH{q', 17
                if _391 - 1 >= 36:
                    revert with 'NH{q', 50
                if u >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * u) + _196] > !mem[(32 * _391 - 1) + _196]:
                    revert with 'NH{q', 17
                if v > !(mem[(32 * u) + _196] + mem[(32 * _391 - 1) + _196]):
                    revert with 'NH{q', 17
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                v = v + mem[(32 * u) + _196] + mem[(32 * _391 - 1) + _196]
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
                if u >= 36:
                    revert with 'NH{q', 50
                if v > !mem[(32 * u) + _196]:
                    revert with 'NH{q', 17
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                v = v + mem[(32 * u) + _196]
                continue 
            if _394 < 1:
                revert with 'NH{q', 17
            if _394 - 1 >= 36:
                revert with 'NH{q', 50
            if u >= 36:
                revert with 'NH{q', 50
            if mem[(32 * u) + _196] > !mem[(32 * _394 - 1) + _196]:
                revert with 'NH{q', 17
            if v > !(mem[(32 * u) + _196] + mem[(32 * _394 - 1) + _196]):
                revert with 'NH{q', 17
            if u == -1:
                revert with 'NH{q', 17
            u = u + 1
            v = v + mem[(32 * u) + _196] + mem[(32 * _394 - 1) + _196]
            continue 
        if s < v:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = v
            t = 1
            continue 
        if s != v:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = s
            t = t
            continue 
        if not t:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = s
            t = t
            continue 
        lastWinner = 0
    if not t:
        lastWinner = 0
    else:
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
        lastWinner = 1
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
            revert with 0, 'HillBF: not owned'
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
                mem[32] = 204
                _113 = mem[64]
                mem[64] = mem[64] + 1152
                mem[_113] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                s = _113
                t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
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
                    revert with 0, 'HillBF: not owned'
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
                mem[32] = 204
                _163 = mem[64]
                mem[64] = mem[64] + 1152
                mem[_163] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                s = _163
                t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
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
                    mem[32] = 204
                    _131 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_131] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _131
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
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
                        revert with 0, 'HillBF: not owned'
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
                    mem[32] = 204
                    _168 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_168] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _168
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
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
                    mem[32] = 204
                    _137 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_137] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _137
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
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
                        revert with 0, 'HillBF: not owned'
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
                    mem[32] = 204
                    _172 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_172] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _172
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
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
        _316 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _319 = mem[_316 + 32]
        require mem[_316 + 32] <= test266151307()
        require _316 + mem[_316 + 32] + 31 < _316 + return_data.size
        _322 = mem[_316 + mem[_316 + 32]]
        if mem[_316 + mem[_316 + 32]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_316 + mem[_316 + 32]])) + 1 < 0 or _316 + ceil32(return_data.size) + ceil32(ceil32(mem[_316 + mem[_316 + 32]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _316 + ceil32(return_data.size) + ceil32(ceil32(mem[_316 + mem[_316 + 32]])) + 1
        mem[_316 + ceil32(return_data.size)] = _322
        require _319 + _322 + 32 <= return_data.size
        s = 0
        while s < _322:
            mem[s + _316 + ceil32(return_data.size) + 32] = mem[s + _316 + _319 + 32]
            s = s + 32
            continue 
        if ceil32(_322) <= _322:
            _513 = mem[_316 + 64]
            require mem[_316 + 128] == bool(mem[_316 + 128])
            require mem[_316 + 160] == bool(mem[_316 + 160])
            _526 = mem[_316 + 192]
            require mem[_316 + 192] <= test266151307()
            require _316 + mem[_316 + 192] + 31 < _316 + return_data.size
            _529 = mem[_316 + mem[_316 + 192]]
            if mem[_316 + mem[_316 + 192]] > test266151307():
                revert with 'NH{q', 65
            _532 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 192]])) + 1
            mem[_532] = _529
            require _526 + _529 + 32 <= return_data.size
            s = 0
            while s < _529:
                mem[s + _532 + 32] = mem[s + _316 + _526 + 32]
                s = s + 32
                continue 
            if ceil32(_529) <= _529:
                _710 = mem[_316 + 224]
                require mem[_316 + 224] <= test266151307()
                require _316 + mem[_316 + 224] + 31 < _316 + return_data.size
                _718 = mem[_316 + mem[_316 + 224]]
                if mem[_316 + mem[_316 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _724 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1
                mem[_724] = _718
                require _710 + _718 + 32 <= return_data.size
                s = 0
                while s < _718:
                    mem[s + _724 + 32] = mem[s + _316 + _710 + 32]
                    s = s + 32
                    continue 
                if ceil32(_718) > _718:
                    mem[_724 + _718 + 32] = 0
            else:
                mem[_532 + _529 + 32] = 0
                _712 = mem[_316 + 224]
                require mem[_316 + 224] <= test266151307()
                require _316 + mem[_316 + 224] + 31 < _316 + return_data.size
                _721 = mem[_316 + mem[_316 + 224]]
                if mem[_316 + mem[_316 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _728 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1
                mem[_728] = _721
                require _712 + _721 + 32 <= return_data.size
                s = 0
                while s < _721:
                    mem[s + _728 + 32] = mem[s + _316 + _712 + 32]
                    s = s + 32
                    continue 
                if ceil32(_721) > _721:
                    mem[_728 + _721 + 32] = 0
            if 1 == _513:
                if idx >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if idx >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0]))
            else:
                if 2 == _513:
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                        revert with 'NH{q', 17
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32]))
                else:
                    if 3 == _513:
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                            revert with 'NH{q', 17
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64]))
                    else:
                        if 4 == _513:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                revert with 'NH{q', 17
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96]))
                        else:
                            if 5 == _513:
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                    revert with 'NH{q', 17
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128]))
                            else:
                                if 6 == _513:
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                        revert with 'NH{q', 17
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160]))
        else:
            mem[_316 + ceil32(return_data.size) + _322 + 32] = 0
            _518 = mem[_316 + 64]
            require mem[_316 + 128] == bool(mem[_316 + 128])
            require mem[_316 + 160] == bool(mem[_316 + 160])
            _527 = mem[_316 + 192]
            require mem[_316 + 192] <= test266151307()
            require _316 + mem[_316 + 192] + 31 < _316 + return_data.size
            _531 = mem[_316 + mem[_316 + 192]]
            if mem[_316 + mem[_316 + 192]] > test266151307():
                revert with 'NH{q', 65
            _533 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 192]])) + 1
            mem[_533] = _531
            require _527 + _531 + 32 <= return_data.size
            s = 0
            while s < _531:
                mem[s + _533 + 32] = mem[s + _316 + _527 + 32]
                s = s + 32
                continue 
            if ceil32(_531) <= _531:
                _711 = mem[_316 + 224]
                require mem[_316 + 224] <= test266151307()
                require _316 + mem[_316 + 224] + 31 < _316 + return_data.size
                _719 = mem[_316 + mem[_316 + 224]]
                if mem[_316 + mem[_316 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _725 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1
                mem[_725] = _719
                require _711 + _719 + 32 <= return_data.size
                s = 0
                while s < _719:
                    mem[s + _725 + 32] = mem[s + _316 + _711 + 32]
                    s = s + 32
                    continue 
                if ceil32(_719) > _719:
                    mem[_725 + _719 + 32] = 0
            else:
                mem[_533 + _531 + 32] = 0
                _713 = mem[_316 + 224]
                require mem[_316 + 224] <= test266151307()
                require _316 + mem[_316 + 224] + 31 < _316 + return_data.size
                _722 = mem[_316 + mem[_316 + 224]]
                if mem[_316 + mem[_316 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _729 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_316 + mem[_316 + 224]])) + 1
                mem[_729] = _722
                require _713 + _722 + 32 <= return_data.size
                s = 0
                while s < _722:
                    mem[s + _729 + 32] = mem[s + _316 + _713 + 32]
                    s = s + 32
                    continue 
                if ceil32(_722) > _722:
                    mem[_729 + _722 + 32] = 0
            if 1 == _518:
                if idx >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if idx >= 36:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0]))
            else:
                if 2 == _518:
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                        revert with 'NH{q', 17
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32]))
                else:
                    if 3 == _518:
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                            revert with 'NH{q', 17
                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64]))
                    else:
                        if 4 == _518:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                revert with 'NH{q', 17
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96]))
                        else:
                            if 5 == _518:
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                    revert with 'NH{q', 17
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128]))
                            else:
                                if 6 == _518:
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                        revert with 'NH{q', 17
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 127 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
        revert with 'NH{q', 50
    _311 = mem[64]
    mem[64] = mem[64] + 1152
    mem[_311] = stor22[uint8(uint8(ext_call.return_data[0]) - 1)]
    idx = _311
    s = (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22
    while _311 + 1152 > idx + 32:
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
        _709 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _717 = mem[_709 + 32]
        require mem[_709 + 32] <= test266151307()
        require _709 + mem[_709 + 32] + 31 < _709 + return_data.size
        _723 = mem[_709 + mem[_709 + 32]]
        if mem[_709 + mem[_709 + 32]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_709 + mem[_709 + 32]])) + 1 < 0 or _709 + ceil32(return_data.size) + ceil32(ceil32(mem[_709 + mem[_709 + 32]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _709 + ceil32(return_data.size) + ceil32(ceil32(mem[_709 + mem[_709 + 32]])) + 1
        mem[_709 + ceil32(return_data.size)] = _723
        require _717 + _723 + 32 <= return_data.size
        t = 0
        while t < _723:
            mem[t + _709 + ceil32(return_data.size) + 32] = mem[t + _709 + _717 + 32]
            t = t + 32
            continue 
        if ceil32(_723) <= _723:
            _956 = mem[_709 + 96]
            require mem[_709 + 128] == bool(mem[_709 + 128])
            require mem[_709 + 160] == bool(mem[_709 + 160])
            _988 = mem[_709 + 192]
            require mem[_709 + 192] <= test266151307()
            require _709 + mem[_709 + 192] + 31 < _709 + return_data.size
            _1015 = mem[_709 + mem[_709 + 192]]
            if mem[_709 + mem[_709 + 192]] > test266151307():
                revert with 'NH{q', 65
            _1025 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 192]])) + 1
            mem[_1025] = _1015
            require _988 + _1015 + 32 <= return_data.size
            t = 0
            while t < _1015:
                mem[t + _1025 + 32] = mem[t + _709 + _988 + 32]
                t = t + 32
                continue 
            if ceil32(_1015) <= _1015:
                _1175 = mem[_709 + 224]
                require mem[_709 + 224] <= test266151307()
                require _709 + mem[_709 + 224] + 31 < _709 + return_data.size
                _1183 = mem[_709 + mem[_709 + 224]]
                if mem[_709 + mem[_709 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _1189 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1
                mem[_1189] = _1183
                require _1175 + _1183 + 32 <= return_data.size
                t = 0
                while t < _1183:
                    mem[t + _1189 + 32] = mem[t + _709 + _1175 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1183) > _1183:
                    mem[_1189 + _1183 + 32] = 0
            else:
                mem[_1025 + _1015 + 32] = 0
                _1180 = mem[_709 + 224]
                require mem[_709 + 224] <= test266151307()
                require _709 + mem[_709 + 224] + 31 < _709 + return_data.size
                _1186 = mem[_709 + mem[_709 + 224]]
                if mem[_709 + mem[_709 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _1192 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1
                mem[_1192] = _1186
                require _1180 + _1186 + 32 <= return_data.size
                t = 0
                while t < _1186:
                    mem[t + _1192 + 32] = mem[t + _709 + _1180 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1186) > _1186:
                    mem[_1192 + _1186 + 32] = 0
            if 0 == _956:
                if idx >= 36:
                    revert with 'NH{q', 50
                if s > !mem[(32 * idx) + _311]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[(32 * idx) + _311]
                continue 
            if _956 < 1:
                revert with 'NH{q', 17
            if _956 - 1 >= 36:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _311] > !mem[(32 * _956 - 1) + _311]:
                revert with 'NH{q', 17
            if s > !(mem[(32 * idx) + _311] + mem[(32 * _956 - 1) + _311]):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + _311] + mem[(32 * _956 - 1) + _311]
            continue 
        mem[_709 + ceil32(return_data.size) + _723 + 32] = 0
        _959 = mem[_709 + 96]
        require mem[_709 + 128] == bool(mem[_709 + 128])
        require mem[_709 + 160] == bool(mem[_709 + 160])
        _998 = mem[_709 + 192]
        require mem[_709 + 192] <= test266151307()
        require _709 + mem[_709 + 192] + 31 < _709 + return_data.size
        _1020 = mem[_709 + mem[_709 + 192]]
        if mem[_709 + mem[_709 + 192]] > test266151307():
            revert with 'NH{q', 65
        _1035 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 192]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 192]])) + 1
        mem[_1035] = _1020
        require _998 + _1020 + 32 <= return_data.size
        t = 0
        while t < _1020:
            mem[t + _1035 + 32] = mem[t + _709 + _998 + 32]
            t = t + 32
            continue 
        if ceil32(_1020) <= _1020:
            _1176 = mem[_709 + 224]
            require mem[_709 + 224] <= test266151307()
            require _709 + mem[_709 + 224] + 31 < _709 + return_data.size
            _1184 = mem[_709 + mem[_709 + 224]]
            if mem[_709 + mem[_709 + 224]] > test266151307():
                revert with 'NH{q', 65
            _1190 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1
            mem[_1190] = _1184
            require _1176 + _1184 + 32 <= return_data.size
            t = 0
            while t < _1184:
                mem[t + _1190 + 32] = mem[t + _709 + _1176 + 32]
                t = t + 32
                continue 
            if ceil32(_1184) > _1184:
                mem[_1190 + _1184 + 32] = 0
        else:
            mem[_1035 + _1020 + 32] = 0
            _1181 = mem[_709 + 224]
            require mem[_709 + 224] <= test266151307()
            require _709 + mem[_709 + 224] + 31 < _709 + return_data.size
            _1187 = mem[_709 + mem[_709 + 224]]
            if mem[_709 + mem[_709 + 224]] > test266151307():
                revert with 'NH{q', 65
            _1193 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_709 + mem[_709 + 224]])) + 1
            mem[_1193] = _1187
            require _1181 + _1187 + 32 <= return_data.size
            t = 0
            while t < _1187:
                mem[t + _1193 + 32] = mem[t + _709 + _1181 + 32]
                t = t + 32
                continue 
            if ceil32(_1187) > _1187:
                mem[_1193 + _1187 + 32] = 0
        if 0 == _959:
            if idx >= 36:
                revert with 'NH{q', 50
            if s > !mem[(32 * idx) + _311]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + _311]
            continue 
        if _959 < 1:
            revert with 'NH{q', 17
        if _959 - 1 >= 36:
            revert with 'NH{q', 50
        if idx >= 36:
            revert with 'NH{q', 50
        if mem[(32 * idx) + _311] > !mem[(32 * _959 - 1) + _311]:
            revert with 'NH{q', 17
        if s > !(mem[(32 * idx) + _311] + mem[(32 * _959 - 1) + _311]):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + _311] + mem[(32 * _959 - 1) + _311]
        continue 
    idx = 0
    t = 0
    while idx < 36:
        mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
        staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _954 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _961 = mem[_954 + 32]
        require mem[_954 + 32] <= test266151307()
        require _954 + mem[_954 + 32] + 31 < _954 + return_data.size
        _978 = mem[_954 + mem[_954 + 32]]
        if mem[_954 + mem[_954 + 32]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_954 + mem[_954 + 32]])) + 1 < 0 or _954 + ceil32(return_data.size) + ceil32(ceil32(mem[_954 + mem[_954 + 32]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _954 + ceil32(return_data.size) + ceil32(ceil32(mem[_954 + mem[_954 + 32]])) + 1
        mem[_954 + ceil32(return_data.size)] = _978
        require _961 + _978 + 32 <= return_data.size
        s = 0
        while s < _978:
            mem[s + _954 + ceil32(return_data.size) + 32] = mem[s + _954 + _961 + 32]
            s = s + 32
            continue 
        if ceil32(_978) <= _978:
            _1174 = mem[_954 + 96]
            require mem[_954 + 128] == bool(mem[_954 + 128])
            require mem[_954 + 160] == bool(mem[_954 + 160])
            _1191 = mem[_954 + 192]
            require mem[_954 + 192] <= test266151307()
            require _954 + mem[_954 + 192] + 31 < _954 + return_data.size
            _1195 = mem[_954 + mem[_954 + 192]]
            if mem[_954 + mem[_954 + 192]] > test266151307():
                revert with 'NH{q', 65
            _1199 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 192]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 192]])) + 1
            mem[_1199] = _1195
            require _1191 + _1195 + 32 <= return_data.size
            s = 0
            while s < _1195:
                mem[s + _1199 + 32] = mem[s + _954 + _1191 + 32]
                s = s + 32
                continue 
            if ceil32(_1195) <= _1195:
                _1275 = mem[_954 + 224]
                require mem[_954 + 224] <= test266151307()
                require _954 + mem[_954 + 224] + 31 < _954 + return_data.size
                _1279 = mem[_954 + mem[_954 + 224]]
                if mem[_954 + mem[_954 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _1291 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1
                mem[_1291] = _1279
                require _1275 + _1279 + 32 <= return_data.size
                s = 0
                while s < _1279:
                    mem[s + _1291 + 32] = mem[s + _954 + _1275 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1279) > _1279:
                    mem[_1291 + _1279 + 32] = 0
            else:
                mem[_1199 + _1195 + 32] = 0
                _1277 = mem[_954 + 224]
                require mem[_954 + 224] <= test266151307()
                require _954 + mem[_954 + 224] + 31 < _954 + return_data.size
                _1285 = mem[_954 + mem[_954 + 224]]
                if mem[_954 + mem[_954 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _1293 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1
                mem[_1293] = _1285
                require _1277 + _1285 + 32 <= return_data.size
                s = 0
                while s < _1285:
                    mem[s + _1293 + 32] = mem[s + _954 + _1277 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1285) > _1285:
                    mem[_1293 + _1285 + 32] = 0
            if 0 == _1174:
                if idx >= 36:
                    revert with 'NH{q', 50
                if t > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]
                continue 
            if _1174 < 1:
                revert with 'NH{q', 17
            if _1174 - 1 >= 36:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !mem[(32 * _1174 - 1) + (2 * ceil32(return_data.size)) + 1248]:
                revert with 'NH{q', 17
            if t > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + mem[(32 * _1174 - 1) + (2 * ceil32(return_data.size)) + 1248]):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + mem[(32 * _1174 - 1) + (2 * ceil32(return_data.size)) + 1248]
            continue 
        mem[_954 + ceil32(return_data.size) + _978 + 32] = 0
        _1179 = mem[_954 + 96]
        require mem[_954 + 128] == bool(mem[_954 + 128])
        require mem[_954 + 160] == bool(mem[_954 + 160])
        _1194 = mem[_954 + 192]
        require mem[_954 + 192] <= test266151307()
        require _954 + mem[_954 + 192] + 31 < _954 + return_data.size
        _1196 = mem[_954 + mem[_954 + 192]]
        if mem[_954 + mem[_954 + 192]] > test266151307():
            revert with 'NH{q', 65
        _1202 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 192]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 192]])) + 1
        mem[_1202] = _1196
        require _1194 + _1196 + 32 <= return_data.size
        s = 0
        while s < _1196:
            mem[s + _1202 + 32] = mem[s + _954 + _1194 + 32]
            s = s + 32
            continue 
        if ceil32(_1196) <= _1196:
            _1276 = mem[_954 + 224]
            require mem[_954 + 224] <= test266151307()
            require _954 + mem[_954 + 224] + 31 < _954 + return_data.size
            _1280 = mem[_954 + mem[_954 + 224]]
            if mem[_954 + mem[_954 + 224]] > test266151307():
                revert with 'NH{q', 65
            _1292 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1
            mem[_1292] = _1280
            require _1276 + _1280 + 32 <= return_data.size
            s = 0
            while s < _1280:
                mem[s + _1292 + 32] = mem[s + _954 + _1276 + 32]
                s = s + 32
                continue 
            if ceil32(_1280) > _1280:
                mem[_1292 + _1280 + 32] = 0
        else:
            mem[_1202 + _1196 + 32] = 0
            _1278 = mem[_954 + 224]
            require mem[_954 + 224] <= test266151307()
            require _954 + mem[_954 + 224] + 31 < _954 + return_data.size
            _1286 = mem[_954 + mem[_954 + 224]]
            if mem[_954 + mem[_954 + 224]] > test266151307():
                revert with 'NH{q', 65
            _1294 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_954 + mem[_954 + 224]])) + 1
            mem[_1294] = _1286
            require _1278 + _1286 + 32 <= return_data.size
            s = 0
            while s < _1286:
                mem[s + _1294 + 32] = mem[s + _954 + _1278 + 32]
                s = s + 32
                continue 
            if ceil32(_1286) > _1286:
                mem[_1294 + _1286 + 32] = 0
        if 0 == _1179:
            if idx >= 36:
                revert with 'NH{q', 50
            if t > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248]
            continue 
        if _1179 < 1:
            revert with 'NH{q', 17
        if _1179 - 1 >= 36:
            revert with 'NH{q', 50
        if idx >= 36:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] > !mem[(32 * _1179 - 1) + (2 * ceil32(return_data.size)) + 1248]:
            revert with 'NH{q', 17
        if t > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + mem[(32 * _1179 - 1) + (2 * ceil32(return_data.size)) + 1248]):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1248] + mem[(32 * _1179 - 1) + (2 * ceil32(return_data.size)) + 1248]
        continue 
    if t < s:
        revert with 'NH{q', 17
    return (t - s)
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
        revert with 0, 'HillBF: enrolled'
    if msg.value < stor1.length:
        revert with 0, 'HillBF: tribute'
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
        stor204[arg1][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 36
    while 36 > idx:
        stor204[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8506b20f(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc1376628(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe4d07d70(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe4d07d70(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_e4d07d70Address
                    if unknown_0xfc23c5ad(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return sub_0152600c[address(cd[4])]
                    if unknown_0xfe188184(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return lastWinner
                    require unknown_0xfe986f38(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == uint8(cd[4])
                    if 1 > uint8(cd[4]):
                        revert with 0, 'HillBF: index'
                    if uint8(cd[4]) > 5:
                        revert with 0, 'HillBF: index'
                    if uint8(cd[4]) < 1:
                        revert with 'NH{q', 17
                    if uint8(uint8(cd[4]) - 1) >= 5:
                        revert with 'NH{q', 50
                    return sub_44754090[uint8(uint8(cd[4]) - 1)]
                if unknown_0xc1376628(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Factions: owner'
                    sub_e108d5db = cd[4]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc27bfc2d(?????):
                        if unknown_0xc7d12e24(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return stor1.length
                        require unknown_0xe108d5db(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_e108d5db
                    require not msg.value
                    if sub_bcf70bb4 >= block.timestamp:
                        revert with 0, 'HillBF: too early'
                    if block.timestamp > !sub_e108d5db:
                        revert with 'NH{q', 17
                    sub_bcf70bb4 = block.timestamp + sub_e108d5db
                    idx = 0
                    s = 0
                    t = 0
                    while uint8(idx) < 5:
                        _2284 = mem[64]
                        mem[64] = mem[64] + 1152
                        mem[_2284] = stor22[uint8(idx)]
                        u = _2284
                        v = (36 * uint8(idx)) + 22
                        while _2284 + 1152 > u + 32:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                        u = 0
                        v = 0
                        while u < 36:
                            mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = u
                            require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
                            staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args u
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3892 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 256
                            _3906 = mem[_3892 + 32]
                            require mem[_3892 + 32] <= test266151307()
                            require _3892 + mem[_3892 + 32] + 31 < _3892 + return_data.size
                            _3965 = mem[_3892 + mem[_3892 + 32]]
                            if mem[_3892 + mem[_3892 + 32]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(ceil32(mem[_3892 + mem[_3892 + 32]])) + 1 < 0 or _3892 + ceil32(return_data.size) + ceil32(ceil32(mem[_3892 + mem[_3892 + 32]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _3892 + ceil32(return_data.size) + ceil32(ceil32(mem[_3892 + mem[_3892 + 32]])) + 1
                            mem[_3892 + ceil32(return_data.size)] = _3965
                            require _3906 + _3965 + 32 <= return_data.size
                            idx = 0
                            while idx < _3965:
                                mem[idx + _3892 + ceil32(return_data.size) + 32] = mem[idx + _3892 + _3906 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_3965) <= _3965:
                                _4735 = mem[_3892 + 96]
                                require mem[_3892 + 128] == bool(mem[_3892 + 128])
                                require mem[_3892 + 160] == bool(mem[_3892 + 160])
                                _4800 = mem[_3892 + 192]
                                require mem[_3892 + 192] <= test266151307()
                                require _3892 + mem[_3892 + 192] + 31 < _3892 + return_data.size
                                _4829 = mem[_3892 + mem[_3892 + 192]]
                                if mem[_3892 + mem[_3892 + 192]] > test266151307():
                                    revert with 'NH{q', 65
                                _4849 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 192]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 192]])) + 1
                                mem[_4849] = _4829
                                require _4800 + _4829 + 32 <= return_data.size
                                idx = 0
                                while idx < _4829:
                                    mem[idx + _4849 + 32] = mem[idx + _3892 + _4800 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_4829) <= _4829:
                                    _5294 = mem[_3892 + 224]
                                    require mem[_3892 + 224] <= test266151307()
                                    require _3892 + mem[_3892 + 224] + 31 < _3892 + return_data.size
                                    _5316 = mem[_3892 + mem[_3892 + 224]]
                                    if mem[_3892 + mem[_3892 + 224]] > test266151307():
                                        revert with 'NH{q', 65
                                    _5334 = mem[64]
                                    if mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1
                                    mem[_5334] = _5316
                                    require _5294 + _5316 + 32 <= return_data.size
                                    idx = 0
                                    while idx < _5316:
                                        mem[idx + _5334 + 32] = mem[idx + _3892 + _5294 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_5316) > _5316:
                                        mem[_5334 + _5316 + 32] = 0
                                else:
                                    mem[_4849 + _4829 + 32] = 0
                                    _5305 = mem[_3892 + 224]
                                    require mem[_3892 + 224] <= test266151307()
                                    require _3892 + mem[_3892 + 224] + 31 < _3892 + return_data.size
                                    _5325 = mem[_3892 + mem[_3892 + 224]]
                                    if mem[_3892 + mem[_3892 + 224]] > test266151307():
                                        revert with 'NH{q', 65
                                    _5343 = mem[64]
                                    if mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1
                                    mem[_5343] = _5325
                                    require _5305 + _5325 + 32 <= return_data.size
                                    idx = 0
                                    while idx < _5325:
                                        mem[idx + _5343 + 32] = mem[idx + _3892 + _5305 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_5325) > _5325:
                                        mem[_5343 + _5325 + 32] = 0
                                if 0 == _4735:
                                    if u >= 36:
                                        revert with 'NH{q', 50
                                    if v > !mem[(32 * u) + _2284]:
                                        revert with 'NH{q', 17
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    u = u + 1
                                    v = v + mem[(32 * u) + _2284]
                                    continue 
                                if _4735 < 1:
                                    revert with 'NH{q', 17
                                if _4735 - 1 >= 36:
                                    revert with 'NH{q', 50
                                if u >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * u) + _2284] > !mem[(32 * _4735 - 1) + _2284]:
                                    revert with 'NH{q', 17
                                if v > !(mem[(32 * u) + _2284] + mem[(32 * _4735 - 1) + _2284]):
                                    revert with 'NH{q', 17
                                if u == -1:
                                    revert with 'NH{q', 17
                                u = u + 1
                                v = v + mem[(32 * u) + _2284] + mem[(32 * _4735 - 1) + _2284]
                                continue 
                            mem[_3892 + ceil32(return_data.size) + _3965 + 32] = 0
                            _4747 = mem[_3892 + 96]
                            require mem[_3892 + 128] == bool(mem[_3892 + 128])
                            require mem[_3892 + 160] == bool(mem[_3892 + 160])
                            _4813 = mem[_3892 + 192]
                            require mem[_3892 + 192] <= test266151307()
                            require _3892 + mem[_3892 + 192] + 31 < _3892 + return_data.size
                            _4837 = mem[_3892 + mem[_3892 + 192]]
                            if mem[_3892 + mem[_3892 + 192]] > test266151307():
                                revert with 'NH{q', 65
                            _4862 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 192]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 192]])) + 1
                            mem[_4862] = _4837
                            require _4813 + _4837 + 32 <= return_data.size
                            idx = 0
                            while idx < _4837:
                                mem[idx + _4862 + 32] = mem[idx + _3892 + _4813 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4837) <= _4837:
                                _5295 = mem[_3892 + 224]
                                require mem[_3892 + 224] <= test266151307()
                                require _3892 + mem[_3892 + 224] + 31 < _3892 + return_data.size
                                _5317 = mem[_3892 + mem[_3892 + 224]]
                                if mem[_3892 + mem[_3892 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _5335 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1
                                mem[_5335] = _5317
                                require _5295 + _5317 + 32 <= return_data.size
                                idx = 0
                                while idx < _5317:
                                    mem[idx + _5335 + 32] = mem[idx + _3892 + _5295 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5317) > _5317:
                                    mem[_5335 + _5317 + 32] = 0
                            else:
                                mem[_4862 + _4837 + 32] = 0
                                _5306 = mem[_3892 + 224]
                                require mem[_3892 + 224] <= test266151307()
                                require _3892 + mem[_3892 + 224] + 31 < _3892 + return_data.size
                                _5326 = mem[_3892 + mem[_3892 + 224]]
                                if mem[_3892 + mem[_3892 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _5344 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_3892 + mem[_3892 + 224]])) + 1
                                mem[_5344] = _5326
                                require _5306 + _5326 + 32 <= return_data.size
                                idx = 0
                                while idx < _5326:
                                    mem[idx + _5344 + 32] = mem[idx + _3892 + _5306 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5326) > _5326:
                                    mem[_5344 + _5326 + 32] = 0
                            if 0 == _4747:
                                if u >= 36:
                                    revert with 'NH{q', 50
                                if v > !mem[(32 * u) + _2284]:
                                    revert with 'NH{q', 17
                                if u == -1:
                                    revert with 'NH{q', 17
                                u = u + 1
                                v = v + mem[(32 * u) + _2284]
                                continue 
                            if _4747 < 1:
                                revert with 'NH{q', 17
                            if _4747 - 1 >= 36:
                                revert with 'NH{q', 50
                            if u >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * u) + _2284] > !mem[(32 * _4747 - 1) + _2284]:
                                revert with 'NH{q', 17
                            if v > !(mem[(32 * u) + _2284] + mem[(32 * _4747 - 1) + _2284]):
                                revert with 'NH{q', 17
                            if u == -1:
                                revert with 'NH{q', 17
                            u = u + 1
                            v = v + mem[(32 * u) + _2284] + mem[(32 * _4747 - 1) + _2284]
                            continue 
                        if s < v:
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            s = v
                            t = 1
                            continue 
                        if s != v:
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            s = s
                            t = t
                            continue 
                        if not t:
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            s = s
                            t = t
                            continue 
                        lastWinner = 0
                    if not t:
                        lastWinner = 0
                    else:
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
                        lastWinner = 1
            else:
                if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if uint32(call.func_hash) >> 224 != unknown_0xaaccf275(?????):
                        if unknown_0xb2d946bc(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
                        require unknown_0xbcf70bb4(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_bcf70bb4
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Factions: owner'
                    stor1.length = cd[4]
                else:
                    if unknown_0x8506b20f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(sub_e4d07d70Address)
                        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                gas gas_remaining wei
                               args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[31 len 1] < 1:
                            revert with 'NH{q', 17
                        if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
                            revert with 'NH{q', 50
                        if sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] < sub_77e840ed[cd[4]]:
                            revert with 'NH{q', 17
                        if not sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
                            revert with 'NH{q', 18
                        return (sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[cd[4]] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)])
                    if unknown_0x8b747176(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint8(cd[4])
                        if 1 > uint8(cd[4]):
                            revert with 0, 'HillBF: index'
                        if uint8(cd[4]) > 5:
                            revert with 0, 'HillBF: index'
                        if uint8(cd[4]) < 1:
                            revert with 'NH{q', 17
                        if uint8(uint8(cd[4]) - 1) >= 5:
                            revert with 'NH{q', 50
                        return sub_797c82a7[uint8(uint8(cd[4]) - 1)]
                    require unknown_0x8c14aa76(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not sub_0152600c[msg.sender][1][cd[4]]:
                        revert with 0, 'HillBF: not owned'
                    require ext_code.size(sub_e4d07d70Address)
                    staticcall sub_e4d07d70Address.0x9a6b2087 with:
                            gas gas_remaining wei
                           args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if ext_call.return_data[31 len 1] < 1:
                        revert with 'NH{q', 17
                    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] < sub_77e840ed[cd[4]]:
                        revert with 'NH{q', 17
                    if not sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
                        revert with 'NH{q', 18
                    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] < sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[cd[4]] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
                        revert with 'NH{q', 17
                    sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] -= sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[cd[4]] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]
                    if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
                        revert with 'NH{q', 50
                    sub_77e840ed[cd[4]] = sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]
                    call msg.sender with:
                       value sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[cd[4]] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x4bee2ce6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x7287b627(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x4bee2ce6(?????):
                        if unknown_0x4cb58280(?????) == uint32(call.func_hash) >> 224:
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
                                    revert with 0, 'HillBF: not owned'
                                require ext_code.size(sub_e4d07d70Address)
                                staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2340 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _2349 = mem[_2340]
                                require mem[_2340] == mem[_2340 + 31 len 1]
                                if mem[_2340 + 31 len 1] < 1:
                                    revert with 'NH{q', 17
                                if uint8(mem[_2340 + 31 len 1] - 1) >= 5:
                                    revert with 'NH{q', 50
                                if not sub_44754090[uint8(mem[_2340 + 31 len 1] - 1)]:
                                    revert with 'NH{q', 17
                                sub_44754090[uint8(mem[_2340 + 31 len 1] - 1)]--
                                if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
                                    if uint8(mem[_2340 + 31 len 1] - 1) >= 5:
                                        revert with 'NH{q', 50
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_2340 + 31 len 1] - 1)]:
                                        mem[32] = 204
                                        _2465 = mem[64]
                                        mem[64] = mem[64] + 1152
                                        mem[_2465] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                                        s = _2465
                                        t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                                        while _2465 + 1152 > s + 32:
                                            mem[s + 32] = stor1[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        s = 0
                                        while s < 36:
                                            if uint8(uint8(_2349) - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            if stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] < mem[(32 * s) + _2465]:
                                                revert with 'NH{q', 17
                                            stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] -= mem[(32 * s) + _2465]
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            s = s + 1
                                            continue 
                                    else:
                                        mem[32] = sha3(msg.sender, 15) + 1
                                        if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
                                            revert with 0, 'HillBF: not owned'
                                        require ext_code.size(sub_e4d07d70Address)
                                        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[4] + 36)]
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2576 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_2576] == mem[_2576 + 31 len 1]
                                        if mem[_2576 + 31 len 1] < 1:
                                            revert with 'NH{q', 17
                                        if uint8(mem[_2576 + 31 len 1] - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if sub_152a9f06[uint8(mem[_2576 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                                            revert with 'NH{q', 17
                                        if not sub_44754090[uint8(mem[_2576 + 31 len 1] - 1)]:
                                            revert with 'NH{q', 18
                                        if uint8(mem[_2576 + 31 len 1] - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if sub_797c82a7[uint8(mem[_2576 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_2576 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2576 + 31 len 1] - 1)]:
                                            revert with 'NH{q', 17
                                        sub_797c82a7[uint8(mem[_2576 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_2576 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2576 + 31 len 1] - 1)]
                                        if uint8(mem[_2576 + 31 len 1] - 1) >= 5:
                                            revert with 'NH{q', 50
                                        sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_2576 + 31 len 1] - 1)]
                                        call msg.sender with:
                                           value sub_152a9f06[uint8(mem[_2576 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2576 + 31 len 1] - 1)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 204
                                        _2932 = mem[64]
                                        mem[64] = mem[64] + 1152
                                        mem[_2932] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                                        s = _2932
                                        t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                                        while _2932 + 1152 > s + 32:
                                            mem[s + 32] = stor1[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        s = 0
                                        while s < 36:
                                            if uint8(uint8(_2349) - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            if stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] < mem[(32 * s) + _2932]:
                                                revert with 'NH{q', 17
                                            stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] -= mem[(32 * s) + _2932]
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
                                        if uint8(mem[_2340 + 31 len 1] - 1) >= 5:
                                            revert with 'NH{q', 50
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_2340 + 31 len 1] - 1)]:
                                            mem[32] = 204
                                            _2578 = mem[64]
                                            mem[64] = mem[64] + 1152
                                            mem[_2578] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                                            s = _2578
                                            t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                                            while _2578 + 1152 > s + 32:
                                                mem[s + 32] = stor1[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            s = 0
                                            while s < 36:
                                                if uint8(uint8(_2349) - 1) >= 5:
                                                    revert with 'NH{q', 50
                                                if s >= 36:
                                                    revert with 'NH{q', 50
                                                if stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] < mem[(32 * s) + _2578]:
                                                    revert with 'NH{q', 17
                                                stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] -= mem[(32 * s) + _2578]
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                s = s + 1
                                                continue 
                                        else:
                                            mem[32] = sha3(msg.sender, 15) + 1
                                            if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
                                                revert with 0, 'HillBF: not owned'
                                            require ext_code.size(sub_e4d07d70Address)
                                            staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[4] + 36)]
                                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2737 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            require mem[_2737] == mem[_2737 + 31 len 1]
                                            if mem[_2737 + 31 len 1] < 1:
                                                revert with 'NH{q', 17
                                            if uint8(mem[_2737 + 31 len 1] - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if sub_152a9f06[uint8(mem[_2737 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                                                revert with 'NH{q', 17
                                            if not sub_44754090[uint8(mem[_2737 + 31 len 1] - 1)]:
                                                revert with 'NH{q', 18
                                            if uint8(mem[_2737 + 31 len 1] - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if sub_797c82a7[uint8(mem[_2737 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_2737 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2737 + 31 len 1] - 1)]:
                                                revert with 'NH{q', 17
                                            sub_797c82a7[uint8(mem[_2737 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_2737 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2737 + 31 len 1] - 1)]
                                            if uint8(mem[_2737 + 31 len 1] - 1) >= 5:
                                                revert with 'NH{q', 50
                                            sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_2737 + 31 len 1] - 1)]
                                            call msg.sender with:
                                               value sub_152a9f06[uint8(mem[_2737 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2737 + 31 len 1] - 1)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 204
                                            _2973 = mem[64]
                                            mem[64] = mem[64] + 1152
                                            mem[_2973] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                                            s = _2973
                                            t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                                            while _2973 + 1152 > s + 32:
                                                mem[s + 32] = stor1[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            s = 0
                                            while s < 36:
                                                if uint8(uint8(_2349) - 1) >= 5:
                                                    revert with 'NH{q', 50
                                                if s >= 36:
                                                    revert with 'NH{q', 50
                                                if stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] < mem[(32 * s) + _2973]:
                                                    revert with 'NH{q', 17
                                                stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] -= mem[(32 * s) + _2973]
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
                                        if uint8(mem[_2340 + 31 len 1] - 1) >= 5:
                                            revert with 'NH{q', 50
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(mem[_2340 + 31 len 1] - 1)]:
                                            mem[32] = 204
                                            _2661 = mem[64]
                                            mem[64] = mem[64] + 1152
                                            mem[_2661] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                                            s = _2661
                                            t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                                            while _2661 + 1152 > s + 32:
                                                mem[s + 32] = stor1[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            s = 0
                                            while s < 36:
                                                if uint8(uint8(_2349) - 1) >= 5:
                                                    revert with 'NH{q', 50
                                                if s >= 36:
                                                    revert with 'NH{q', 50
                                                if stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] < mem[(32 * s) + _2661]:
                                                    revert with 'NH{q', 17
                                                stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] -= mem[(32 * s) + _2661]
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                s = s + 1
                                                continue 
                                        else:
                                            mem[32] = sha3(msg.sender, 15) + 1
                                            if not sub_0152600c[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
                                                revert with 0, 'HillBF: not owned'
                                            require ext_code.size(sub_e4d07d70Address)
                                            staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[4] + 36)]
                                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2796 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            require mem[_2796] == mem[_2796 + 31 len 1]
                                            if mem[_2796 + 31 len 1] < 1:
                                                revert with 'NH{q', 17
                                            if uint8(mem[_2796 + 31 len 1] - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if sub_152a9f06[uint8(mem[_2796 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                                                revert with 'NH{q', 17
                                            if not sub_44754090[uint8(mem[_2796 + 31 len 1] - 1)]:
                                                revert with 'NH{q', 18
                                            if uint8(mem[_2796 + 31 len 1] - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if sub_797c82a7[uint8(mem[_2796 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_2796 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2796 + 31 len 1] - 1)]:
                                                revert with 'NH{q', 17
                                            sub_797c82a7[uint8(mem[_2796 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_2796 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2796 + 31 len 1] - 1)]
                                            if uint8(mem[_2796 + 31 len 1] - 1) >= 5:
                                                revert with 'NH{q', 50
                                            sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_2796 + 31 len 1] - 1)]
                                            call msg.sender with:
                                               value sub_152a9f06[uint8(mem[_2796 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_2796 + 31 len 1] - 1)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 204
                                            _2977 = mem[64]
                                            mem[64] = mem[64] + 1152
                                            mem[_2977] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                                            s = _2977
                                            t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                                            while _2977 + 1152 > s + 32:
                                                mem[s + 32] = stor1[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            s = 0
                                            while s < 36:
                                                if uint8(uint8(_2349) - 1) >= 5:
                                                    revert with 'NH{q', 50
                                                if s >= 36:
                                                    revert with 'NH{q', 50
                                                if stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] < mem[(32 * s) + _2977]:
                                                    revert with 'NH{q', 17
                                                stor[s + (36 * uint8(uint8(_2349) - 1)) + 22] -= mem[(32 * s) + _2977]
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
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x665393dd(?????):
                                require unknown_0x690aba52(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                return bool(stor16[cd[4]])
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            if stor1.length and ('cd', 4).length > -1 / stor1.length:
                                revert with 'NH{q', 17
                            if msg.value < stor1.length * ('cd', 4).length:
                                revert with 0, 'HillBF: no tribute'
                            idx = 0
                            while idx < ('cd', 4).length:
                                require ext_code.size(sub_e4d07d70Address)
                                staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2308 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _2315 = mem[_2308]
                                require mem[_2308] == mem[_2308 + 31 len 1]
                                if mem[_2308 + 32] <= 0:
                                    revert with 0, 'HillBF: enrolled'
                                if msg.value < stor1.length:
                                    revert with 0, 'HillBF: tribute'
                                if mem[_2308 + 31 len 1] < 1:
                                    revert with 'NH{q', 17
                                if uint8(mem[_2308 + 31 len 1] - 1) >= 5:
                                    revert with 'NH{q', 50
                                if sub_44754090[uint8(mem[_2308 + 31 len 1] - 1)] == -1:
                                    revert with 'NH{q', 17
                                sub_44754090[uint8(mem[_2308 + 31 len 1] - 1)]++
                                if uint8(mem[_2308 + 31 len 1] - 1) >= 5:
                                    revert with 'NH{q', 50
                                if sub_797c82a7[uint8(mem[_2308 + 31 len 1] - 1)] > !stor1.length:
                                    revert with 'NH{q', 17
                                sub_797c82a7[uint8(mem[_2308 + 31 len 1] - 1)] += stor1.length
                                if uint8(mem[_2308 + 31 len 1] - 1) >= 5:
                                    revert with 'NH{q', 50
                                sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(mem[_2308 + 31 len 1] - 1)]
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
                                    _2484 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 1152
                                    require _2484 + 31 < _2484 + return_data.size
                                    _2509 = mem[64]
                                    if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 1152
                                    require return_data.size >= 1152
                                    t = _2484
                                    u = _2509
                                    s = 0
                                    while s < 36:
                                        require mem[t] == mem[t + 31 len 1]
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    _2997 = mem[64]
                                    mem[64] = mem[64] + 1152
                                    mem[_2997 len 1152] = call.data[calldata.size len 1152]
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3033 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3050 = mem[_3033]
                                    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                                    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3071 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 192
                                    _3090 = mem[_3071]
                                    require mem[_3071] == mem[_3071 + 28 len 4]
                                    _3099 = mem[_3071 + 32]
                                    require mem[_3071 + 32] == mem[_3071 + 60 len 4]
                                    _3161 = mem[_3071 + 64]
                                    require mem[_3071 + 64] == mem[_3071 + 92 len 4]
                                    _3245 = mem[_3071 + 96]
                                    require mem[_3071 + 96] == mem[_3071 + 124 len 4]
                                    _3270 = mem[_3071 + 128]
                                    require mem[_3071 + 128] == mem[_3071 + 156 len 4]
                                    _3323 = mem[_3071 + 160]
                                    require mem[_3071 + 160] == mem[_3071 + 188 len 4]
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
                                        _3941 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        _3987 = mem[_3941 + 32]
                                        require mem[_3941 + 32] <= test266151307()
                                        require _3941 + mem[_3941 + 32] + 31 < _3941 + return_data.size
                                        _4067 = mem[_3941 + mem[_3941 + 32]]
                                        if mem[_3941 + mem[_3941 + 32]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(ceil32(mem[_3941 + mem[_3941 + 32]])) + 1 < 0 or _3941 + ceil32(return_data.size) + ceil32(ceil32(mem[_3941 + mem[_3941 + 32]])) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _3941 + ceil32(return_data.size) + ceil32(ceil32(mem[_3941 + mem[_3941 + 32]])) + 1
                                        mem[_3941 + ceil32(return_data.size)] = _4067
                                        require _3987 + _4067 + 32 <= return_data.size
                                        idx = 0
                                        while idx < _4067:
                                            mem[idx + _3941 + ceil32(return_data.size) + 32] = mem[idx + _3941 + _3987 + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_4067) <= _4067:
                                            _4727 = mem[_3941 + 64]
                                            require mem[_3941 + 128] == bool(mem[_3941 + 128])
                                            require mem[_3941 + 160] == bool(mem[_3941 + 160])
                                            _4789 = mem[_3941 + 192]
                                            require mem[_3941 + 192] <= test266151307()
                                            require _3941 + mem[_3941 + 192] + 31 < _3941 + return_data.size
                                            _4822 = mem[_3941 + mem[_3941 + 192]]
                                            if mem[_3941 + mem[_3941 + 192]] > test266151307():
                                                revert with 'NH{q', 65
                                            _4838 = mem[64]
                                            if mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 192]])) + 1 > test266151307():
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 192]])) + 1
                                            mem[_4838] = _4822
                                            require _4789 + _4822 + 32 <= return_data.size
                                            idx = 0
                                            while idx < _4822:
                                                mem[idx + _4838 + 32] = mem[idx + _3941 + _4789 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_4822) <= _4822:
                                                _5285 = mem[_3941 + 224]
                                                require mem[_3941 + 224] <= test266151307()
                                                require _3941 + mem[_3941 + 224] + 31 < _3941 + return_data.size
                                                _5310 = mem[_3941 + mem[_3941 + 224]]
                                                if mem[_3941 + mem[_3941 + 224]] > test266151307():
                                                    revert with 'NH{q', 65
                                                _5327 = mem[64]
                                                if mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[64] = mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1
                                                mem[_5327] = _5310
                                                require _5285 + _5310 + 32 <= return_data.size
                                                idx = 0
                                                while idx < _5310:
                                                    mem[idx + _5327 + 32] = mem[idx + _3941 + _5285 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_5310) > _5310:
                                                    mem[_5327 + _5310 + 32] = 0
                                            else:
                                                mem[_4838 + _4822 + 32] = 0
                                                _5296 = mem[_3941 + 224]
                                                require mem[_3941 + 224] <= test266151307()
                                                require _3941 + mem[_3941 + 224] + 31 < _3941 + return_data.size
                                                _5318 = mem[_3941 + mem[_3941 + 224]]
                                                if mem[_3941 + mem[_3941 + 224]] > test266151307():
                                                    revert with 'NH{q', 65
                                                _5336 = mem[64]
                                                if mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[64] = mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1
                                                mem[_5336] = _5318
                                                require _5296 + _5318 + 32 <= return_data.size
                                                idx = 0
                                                while idx < _5318:
                                                    mem[idx + _5336 + 32] = mem[idx + _3941 + _5296 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_5318) > _5318:
                                                    mem[_5336 + _5318 + 32] = 0
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            if 1 == _4727:
                                                if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3090) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                    revert with 'NH{q', 17
                                                if s >= 36:
                                                    revert with 'NH{q', 50
                                                mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3090)
                                            else:
                                                if 2 == _4727:
                                                    if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                        revert with 'NH{q', 17
                                                    if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3099) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                        revert with 'NH{q', 17
                                                    if s >= 36:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3099)
                                                else:
                                                    if 3 == _4727:
                                                        if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                            revert with 'NH{q', 17
                                                        if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3161) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                            revert with 'NH{q', 17
                                                        if s >= 36:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3161)
                                                    else:
                                                        if 4 == _4727:
                                                            if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                                revert with 'NH{q', 17
                                                            if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3245) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                                revert with 'NH{q', 17
                                                            if s >= 36:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3245)
                                                        else:
                                                            if 5 == _4727:
                                                                if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                                    revert with 'NH{q', 17
                                                                if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3270) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                                    revert with 'NH{q', 17
                                                                if s >= 36:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3270)
                                                            else:
                                                                if _4727 != 6:
                                                                else:
                                                                    if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                                        revert with 'NH{q', 17
                                                                    if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3323) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                                        revert with 'NH{q', 17
                                                                    if s >= 36:
                                                                        revert with 'NH{q', 50
                                                                    mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3323)
                                        else:
                                            mem[_3941 + ceil32(return_data.size) + _4067 + 32] = 0
                                            _4737 = mem[_3941 + 64]
                                            require mem[_3941 + 128] == bool(mem[_3941 + 128])
                                            require mem[_3941 + 160] == bool(mem[_3941 + 160])
                                            _4801 = mem[_3941 + 192]
                                            require mem[_3941 + 192] <= test266151307()
                                            require _3941 + mem[_3941 + 192] + 31 < _3941 + return_data.size
                                            _4830 = mem[_3941 + mem[_3941 + 192]]
                                            if mem[_3941 + mem[_3941 + 192]] > test266151307():
                                                revert with 'NH{q', 65
                                            _4850 = mem[64]
                                            if mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 192]])) + 1 > test266151307():
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 192]])) + 1
                                            mem[_4850] = _4830
                                            require _4801 + _4830 + 32 <= return_data.size
                                            idx = 0
                                            while idx < _4830:
                                                mem[idx + _4850 + 32] = mem[idx + _3941 + _4801 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_4830) <= _4830:
                                                _5286 = mem[_3941 + 224]
                                                require mem[_3941 + 224] <= test266151307()
                                                require _3941 + mem[_3941 + 224] + 31 < _3941 + return_data.size
                                                _5311 = mem[_3941 + mem[_3941 + 224]]
                                                if mem[_3941 + mem[_3941 + 224]] > test266151307():
                                                    revert with 'NH{q', 65
                                                _5328 = mem[64]
                                                if mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[64] = mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1
                                                mem[_5328] = _5311
                                                require _5286 + _5311 + 32 <= return_data.size
                                                idx = 0
                                                while idx < _5311:
                                                    mem[idx + _5328 + 32] = mem[idx + _3941 + _5286 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_5311) > _5311:
                                                    mem[_5328 + _5311 + 32] = 0
                                            else:
                                                mem[_4850 + _4830 + 32] = 0
                                                _5297 = mem[_3941 + 224]
                                                require mem[_3941 + 224] <= test266151307()
                                                require _3941 + mem[_3941 + 224] + 31 < _3941 + return_data.size
                                                _5319 = mem[_3941 + mem[_3941 + 224]]
                                                if mem[_3941 + mem[_3941 + 224]] > test266151307():
                                                    revert with 'NH{q', 65
                                                _5337 = mem[64]
                                                if mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[64] = mem[64] + ceil32(ceil32(mem[_3941 + mem[_3941 + 224]])) + 1
                                                mem[_5337] = _5319
                                                require _5297 + _5319 + 32 <= return_data.size
                                                idx = 0
                                                while idx < _5319:
                                                    mem[idx + _5337 + 32] = mem[idx + _3941 + _5297 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_5319) > _5319:
                                                    mem[_5337 + _5319 + 32] = 0
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            if 1 == _4737:
                                                if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3090) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                    revert with 'NH{q', 17
                                                if s >= 36:
                                                    revert with 'NH{q', 50
                                                mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3090)
                                            else:
                                                if 2 == _4737:
                                                    if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                        revert with 'NH{q', 17
                                                    if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3099) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                        revert with 'NH{q', 17
                                                    if s >= 36:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3099)
                                                else:
                                                    if 3 == _4737:
                                                        if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                            revert with 'NH{q', 17
                                                        if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3161) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                            revert with 'NH{q', 17
                                                        if s >= 36:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3161)
                                                    else:
                                                        if 4 == _4737:
                                                            if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                                revert with 'NH{q', 17
                                                            if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3245) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                                revert with 'NH{q', 17
                                                            if s >= 36:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3245)
                                                        else:
                                                            if 5 == _4737:
                                                                if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                                    revert with 'NH{q', 17
                                                                if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3270) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                                    revert with 'NH{q', 17
                                                                if s >= 36:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3270)
                                                            else:
                                                                if _4737 != 6:
                                                                else:
                                                                    if mem[(32 * s) + _2509 + 31 len 1] and _3050 > -1 / mem[(32 * s) + _2509 + 31 len 1]:
                                                                        revert with 'NH{q', 17
                                                                    if mem[(32 * s) + _2509 + 31 len 1] * _3050 and uint32(_3323) > -1 / mem[(32 * s) + _2509 + 31 len 1] * _3050:
                                                                        revert with 'NH{q', 17
                                                                    if s >= 36:
                                                                        revert with 'NH{q', 50
                                                                    mem[(32 * s) + _2997] = mem[(32 * s) + _2509 + 31 len 1] * _3050 * uint32(_3323)
                                        if uint8(uint8(_2315) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        if stor[s + (36 * uint8(uint8(_2315) - 1)) + 22] > !mem[(32 * s) + _2997]:
                                            revert with 'NH{q', 17
                                        stor[s + (36 * uint8(uint8(_2315) - 1)) + 22] += mem[(32 * s) + _2997]
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        s = s + 1
                                        continue 
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 204
                                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                                    s = _2997
                                    while _2997 + 1152 > s:
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
                                    _2485 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 1152
                                    require _2485 + 31 < _2485 + return_data.size
                                    _2510 = mem[64]
                                    if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                                        revert with 'NH{q', 65
                                    mem[64] = mem[64] + 1152
                                    require return_data.size >= 1152
                                    t = _2485
                                    u = _2510
                                    s = 0
                                    while s < 36:
                                        require mem[t] == mem[t + 31 len 1]
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    _2998 = mem[64]
                                    mem[64] = mem[64] + 1152
                                    mem[_2998 len 1152] = call.data[calldata.size len 1152]
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3034 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3051 = mem[_3034]
                                    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                                    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3072 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 192
                                    _3091 = mem[_3072]
                                    require mem[_3072] == mem[_3072 + 28 len 4]
                                    _3100 = mem[_3072 + 32]
                                    require mem[_3072 + 32] == mem[_3072 + 60 len 4]
                                    _3162 = mem[_3072 + 64]
                                    require mem[_3072 + 64] == mem[_3072 + 92 len 4]
                                    _3246 = mem[_3072 + 96]
                                    require mem[_3072 + 96] == mem[_3072 + 124 len 4]
                                    _3271 = mem[_3072 + 128]
                                    require mem[_3072 + 128] == mem[_3072 + 156 len 4]
                                    _3324 = mem[_3072 + 160]
                                    require mem[_3072 + 160] == mem[_3072 + 188 len 4]
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
                                        _3942 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        _3989 = mem[_3942 + 32]
                                        require mem[_3942 + 32] <= test266151307()
                                        require _3942 + mem[_3942 + 32] + 31 < _3942 + return_data.size
                                        _4069 = mem[_3942 + mem[_3942 + 32]]
                                        if mem[_3942 + mem[_3942 + 32]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(ceil32(mem[_3942 + mem[_3942 + 32]])) + 1 < 0 or _3942 + ceil32(return_data.size) + ceil32(ceil32(mem[_3942 + mem[_3942 + 32]])) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _3942 + ceil32(return_data.size) + ceil32(ceil32(mem[_3942 + mem[_3942 + 32]])) + 1
                                        mem[_3942 + ceil32(return_data.size)] = _4069
                                        require _3989 + _4069 + 32 <= return_data.size
                                        idx = 0
                                        while idx < _4069:
                                            mem[idx + _3942 + ceil32(return_data.size) + 32] = mem[idx + _3942 + _3989 + 32]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_4069) <= _4069:
                                            _4729 = mem[_3942 + 64]
                                            require mem[_3942 + 128] == bool(mem[_3942 + 128])
                                            require mem[_3942 + 160] == bool(mem[_3942 + 160])
                                            _4790 = mem[_3942 + 192]
                                            require mem[_3942 + 192] <= test266151307()
                                            require _3942 + mem[_3942 + 192] + 31 < _3942 + return_data.size
                                            _4823 = mem[_3942 + mem[_3942 + 192]]
                                            if mem[_3942 + mem[_3942 + 192]] > test266151307():
                                                revert with 'NH{q', 65
                                            _4839 = mem[64]
                                            if mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 192]])) + 1 > test266151307():
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 192]])) + 1
                                            mem[_4839] = _4823
                                            require _4790 + _4823 + 32 <= return_data.size
                                            idx = 0
                                            while idx < _4823:
                                                mem[idx + _4839 + 32] = mem[idx + _3942 + _4790 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_4823) <= _4823:
                                                _5288 = mem[_3942 + 224]
                                                require mem[_3942 + 224] <= test266151307()
                                                require _3942 + mem[_3942 + 224] + 31 < _3942 + return_data.size
                                                _5312 = mem[_3942 + mem[_3942 + 224]]
                                                if mem[_3942 + mem[_3942 + 224]] > test266151307():
                                                    revert with 'NH{q', 65
                                                _5329 = mem[64]
                                                if mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[64] = mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1
                                                mem[_5329] = _5312
                                                require _5288 + _5312 + 32 <= return_data.size
                                                idx = 0
                                                while idx < _5312:
                                                    mem[idx + _5329 + 32] = mem[idx + _3942 + _5288 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_5312) > _5312:
                                                    mem[_5329 + _5312 + 32] = 0
                                            else:
                                                mem[_4839 + _4823 + 32] = 0
                                                _5298 = mem[_3942 + 224]
                                                require mem[_3942 + 224] <= test266151307()
                                                require _3942 + mem[_3942 + 224] + 31 < _3942 + return_data.size
                                                _5320 = mem[_3942 + mem[_3942 + 224]]
                                                if mem[_3942 + mem[_3942 + 224]] > test266151307():
                                                    revert with 'NH{q', 65
                                                _5338 = mem[64]
                                                if mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[64] = mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1
                                                mem[_5338] = _5320
                                                require _5298 + _5320 + 32 <= return_data.size
                                                idx = 0
                                                while idx < _5320:
                                                    mem[idx + _5338 + 32] = mem[idx + _3942 + _5298 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_5320) > _5320:
                                                    mem[_5338 + _5320 + 32] = 0
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            if 1 == _4729:
                                                if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3091) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                    revert with 'NH{q', 17
                                                if s >= 36:
                                                    revert with 'NH{q', 50
                                                mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3091)
                                            else:
                                                if 2 == _4729:
                                                    if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                        revert with 'NH{q', 17
                                                    if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3100) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                        revert with 'NH{q', 17
                                                    if s >= 36:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3100)
                                                else:
                                                    if 3 == _4729:
                                                        if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                            revert with 'NH{q', 17
                                                        if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3162) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                            revert with 'NH{q', 17
                                                        if s >= 36:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3162)
                                                    else:
                                                        if 4 == _4729:
                                                            if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                                revert with 'NH{q', 17
                                                            if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3246) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                                revert with 'NH{q', 17
                                                            if s >= 36:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3246)
                                                        else:
                                                            if 5 == _4729:
                                                                if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                                    revert with 'NH{q', 17
                                                                if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3271) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                                    revert with 'NH{q', 17
                                                                if s >= 36:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3271)
                                                            else:
                                                                if _4729 != 6:
                                                                else:
                                                                    if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                                        revert with 'NH{q', 17
                                                                    if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3324) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                                        revert with 'NH{q', 17
                                                                    if s >= 36:
                                                                        revert with 'NH{q', 50
                                                                    mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3324)
                                        else:
                                            mem[_3942 + ceil32(return_data.size) + _4069 + 32] = 0
                                            _4740 = mem[_3942 + 64]
                                            require mem[_3942 + 128] == bool(mem[_3942 + 128])
                                            require mem[_3942 + 160] == bool(mem[_3942 + 160])
                                            _4802 = mem[_3942 + 192]
                                            require mem[_3942 + 192] <= test266151307()
                                            require _3942 + mem[_3942 + 192] + 31 < _3942 + return_data.size
                                            _4831 = mem[_3942 + mem[_3942 + 192]]
                                            if mem[_3942 + mem[_3942 + 192]] > test266151307():
                                                revert with 'NH{q', 65
                                            _4851 = mem[64]
                                            if mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 192]])) + 1 > test266151307():
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 192]])) + 1
                                            mem[_4851] = _4831
                                            require _4802 + _4831 + 32 <= return_data.size
                                            idx = 0
                                            while idx < _4831:
                                                mem[idx + _4851 + 32] = mem[idx + _3942 + _4802 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(_4831) <= _4831:
                                                _5289 = mem[_3942 + 224]
                                                require mem[_3942 + 224] <= test266151307()
                                                require _3942 + mem[_3942 + 224] + 31 < _3942 + return_data.size
                                                _5313 = mem[_3942 + mem[_3942 + 224]]
                                                if mem[_3942 + mem[_3942 + 224]] > test266151307():
                                                    revert with 'NH{q', 65
                                                _5330 = mem[64]
                                                if mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[64] = mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1
                                                mem[_5330] = _5313
                                                require _5289 + _5313 + 32 <= return_data.size
                                                idx = 0
                                                while idx < _5313:
                                                    mem[idx + _5330 + 32] = mem[idx + _3942 + _5289 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_5313) > _5313:
                                                    mem[_5330 + _5313 + 32] = 0
                                            else:
                                                mem[_4851 + _4831 + 32] = 0
                                                _5299 = mem[_3942 + 224]
                                                require mem[_3942 + 224] <= test266151307()
                                                require _3942 + mem[_3942 + 224] + 31 < _3942 + return_data.size
                                                _5321 = mem[_3942 + mem[_3942 + 224]]
                                                if mem[_3942 + mem[_3942 + 224]] > test266151307():
                                                    revert with 'NH{q', 65
                                                _5339 = mem[64]
                                                if mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1 > test266151307():
                                                    revert with 'NH{q', 65
                                                mem[64] = mem[64] + ceil32(ceil32(mem[_3942 + mem[_3942 + 224]])) + 1
                                                mem[_5339] = _5321
                                                require _5299 + _5321 + 32 <= return_data.size
                                                idx = 0
                                                while idx < _5321:
                                                    mem[idx + _5339 + 32] = mem[idx + _3942 + _5299 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(_5321) > _5321:
                                                    mem[_5339 + _5321 + 32] = 0
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            if 1 == _4740:
                                                if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3091) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                    revert with 'NH{q', 17
                                                if s >= 36:
                                                    revert with 'NH{q', 50
                                                mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3091)
                                            else:
                                                if 2 == _4740:
                                                    if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                        revert with 'NH{q', 17
                                                    if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3100) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                        revert with 'NH{q', 17
                                                    if s >= 36:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3100)
                                                else:
                                                    if 3 == _4740:
                                                        if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                            revert with 'NH{q', 17
                                                        if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3162) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                            revert with 'NH{q', 17
                                                        if s >= 36:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3162)
                                                    else:
                                                        if 4 == _4740:
                                                            if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                                revert with 'NH{q', 17
                                                            if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3246) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                                revert with 'NH{q', 17
                                                            if s >= 36:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3246)
                                                        else:
                                                            if 5 == _4740:
                                                                if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                                    revert with 'NH{q', 17
                                                                if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3271) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                                    revert with 'NH{q', 17
                                                                if s >= 36:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3271)
                                                            else:
                                                                if _4740 != 6:
                                                                else:
                                                                    if mem[(32 * s) + _2510 + 31 len 1] and _3051 > -1 / mem[(32 * s) + _2510 + 31 len 1]:
                                                                        revert with 'NH{q', 17
                                                                    if mem[(32 * s) + _2510 + 31 len 1] * _3051 and uint32(_3324) > -1 / mem[(32 * s) + _2510 + 31 len 1] * _3051:
                                                                        revert with 'NH{q', 17
                                                                    if s >= 36:
                                                                        revert with 'NH{q', 50
                                                                    mem[(32 * s) + _2998] = mem[(32 * s) + _2510 + 31 len 1] * _3051 * uint32(_3324)
                                        if uint8(uint8(_2315) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        if stor[s + (36 * uint8(uint8(_2315) - 1)) + 22] > !mem[(32 * s) + _2998]:
                                            revert with 'NH{q', 17
                                        stor[s + (36 * uint8(uint8(_2315) - 1)) + 22] += mem[(32 * s) + _2998]
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        s = s + 1
                                        continue 
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 204
                                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                                    s = _2998
                                    while _2998 + 1152 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                s = sha3(cd[((32 * idx) + cd[4] + 36)], 204) + 36
                                while sha3(cd[((32 * idx) + cd[4] + 36)], 204) + 36 > s:
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
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not sub_0152600c[msg.sender][1][cd[4]]:
                            revert with 0, 'HillBF: not owned'
                        require ext_code.size(sub_e4d07d70Address)
                        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                gas gas_remaining wei
                               args cd[4]
                        mem[128 len 64] = ext_call.return_data[0 len 64]
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
                        if sub_0152600c[msg.sender][1][cd[4]]:
                            if sub_0152600c[msg.sender][1][cd[4]] < 1:
                                revert with 'NH{q', 17
                            if sub_0152600c[msg.sender] < 1:
                                revert with 'NH{q', 17
                            if sub_0152600c[msg.sender] - 1 != sub_0152600c[msg.sender][1][cd[4]] - 1:
                                if sub_0152600c[msg.sender] - 1 >= sub_0152600c[msg.sender]:
                                    revert with 'NH{q', 50
                                if sub_0152600c[msg.sender][1][cd[4]] - 1 >= sub_0152600c[msg.sender]:
                                    revert with 'NH{q', 50
                                sub_0152600c[msg.sender][sub_0152600c[msg.sender][1][cd[4]]] = sub_0152600c[msg.sender][sub_0152600c[msg.sender]]
                                sub_0152600c[msg.sender][1][sub_0152600c[msg.sender][sub_0152600c[msg.sender]]] = sub_0152600c[msg.sender][1][cd[4]]
                            if not sub_0152600c[msg.sender]:
                                revert with 'NH{q', 49
                            sub_0152600c[msg.sender][sub_0152600c[msg.sender]] = 0
                            sub_0152600c[msg.sender]--
                            sub_0152600c[msg.sender][1][cd[4]] = 0
                        if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
                            revert with 'NH{q', 50
                        if sub_77e840ed[cd[4]] == sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]:
                            mem[ceil32(return_data.size) + 128] = stor204[cd[4]].field_0
                            idx = ceil32(return_data.size) + 128
                            s = 0
                            while ceil32(return_data.size) + 1280 > idx + 32:
                                mem[idx + 32] = stor204[cd[4]][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < 36:
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] < mem[(32 * idx) + ceil32(return_data.size) + 128]:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] -= mem[(32 * idx) + ceil32(return_data.size) + 128]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if not sub_0152600c[msg.sender][1][cd[4]]:
                                revert with 0, 'HillBF: not owned'
                            require ext_code.size(sub_e4d07d70Address)
                            staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                    gas gas_remaining wei
                                   args cd[4]
                            mem[ceil32(return_data.size) + 128 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if ext_call.return_data[31 len 1] < 1:
                                revert with 'NH{q', 17
                            if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
                                revert with 'NH{q', 50
                            if sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] < sub_77e840ed[cd[4]]:
                                revert with 'NH{q', 17
                            if not sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
                                revert with 'NH{q', 18
                            if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
                                revert with 'NH{q', 50
                            if sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] < sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[cd[4]] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]:
                                revert with 'NH{q', 17
                            sub_797c82a7[uint8(ext_call.return_data[31 len 1] - 1)] -= sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[cd[4]] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)]
                            if uint8(ext_call.return_data[31 len 1] - 1) >= 5:
                                revert with 'NH{q', 50
                            sub_77e840ed[cd[4]] = sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]
                            call msg.sender with:
                               value sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)] - sub_77e840ed[cd[4]] / sub_44754090[uint8(ext_call.return_data[31 len 1] - 1)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 128] = stor204[cd[4]].field_0
                            idx = (2 * ceil32(return_data.size)) + 128
                            s = 0
                            while (2 * ceil32(return_data.size)) + 1280 > idx + 32:
                                mem[idx + 32] = stor204[cd[4]][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < 36:
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] < mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] -= mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, msg.sender, cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x7287b627(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0x6292f3fb422e393342f257857e744d43b1ae7e70
                if unknown_0x77e840ed(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return sub_77e840ed[cd[4]]
                if unknown_0x797c82a7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] < 5
                    return sub_797c82a7[cd[4]]
                require unknown_0x84979437(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require ext_code.size(sub_e4d07d70Address)
                staticcall sub_e4d07d70Address.0x9a6b2087 with:
                        gas gas_remaining wei
                       args cd[4]
                mem[128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[31 len 1] < 1:
                    revert with 'NH{q', 17
                require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
                staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[4]
                mem[ceil32(return_data.size) + 128 len 1152] = ext_call.return_data[0 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 1152
                require ceil32(return_data.size) + 159 < ceil32(return_data.size) + return_data.size + 128
                if not bool((2 * ceil32(return_data.size)) + 1280 <= test266151307()):
                    revert with 'NH{q', 65
                require return_data.size >= 1152
                s = ceil32(return_data.size) + 128
                t = (2 * ceil32(return_data.size)) + 128
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
                mem[(2 * ceil32(return_data.size)) + 1280] = stor22[uint8(uint8(ext_call.return_data[0]) - 1)]
                idx = (2 * ceil32(return_data.size)) + 1280
                s = (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22
                while (2 * ceil32(return_data.size)) + 2432 > idx + 32:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 2436] = cd[4]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[4]
                mem[(2 * ceil32(return_data.size)) + 2432] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[4]
                mem[(4 * ceil32(return_data.size)) + 2432 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 2432
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
                    _2318 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    _2335 = mem[_2318 + 32]
                    require mem[_2318 + 32] <= test266151307()
                    require _2318 + mem[_2318 + 32] + 31 < _2318 + return_data.size
                    _2351 = mem[_2318 + mem[_2318 + 32]]
                    if mem[_2318 + mem[_2318 + 32]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_2318 + mem[_2318 + 32]])) + 1 < 0 or _2318 + ceil32(return_data.size) + ceil32(ceil32(mem[_2318 + mem[_2318 + 32]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _2318 + ceil32(return_data.size) + ceil32(ceil32(mem[_2318 + mem[_2318 + 32]])) + 1
                    mem[_2318 + ceil32(return_data.size)] = _2351
                    require _2335 + _2351 + 32 <= return_data.size
                    s = 0
                    while s < _2351:
                        mem[s + _2318 + ceil32(return_data.size) + 32] = mem[s + _2318 + _2335 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2351) <= _2351:
                        _2999 = mem[_2318 + 64]
                        require mem[_2318 + 128] == bool(mem[_2318 + 128])
                        require mem[_2318 + 160] == bool(mem[_2318 + 160])
                        _3065 = mem[_2318 + 192]
                        require mem[_2318 + 192] <= test266151307()
                        require _2318 + mem[_2318 + 192] + 31 < _2318 + return_data.size
                        _3073 = mem[_2318 + mem[_2318 + 192]]
                        if mem[_2318 + mem[_2318 + 192]] > test266151307():
                            revert with 'NH{q', 65
                        _3089 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 192]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 192]])) + 1
                        mem[_3089] = _3073
                        require _3065 + _3073 + 32 <= return_data.size
                        s = 0
                        while s < _3073:
                            mem[s + _3089 + 32] = mem[s + _2318 + _3065 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3073) <= _3073:
                            _3890 = mem[_2318 + 224]
                            require mem[_2318 + 224] <= test266151307()
                            require _2318 + mem[_2318 + 224] + 31 < _2318 + return_data.size
                            _3919 = mem[_2318 + mem[_2318 + 224]]
                            if mem[_2318 + mem[_2318 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _3963 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1
                            mem[_3963] = _3919
                            require _3890 + _3919 + 32 <= return_data.size
                            s = 0
                            while s < _3919:
                                mem[s + _3963 + 32] = mem[s + _2318 + _3890 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3919) > _3919:
                                mem[_3963 + _3919 + 32] = 0
                        else:
                            mem[_3089 + _3073 + 32] = 0
                            _3895 = mem[_2318 + 224]
                            require mem[_2318 + 224] <= test266151307()
                            require _2318 + mem[_2318 + 224] + 31 < _2318 + return_data.size
                            _3944 = mem[_2318 + mem[_2318 + 224]]
                            if mem[_2318 + mem[_2318 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _3992 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1
                            mem[_3992] = _3944
                            require _3895 + _3944 + 32 <= return_data.size
                            s = 0
                            while s < _3944:
                                mem[s + _3992 + 32] = mem[s + _2318 + _3895 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3944) > _3944:
                                mem[_3992 + _3944 + 32] = 0
                        if 1 == _2999:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                                revert with 'NH{q', 17
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0]))
                        else:
                            if 2 == _2999:
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                                    revert with 'NH{q', 17
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32]))
                            else:
                                if 3 == _2999:
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                        revert with 'NH{q', 17
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64]))
                                else:
                                    if 4 == _2999:
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                            revert with 'NH{q', 17
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96]))
                                    else:
                                        if 5 == _2999:
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                                revert with 'NH{q', 17
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128]))
                                        else:
                                            if 6 == _2999:
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                                    revert with 'NH{q', 17
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160]))
                    else:
                        mem[_2318 + ceil32(return_data.size) + _2351 + 32] = 0
                        _3020 = mem[_2318 + 64]
                        require mem[_2318 + 128] == bool(mem[_2318 + 128])
                        require mem[_2318 + 160] == bool(mem[_2318 + 160])
                        _3068 = mem[_2318 + 192]
                        require mem[_2318 + 192] <= test266151307()
                        require _2318 + mem[_2318 + 192] + 31 < _2318 + return_data.size
                        _3081 = mem[_2318 + mem[_2318 + 192]]
                        if mem[_2318 + mem[_2318 + 192]] > test266151307():
                            revert with 'NH{q', 65
                        _3092 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 192]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 192]])) + 1
                        mem[_3092] = _3081
                        require _3068 + _3081 + 32 <= return_data.size
                        s = 0
                        while s < _3081:
                            mem[s + _3092 + 32] = mem[s + _2318 + _3068 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3081) <= _3081:
                            _3891 = mem[_2318 + 224]
                            require mem[_2318 + 224] <= test266151307()
                            require _2318 + mem[_2318 + 224] + 31 < _2318 + return_data.size
                            _3920 = mem[_2318 + mem[_2318 + 224]]
                            if mem[_2318 + mem[_2318 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _3964 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1
                            mem[_3964] = _3920
                            require _3891 + _3920 + 32 <= return_data.size
                            s = 0
                            while s < _3920:
                                mem[s + _3964 + 32] = mem[s + _2318 + _3891 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3920) > _3920:
                                mem[_3964 + _3920 + 32] = 0
                        else:
                            mem[_3092 + _3081 + 32] = 0
                            _3896 = mem[_2318 + 224]
                            require mem[_2318 + 224] <= test266151307()
                            require _2318 + mem[_2318 + 224] + 31 < _2318 + return_data.size
                            _3945 = mem[_2318 + mem[_2318 + 224]]
                            if mem[_2318 + mem[_2318 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _3993 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_2318 + mem[_2318 + 224]])) + 1
                            mem[_3993] = _3945
                            require _3896 + _3945 + 32 <= return_data.size
                            s = 0
                            while s < _3945:
                                mem[s + _3993 + 32] = mem[s + _2318 + _3896 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3945) > _3945:
                                mem[_3993 + _3945 + 32] = 0
                        if 1 == _3020:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                                revert with 'NH{q', 17
                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0]))
                        else:
                            if 2 == _3020:
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                                    revert with 'NH{q', 17
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32]))
                            else:
                                if 3 == _3020:
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                        revert with 'NH{q', 17
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64]))
                                else:
                                    if 4 == _3020:
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                            revert with 'NH{q', 17
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96]))
                                    else:
                                        if 5 == _3020:
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                                revert with 'NH{q', 17
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128]))
                                        else:
                                            if 6 == _3020:
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                                    revert with 'NH{q', 17
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + (mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160]))
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                    revert with 'NH{q', 50
                _2283 = mem[64]
                mem[64] = mem[64] + 1152
                mem[_2283] = stor22[uint8(uint8(ext_call.return_data[0]) - 1)]
                idx = _2283
                s = (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22
                while _2283 + 1152 > idx + 32:
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
                    _3889 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    _3904 = mem[_3889 + 32]
                    require mem[_3889 + 32] <= test266151307()
                    require _3889 + mem[_3889 + 32] + 31 < _3889 + return_data.size
                    _3962 = mem[_3889 + mem[_3889 + 32]]
                    if mem[_3889 + mem[_3889 + 32]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_3889 + mem[_3889 + 32]])) + 1 < 0 or _3889 + ceil32(return_data.size) + ceil32(ceil32(mem[_3889 + mem[_3889 + 32]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _3889 + ceil32(return_data.size) + ceil32(ceil32(mem[_3889 + mem[_3889 + 32]])) + 1
                    mem[_3889 + ceil32(return_data.size)] = _3962
                    require _3904 + _3962 + 32 <= return_data.size
                    t = 0
                    while t < _3962:
                        mem[t + _3889 + ceil32(return_data.size) + 32] = mem[t + _3889 + _3904 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3962) <= _3962:
                        _4733 = mem[_3889 + 96]
                        require mem[_3889 + 128] == bool(mem[_3889 + 128])
                        require mem[_3889 + 160] == bool(mem[_3889 + 160])
                        _4791 = mem[_3889 + 192]
                        require mem[_3889 + 192] <= test266151307()
                        require _3889 + mem[_3889 + 192] + 31 < _3889 + return_data.size
                        _4824 = mem[_3889 + mem[_3889 + 192]]
                        if mem[_3889 + mem[_3889 + 192]] > test266151307():
                            revert with 'NH{q', 65
                        _4840 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 192]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 192]])) + 1
                        mem[_4840] = _4824
                        require _4791 + _4824 + 32 <= return_data.size
                        t = 0
                        while t < _4824:
                            mem[t + _4840 + 32] = mem[t + _3889 + _4791 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_4824) <= _4824:
                            _5292 = mem[_3889 + 224]
                            require mem[_3889 + 224] <= test266151307()
                            require _3889 + mem[_3889 + 224] + 31 < _3889 + return_data.size
                            _5314 = mem[_3889 + mem[_3889 + 224]]
                            if mem[_3889 + mem[_3889 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _5332 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1
                            mem[_5332] = _5314
                            require _5292 + _5314 + 32 <= return_data.size
                            t = 0
                            while t < _5314:
                                mem[t + _5332 + 32] = mem[t + _3889 + _5292 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_5314) > _5314:
                                mem[_5332 + _5314 + 32] = 0
                        else:
                            mem[_4840 + _4824 + 32] = 0
                            _5303 = mem[_3889 + 224]
                            require mem[_3889 + 224] <= test266151307()
                            require _3889 + mem[_3889 + 224] + 31 < _3889 + return_data.size
                            _5323 = mem[_3889 + mem[_3889 + 224]]
                            if mem[_3889 + mem[_3889 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _5341 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1
                            mem[_5341] = _5323
                            require _5303 + _5323 + 32 <= return_data.size
                            t = 0
                            while t < _5323:
                                mem[t + _5341 + 32] = mem[t + _3889 + _5303 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_5323) > _5323:
                                mem[_5341 + _5323 + 32] = 0
                        if 0 == _4733:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if s > !mem[(32 * idx) + _2283]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _2283]
                            continue 
                        if _4733 < 1:
                            revert with 'NH{q', 17
                        if _4733 - 1 >= 36:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _2283] > !mem[(32 * _4733 - 1) + _2283]:
                            revert with 'NH{q', 17
                        if s > !(mem[(32 * idx) + _2283] + mem[(32 * _4733 - 1) + _2283]):
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _2283] + mem[(32 * _4733 - 1) + _2283]
                        continue 
                    mem[_3889 + ceil32(return_data.size) + _3962 + 32] = 0
                    _4744 = mem[_3889 + 96]
                    require mem[_3889 + 128] == bool(mem[_3889 + 128])
                    require mem[_3889 + 160] == bool(mem[_3889 + 160])
                    _4804 = mem[_3889 + 192]
                    require mem[_3889 + 192] <= test266151307()
                    require _3889 + mem[_3889 + 192] + 31 < _3889 + return_data.size
                    _4832 = mem[_3889 + mem[_3889 + 192]]
                    if mem[_3889 + mem[_3889 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _4853 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 192]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 192]])) + 1
                    mem[_4853] = _4832
                    require _4804 + _4832 + 32 <= return_data.size
                    t = 0
                    while t < _4832:
                        mem[t + _4853 + 32] = mem[t + _3889 + _4804 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_4832) <= _4832:
                        _5293 = mem[_3889 + 224]
                        require mem[_3889 + 224] <= test266151307()
                        require _3889 + mem[_3889 + 224] + 31 < _3889 + return_data.size
                        _5315 = mem[_3889 + mem[_3889 + 224]]
                        if mem[_3889 + mem[_3889 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _5333 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1
                        mem[_5333] = _5315
                        require _5293 + _5315 + 32 <= return_data.size
                        t = 0
                        while t < _5315:
                            mem[t + _5333 + 32] = mem[t + _3889 + _5293 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_5315) > _5315:
                            mem[_5333 + _5315 + 32] = 0
                    else:
                        mem[_4853 + _4832 + 32] = 0
                        _5304 = mem[_3889 + 224]
                        require mem[_3889 + 224] <= test266151307()
                        require _3889 + mem[_3889 + 224] + 31 < _3889 + return_data.size
                        _5324 = mem[_3889 + mem[_3889 + 224]]
                        if mem[_3889 + mem[_3889 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _5342 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_3889 + mem[_3889 + 224]])) + 1
                        mem[_5342] = _5324
                        require _5304 + _5324 + 32 <= return_data.size
                        t = 0
                        while t < _5324:
                            mem[t + _5342 + 32] = mem[t + _3889 + _5304 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_5324) > _5324:
                            mem[_5342 + _5324 + 32] = 0
                    if 0 == _4744:
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if s > !mem[(32 * idx) + _2283]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _2283]
                        continue 
                    if _4744 < 1:
                        revert with 'NH{q', 17
                    if _4744 - 1 >= 36:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + _2283] > !mem[(32 * _4744 - 1) + _2283]:
                        revert with 'NH{q', 17
                    if s > !(mem[(32 * idx) + _2283] + mem[(32 * _4744 - 1) + _2283]):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _2283] + mem[(32 * _4744 - 1) + _2283]
                    continue 
                idx = 0
                t = 0
                while idx < 36:
                    mem[mem[64]] = 0x335dd05f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = idx
                    require ext_code.size(0x67ae39a2ee91d7258a86cd901b17527e19e493b3)
                    staticcall 0x67ae39a2ee91d7258a86cd901b17527e19e493b3.skill_by_id(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4731 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    _4751 = mem[_4731 + 32]
                    require mem[_4731 + 32] <= test266151307()
                    require _4731 + mem[_4731 + 32] + 31 < _4731 + return_data.size
                    _4778 = mem[_4731 + mem[_4731 + 32]]
                    if mem[_4731 + mem[_4731 + 32]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4731 + mem[_4731 + 32]])) + 1 < 0 or _4731 + ceil32(return_data.size) + ceil32(ceil32(mem[_4731 + mem[_4731 + 32]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4731 + ceil32(return_data.size) + ceil32(ceil32(mem[_4731 + mem[_4731 + 32]])) + 1
                    mem[_4731 + ceil32(return_data.size)] = _4778
                    require _4751 + _4778 + 32 <= return_data.size
                    s = 0
                    while s < _4778:
                        mem[s + _4731 + ceil32(return_data.size) + 32] = mem[s + _4731 + _4751 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4778) <= _4778:
                        _5291 = mem[_4731 + 96]
                        require mem[_4731 + 128] == bool(mem[_4731 + 128])
                        require mem[_4731 + 160] == bool(mem[_4731 + 160])
                        _5340 = mem[_4731 + 192]
                        require mem[_4731 + 192] <= test266151307()
                        require _4731 + mem[_4731 + 192] + 31 < _4731 + return_data.size
                        _5346 = mem[_4731 + mem[_4731 + 192]]
                        if mem[_4731 + mem[_4731 + 192]] > test266151307():
                            revert with 'NH{q', 65
                        _5360 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 192]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 192]])) + 1
                        mem[_5360] = _5346
                        require _5340 + _5346 + 32 <= return_data.size
                        s = 0
                        while s < _5346:
                            mem[s + _5360 + 32] = mem[s + _4731 + _5340 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5346) <= _5346:
                            _5682 = mem[_4731 + 224]
                            require mem[_4731 + 224] <= test266151307()
                            require _4731 + mem[_4731 + 224] + 31 < _4731 + return_data.size
                            _5694 = mem[_4731 + mem[_4731 + 224]]
                            if mem[_4731 + mem[_4731 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _5746 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1
                            mem[_5746] = _5694
                            require _5682 + _5694 + 32 <= return_data.size
                            s = 0
                            while s < _5694:
                                mem[s + _5746 + 32] = mem[s + _4731 + _5682 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5694) > _5694:
                                mem[_5746 + _5694 + 32] = 0
                        else:
                            mem[_5360 + _5346 + 32] = 0
                            _5684 = mem[_4731 + 224]
                            require mem[_4731 + 224] <= test266151307()
                            require _4731 + mem[_4731 + 224] + 31 < _4731 + return_data.size
                            _5720 = mem[_4731 + mem[_4731 + 224]]
                            if mem[_4731 + mem[_4731 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _5764 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1
                            mem[_5764] = _5720
                            require _5684 + _5720 + 32 <= return_data.size
                            s = 0
                            while s < _5720:
                                mem[s + _5764 + 32] = mem[s + _4731 + _5684 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5720) > _5720:
                                mem[_5764 + _5720 + 32] = 0
                        if 0 == _5291:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if t > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            t = t + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]
                            continue 
                        if _5291 < 1:
                            revert with 'NH{q', 17
                        if _5291 - 1 >= 36:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !mem[(32 * _5291 - 1) + (2 * ceil32(return_data.size)) + 1280]:
                            revert with 'NH{q', 17
                        if t > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + mem[(32 * _5291 - 1) + (2 * ceil32(return_data.size)) + 1280]):
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        t = t + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + mem[(32 * _5291 - 1) + (2 * ceil32(return_data.size)) + 1280]
                        continue 
                    mem[_4731 + ceil32(return_data.size) + _4778 + 32] = 0
                    _5302 = mem[_4731 + 96]
                    require mem[_4731 + 128] == bool(mem[_4731 + 128])
                    require mem[_4731 + 160] == bool(mem[_4731 + 160])
                    _5345 = mem[_4731 + 192]
                    require mem[_4731 + 192] <= test266151307()
                    require _4731 + mem[_4731 + 192] + 31 < _4731 + return_data.size
                    _5351 = mem[_4731 + mem[_4731 + 192]]
                    if mem[_4731 + mem[_4731 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _5365 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 192]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 192]])) + 1
                    mem[_5365] = _5351
                    require _5345 + _5351 + 32 <= return_data.size
                    s = 0
                    while s < _5351:
                        mem[s + _5365 + 32] = mem[s + _4731 + _5345 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5351) <= _5351:
                        _5683 = mem[_4731 + 224]
                        require mem[_4731 + 224] <= test266151307()
                        require _4731 + mem[_4731 + 224] + 31 < _4731 + return_data.size
                        _5695 = mem[_4731 + mem[_4731 + 224]]
                        if mem[_4731 + mem[_4731 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _5747 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1
                        mem[_5747] = _5695
                        require _5683 + _5695 + 32 <= return_data.size
                        s = 0
                        while s < _5695:
                            mem[s + _5747 + 32] = mem[s + _4731 + _5683 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5695) > _5695:
                            mem[_5747 + _5695 + 32] = 0
                    else:
                        mem[_5365 + _5351 + 32] = 0
                        _5685 = mem[_4731 + 224]
                        require mem[_4731 + 224] <= test266151307()
                        require _4731 + mem[_4731 + 224] + 31 < _4731 + return_data.size
                        _5721 = mem[_4731 + mem[_4731 + 224]]
                        if mem[_4731 + mem[_4731 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _5765 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_4731 + mem[_4731 + 224]])) + 1
                        mem[_5765] = _5721
                        require _5685 + _5721 + 32 <= return_data.size
                        s = 0
                        while s < _5721:
                            mem[s + _5765 + 32] = mem[s + _4731 + _5685 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5721) > _5721:
                            mem[_5765 + _5721 + 32] = 0
                    if 0 == _5302:
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if t > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        t = t + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]
                        continue 
                    if _5302 < 1:
                        revert with 'NH{q', 17
                    if _5302 - 1 >= 36:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] > !mem[(32 * _5302 - 1) + (2 * ceil32(return_data.size)) + 1280]:
                        revert with 'NH{q', 17
                    if t > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + mem[(32 * _5302 - 1) + (2 * ceil32(return_data.size)) + 1280]):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t + mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] + mem[(32 * _5302 - 1) + (2 * ceil32(return_data.size)) + 1280]
                    continue 
                if t < s:
                    revert with 'NH{q', 17
                return (t - s)
            if unknown_0x13af4035(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x0152600c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if cd[36] >= sub_0152600c[address(cd[4])]:
                        revert with 'NH{q', 50
                    return sub_0152600c[address(cd[4])][cd[36]]
                if unknown_0x04d57eab(?????) == uint32(call.func_hash) >> 224:
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
                            revert with 0, 'HillBF: not owned'
                        require ext_code.size(sub_e4d07d70Address)
                        staticcall sub_e4d07d70Address.0x9a6b2087 with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _503 = mem[_494]
                        require mem[_494] == mem[_494 + 31 len 1]
                        if mem[_494 + 31 len 1] < 1:
                            revert with 'NH{q', 17
                        if uint8(mem[_494 + 31 len 1] - 1) >= 5:
                            revert with 'NH{q', 50
                        if sub_152a9f06[uint8(mem[_494 + 31 len 1] - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                            revert with 'NH{q', 17
                        if not sub_44754090[uint8(mem[_494 + 31 len 1] - 1)]:
                            revert with 'NH{q', 18
                        if uint8(mem[_494 + 31 len 1] - 1) >= 5:
                            revert with 'NH{q', 50
                        if sub_797c82a7[uint8(mem[_494 + 31 len 1] - 1)] < sub_152a9f06[uint8(mem[_494 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_494 + 31 len 1] - 1)]:
                            revert with 'NH{q', 17
                        sub_797c82a7[uint8(mem[_494 + 31 len 1] - 1)] -= sub_152a9f06[uint8(mem[_494 + 31 len 1] - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(mem[_494 + 31 len 1] - 1)]
                        if uint8(mem[_494 + 31 len 1] - 1) >= 5:
                            revert with 'NH{q', 50
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 14
                        sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(uint8(_503) - 1)]
                        call msg.sender with:
                           value sub_152a9f06[uint8(uint8(_503) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(_503) - 1)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                require unknown_0x06f5d09d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == uint8(cd[4])
                if 1 > uint8(cd[4]):
                    revert with 0, 'HillBF: index'
                if uint8(cd[4]) > 5:
                    revert with 0, 'HillBF: index'
                if uint8(cd[4]) < 1:
                    revert with 'NH{q', 17
                if uint8(uint8(cd[4]) - 1) >= 5:
                    revert with 'NH{q', 50
                mem[64] = 1280
                mem[128] = stor22[uint8(uint8(cd[4]) - 1)]
                idx = 128
                s = (36 * uint8(uint8(cd[4]) - 1)) + 22
                while 1280 > idx + 32:
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
                    _1418 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    _1427 = mem[_1418 + 32]
                    require mem[_1418 + 32] <= test266151307()
                    require _1418 + mem[_1418 + 32] + 31 < _1418 + return_data.size
                    _1445 = mem[_1418 + mem[_1418 + 32]]
                    if mem[_1418 + mem[_1418 + 32]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_1418 + mem[_1418 + 32]])) + 1 < 0 or _1418 + ceil32(return_data.size) + ceil32(ceil32(mem[_1418 + mem[_1418 + 32]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1418 + ceil32(return_data.size) + ceil32(ceil32(mem[_1418 + mem[_1418 + 32]])) + 1
                    mem[_1418 + ceil32(return_data.size)] = _1445
                    require _1427 + _1445 + 32 <= return_data.size
                    t = 0
                    while t < _1445:
                        mem[t + _1418 + ceil32(return_data.size) + 32] = mem[t + _1418 + _1427 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1445) <= _1445:
                        _2286 = mem[_1418 + 96]
                        require mem[_1418 + 128] == bool(mem[_1418 + 128])
                        require mem[_1418 + 160] == bool(mem[_1418 + 160])
                        _2329 = mem[_1418 + 192]
                        require mem[_1418 + 192] <= test266151307()
                        require _1418 + mem[_1418 + 192] + 31 < _1418 + return_data.size
                        _2346 = mem[_1418 + mem[_1418 + 192]]
                        if mem[_1418 + mem[_1418 + 192]] > test266151307():
                            revert with 'NH{q', 65
                        _2357 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 192]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 192]])) + 1
                        mem[_2357] = _2346
                        require _2329 + _2346 + 32 <= return_data.size
                        t = 0
                        while t < _2346:
                            mem[t + _2357 + 32] = mem[t + _1418 + _2329 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_2346) <= _2346:
                            _2989 = mem[_1418 + 224]
                            require mem[_1418 + 224] <= test266151307()
                            require _1418 + mem[_1418 + 224] + 31 < _1418 + return_data.size
                            _3027 = mem[_1418 + mem[_1418 + 224]]
                            if mem[_1418 + mem[_1418 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _3044 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1
                            mem[_3044] = _3027
                            require _2989 + _3027 + 32 <= return_data.size
                            t = 0
                            while t < _3027:
                                mem[t + _3044 + 32] = mem[t + _1418 + _2989 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_3027) > _3027:
                                mem[_3044 + _3027 + 32] = 0
                        else:
                            mem[_2357 + _2346 + 32] = 0
                            _3001 = mem[_1418 + 224]
                            require mem[_1418 + 224] <= test266151307()
                            require _1418 + mem[_1418 + 224] + 31 < _1418 + return_data.size
                            _3037 = mem[_1418 + mem[_1418 + 224]]
                            if mem[_1418 + mem[_1418 + 224]] > test266151307():
                                revert with 'NH{q', 65
                            _3057 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1
                            mem[_3057] = _3037
                            require _3001 + _3037 + 32 <= return_data.size
                            t = 0
                            while t < _3037:
                                mem[t + _3057 + 32] = mem[t + _1418 + _3001 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_3037) > _3037:
                                mem[_3057 + _3037 + 32] = 0
                        if 0 == _2286:
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if s > !mem[(32 * idx) + 128]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + 128]
                            continue 
                        if _2286 < 1:
                            revert with 'NH{q', 17
                        if _2286 - 1 >= 36:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 128] > !mem[(32 * _2286 - 1) + 128]:
                            revert with 'NH{q', 17
                        if s > !(mem[(32 * idx) + 128] + mem[(32 * _2286 - 1) + 128]):
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + 128] + mem[(32 * _2286 - 1) + 128]
                        continue 
                    mem[_1418 + ceil32(return_data.size) + _1445 + 32] = 0
                    _2296 = mem[_1418 + 96]
                    require mem[_1418 + 128] == bool(mem[_1418 + 128])
                    require mem[_1418 + 160] == bool(mem[_1418 + 160])
                    _2337 = mem[_1418 + 192]
                    require mem[_1418 + 192] <= test266151307()
                    require _1418 + mem[_1418 + 192] + 31 < _1418 + return_data.size
                    _2352 = mem[_1418 + mem[_1418 + 192]]
                    if mem[_1418 + mem[_1418 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _2364 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 192]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 192]])) + 1
                    mem[_2364] = _2352
                    require _2337 + _2352 + 32 <= return_data.size
                    t = 0
                    while t < _2352:
                        mem[t + _2364 + 32] = mem[t + _1418 + _2337 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2352) <= _2352:
                        _2990 = mem[_1418 + 224]
                        require mem[_1418 + 224] <= test266151307()
                        require _1418 + mem[_1418 + 224] + 31 < _1418 + return_data.size
                        _3028 = mem[_1418 + mem[_1418 + 224]]
                        if mem[_1418 + mem[_1418 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _3045 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1
                        mem[_3045] = _3028
                        require _2990 + _3028 + 32 <= return_data.size
                        t = 0
                        while t < _3028:
                            mem[t + _3045 + 32] = mem[t + _1418 + _2990 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3028) > _3028:
                            mem[_3045 + _3028 + 32] = 0
                    else:
                        mem[_2364 + _2352 + 32] = 0
                        _3002 = mem[_1418 + 224]
                        require mem[_1418 + 224] <= test266151307()
                        require _1418 + mem[_1418 + 224] + 31 < _1418 + return_data.size
                        _3038 = mem[_1418 + mem[_1418 + 224]]
                        if mem[_1418 + mem[_1418 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _3058 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1418 + mem[_1418 + 224]])) + 1
                        mem[_3058] = _3038
                        require _3002 + _3038 + 32 <= return_data.size
                        t = 0
                        while t < _3038:
                            mem[t + _3058 + 32] = mem[t + _1418 + _3002 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3038) > _3038:
                            mem[_3058 + _3038 + 32] = 0
                    if 0 == _2296:
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if s > !mem[(32 * idx) + 128]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + 128]
                        continue 
                    if _2296 < 1:
                        revert with 'NH{q', 17
                    if _2296 - 1 >= 36:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + 128] > !mem[(32 * _2296 - 1) + 128]:
                        revert with 'NH{q', 17
                    if s > !(mem[(32 * idx) + 128] + mem[(32 * _2296 - 1) + 128]):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 128] + mem[(32 * _2296 - 1) + 128]
                    continue 
                return s
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Factions: owner'
                owner = address(cd[4])
            else:
                if unknown_0x152a9f06(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] < 5
                    return sub_152a9f06[cd[4]]
                if uint32(call.func_hash) >> 224 != unknown_0x3704483b(?????):
                    require unknown_0x44754090(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] < 5
                    return sub_44754090[cd[4]]
                require calldata.size - 4 >= 32
                require ext_code.size(sub_e4d07d70Address)
                staticcall sub_e4d07d70Address.0x9a6b2087 with:
                        gas gas_remaining wei
                       args cd[4]
                mem[128 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[32] <= 0:
                    revert with 0, 'HillBF: enrolled'
                if msg.value < stor1.length:
                    revert with 0, 'HillBF: tribute'
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
                sub_77e840ed[cd[4]] = sub_152a9f06[uint8(ext_call.return_data[31 len 1] - 1)]
                mem[0] = cd[4]
                mem[32] = sha3(msg.sender, 15) + 1
                if sub_0152600c[msg.sender][1][cd[4]]:
                    require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
                    staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[ceil32(return_data.size) + 128 len 1152] = ext_call.return_data[0 len 1152]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 1152
                    require ceil32(return_data.size) + 159 < ceil32(return_data.size) + return_data.size + 128
                    if not bool((2 * ceil32(return_data.size)) + 1280 <= test266151307()):
                        revert with 'NH{q', 65
                    require return_data.size >= 1152
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + 128
                    idx = 0
                    while idx < 36:
                        require mem[s] == mem[s + 31 len 1]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 1280 len 1152] = call.data[calldata.size len 1152]
                    mem[(2 * ceil32(return_data.size)) + 2436] = cd[4]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[(2 * ceil32(return_data.size)) + 2432] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[(4 * ceil32(return_data.size)) + 2432 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 2432
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
                        _1440 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        _1448 = mem[_1440 + 32]
                        require mem[_1440 + 32] <= test266151307()
                        require _1440 + mem[_1440 + 32] + 31 < _1440 + return_data.size
                        _1463 = mem[_1440 + mem[_1440 + 32]]
                        if mem[_1440 + mem[_1440 + 32]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_1440 + mem[_1440 + 32]])) + 1 < 0 or _1440 + ceil32(return_data.size) + ceil32(ceil32(mem[_1440 + mem[_1440 + 32]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _1440 + ceil32(return_data.size) + ceil32(ceil32(mem[_1440 + mem[_1440 + 32]])) + 1
                        mem[_1440 + ceil32(return_data.size)] = _1463
                        require _1448 + _1463 + 32 <= return_data.size
                        s = 0
                        while s < _1463:
                            mem[s + _1440 + ceil32(return_data.size) + 32] = mem[s + _1440 + _1448 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1463) <= _1463:
                            _2287 = mem[_1440 + 64]
                            require mem[_1440 + 128] == bool(mem[_1440 + 128])
                            require mem[_1440 + 160] == bool(mem[_1440 + 160])
                            _2330 = mem[_1440 + 192]
                            require mem[_1440 + 192] <= test266151307()
                            require _1440 + mem[_1440 + 192] + 31 < _1440 + return_data.size
                            _2347 = mem[_1440 + mem[_1440 + 192]]
                            if mem[_1440 + mem[_1440 + 192]] > test266151307():
                                revert with 'NH{q', 65
                            _2358 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 192]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 192]])) + 1
                            mem[_2358] = _2347
                            require _2330 + _2347 + 32 <= return_data.size
                            s = 0
                            while s < _2347:
                                mem[s + _2358 + 32] = mem[s + _1440 + _2330 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2347) <= _2347:
                                _2992 = mem[_1440 + 224]
                                require mem[_1440 + 224] <= test266151307()
                                require _1440 + mem[_1440 + 224] + 31 < _1440 + return_data.size
                                _3029 = mem[_1440 + mem[_1440 + 224]]
                                if mem[_1440 + mem[_1440 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _3046 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1
                                mem[_3046] = _3029
                                require _2992 + _3029 + 32 <= return_data.size
                                s = 0
                                while s < _3029:
                                    mem[s + _3046 + 32] = mem[s + _1440 + _2992 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3029) > _3029:
                                    mem[_3046 + _3029 + 32] = 0
                            else:
                                mem[_2358 + _2347 + 32] = 0
                                _3003 = mem[_1440 + 224]
                                require mem[_1440 + 224] <= test266151307()
                                require _1440 + mem[_1440 + 224] + 31 < _1440 + return_data.size
                                _3039 = mem[_1440 + mem[_1440 + 224]]
                                if mem[_1440 + mem[_1440 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _3059 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1
                                mem[_3059] = _3039
                                require _3003 + _3039 + 32 <= return_data.size
                                s = 0
                                while s < _3039:
                                    mem[s + _3059 + 32] = mem[s + _1440 + _3003 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3039) > _3039:
                                    mem[_3059 + _3039 + 32] = 0
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if 1 == _2287:
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                            else:
                                if 2 == _2287:
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                                else:
                                    if 3 == _2287:
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                                    else:
                                        if 4 == _2287:
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                                revert with 'NH{q', 17
                                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                        else:
                                            if 5 == _2287:
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                    revert with 'NH{q', 50
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                                    revert with 'NH{q', 17
                                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                            else:
                                                if _2287 != 6:
                                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                        revert with 'NH{q', 50
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]:
                                                        revert with 'NH{q', 17
                                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]
                                                else:
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                        revert with 'NH{q', 17
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                        revert with 'NH{q', 50
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                                        revert with 'NH{q', 17
                                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                        else:
                            mem[_1440 + ceil32(return_data.size) + _1463 + 32] = 0
                            _2298 = mem[_1440 + 64]
                            require mem[_1440 + 128] == bool(mem[_1440 + 128])
                            require mem[_1440 + 160] == bool(mem[_1440 + 160])
                            _2338 = mem[_1440 + 192]
                            require mem[_1440 + 192] <= test266151307()
                            require _1440 + mem[_1440 + 192] + 31 < _1440 + return_data.size
                            _2353 = mem[_1440 + mem[_1440 + 192]]
                            if mem[_1440 + mem[_1440 + 192]] > test266151307():
                                revert with 'NH{q', 65
                            _2365 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 192]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 192]])) + 1
                            mem[_2365] = _2353
                            require _2338 + _2353 + 32 <= return_data.size
                            s = 0
                            while s < _2353:
                                mem[s + _2365 + 32] = mem[s + _1440 + _2338 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2353) <= _2353:
                                _2993 = mem[_1440 + 224]
                                require mem[_1440 + 224] <= test266151307()
                                require _1440 + mem[_1440 + 224] + 31 < _1440 + return_data.size
                                _3030 = mem[_1440 + mem[_1440 + 224]]
                                if mem[_1440 + mem[_1440 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _3047 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1
                                mem[_3047] = _3030
                                require _2993 + _3030 + 32 <= return_data.size
                                s = 0
                                while s < _3030:
                                    mem[s + _3047 + 32] = mem[s + _1440 + _2993 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3030) > _3030:
                                    mem[_3047 + _3030 + 32] = 0
                            else:
                                mem[_2365 + _2353 + 32] = 0
                                _3004 = mem[_1440 + 224]
                                require mem[_1440 + 224] <= test266151307()
                                require _1440 + mem[_1440 + 224] + 31 < _1440 + return_data.size
                                _3040 = mem[_1440 + mem[_1440 + 224]]
                                if mem[_1440 + mem[_1440 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _3060 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_1440 + mem[_1440 + 224]])) + 1
                                mem[_3060] = _3040
                                require _3004 + _3040 + 32 <= return_data.size
                                s = 0
                                while s < _3040:
                                    mem[s + _3060 + 32] = mem[s + _1440 + _3004 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3040) > _3040:
                                    mem[_3060 + _3040 + 32] = 0
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if 1 == _2298:
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                            else:
                                if 2 == _2298:
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                                else:
                                    if 3 == _2298:
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                                    else:
                                        if 4 == _2298:
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                                revert with 'NH{q', 17
                                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                        else:
                                            if 5 == _2298:
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                    revert with 'NH{q', 50
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                                    revert with 'NH{q', 17
                                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                            else:
                                                if _2298 != 6:
                                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                        revert with 'NH{q', 50
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]:
                                                        revert with 'NH{q', 17
                                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]
                                                else:
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                        revert with 'NH{q', 17
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                        revert with 'NH{q', 50
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                                        revert with 'NH{q', 17
                                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    sub_0152600c[msg.sender]++
                    sub_0152600c[msg.sender][sub_0152600c[msg.sender]] = cd[4]
                    mem[0] = cd[4]
                    mem[32] = sha3(msg.sender, 15) + 1
                    sub_0152600c[msg.sender][1][cd[4]] = sub_0152600c[msg.sender]
                    require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
                    staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[ceil32(return_data.size) + 128 len 1152] = ext_call.return_data[0 len 1152]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 1152
                    require ceil32(return_data.size) + 159 < ceil32(return_data.size) + return_data.size + 128
                    if not bool((2 * ceil32(return_data.size)) + 1280 <= test266151307()):
                        revert with 'NH{q', 65
                    require return_data.size >= 1152
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + 128
                    idx = 0
                    while idx < 36:
                        require mem[s] == mem[s + 31 len 1]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 1280 len 1152] = call.data[calldata.size len 1152]
                    mem[(2 * ceil32(return_data.size)) + 2436] = cd[4]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[(2 * ceil32(return_data.size)) + 2432] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[4]
                    mem[(4 * ceil32(return_data.size)) + 2432 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 2432
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
                        _1441 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        _1450 = mem[_1441 + 32]
                        require mem[_1441 + 32] <= test266151307()
                        require _1441 + mem[_1441 + 32] + 31 < _1441 + return_data.size
                        _1465 = mem[_1441 + mem[_1441 + 32]]
                        if mem[_1441 + mem[_1441 + 32]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_1441 + mem[_1441 + 32]])) + 1 < 0 or _1441 + ceil32(return_data.size) + ceil32(ceil32(mem[_1441 + mem[_1441 + 32]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _1441 + ceil32(return_data.size) + ceil32(ceil32(mem[_1441 + mem[_1441 + 32]])) + 1
                        mem[_1441 + ceil32(return_data.size)] = _1465
                        require _1450 + _1465 + 32 <= return_data.size
                        s = 0
                        while s < _1465:
                            mem[s + _1441 + ceil32(return_data.size) + 32] = mem[s + _1441 + _1450 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1465) <= _1465:
                            _2289 = mem[_1441 + 64]
                            require mem[_1441 + 128] == bool(mem[_1441 + 128])
                            require mem[_1441 + 160] == bool(mem[_1441 + 160])
                            _2331 = mem[_1441 + 192]
                            require mem[_1441 + 192] <= test266151307()
                            require _1441 + mem[_1441 + 192] + 31 < _1441 + return_data.size
                            _2348 = mem[_1441 + mem[_1441 + 192]]
                            if mem[_1441 + mem[_1441 + 192]] > test266151307():
                                revert with 'NH{q', 65
                            _2359 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 192]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 192]])) + 1
                            mem[_2359] = _2348
                            require _2331 + _2348 + 32 <= return_data.size
                            s = 0
                            while s < _2348:
                                mem[s + _2359 + 32] = mem[s + _1441 + _2331 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2348) <= _2348:
                                _2995 = mem[_1441 + 224]
                                require mem[_1441 + 224] <= test266151307()
                                require _1441 + mem[_1441 + 224] + 31 < _1441 + return_data.size
                                _3031 = mem[_1441 + mem[_1441 + 224]]
                                if mem[_1441 + mem[_1441 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _3048 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1
                                mem[_3048] = _3031
                                require _2995 + _3031 + 32 <= return_data.size
                                s = 0
                                while s < _3031:
                                    mem[s + _3048 + 32] = mem[s + _1441 + _2995 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3031) > _3031:
                                    mem[_3048 + _3031 + 32] = 0
                            else:
                                mem[_2359 + _2348 + 32] = 0
                                _3005 = mem[_1441 + 224]
                                require mem[_1441 + 224] <= test266151307()
                                require _1441 + mem[_1441 + 224] + 31 < _1441 + return_data.size
                                _3041 = mem[_1441 + mem[_1441 + 224]]
                                if mem[_1441 + mem[_1441 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _3061 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1
                                mem[_3061] = _3041
                                require _3005 + _3041 + 32 <= return_data.size
                                s = 0
                                while s < _3041:
                                    mem[s + _3061 + 32] = mem[s + _1441 + _3005 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3041) > _3041:
                                    mem[_3061 + _3041 + 32] = 0
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if 1 == _2289:
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                            else:
                                if 2 == _2289:
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                                else:
                                    if 3 == _2289:
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                                    else:
                                        if 4 == _2289:
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                                revert with 'NH{q', 17
                                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                        else:
                                            if 5 == _2289:
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                    revert with 'NH{q', 50
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                                    revert with 'NH{q', 17
                                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                            else:
                                                if _2289 != 6:
                                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                        revert with 'NH{q', 50
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]:
                                                        revert with 'NH{q', 17
                                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]
                                                else:
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                        revert with 'NH{q', 17
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                        revert with 'NH{q', 50
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                                        revert with 'NH{q', 17
                                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                        else:
                            mem[_1441 + ceil32(return_data.size) + _1465 + 32] = 0
                            _2301 = mem[_1441 + 64]
                            require mem[_1441 + 128] == bool(mem[_1441 + 128])
                            require mem[_1441 + 160] == bool(mem[_1441 + 160])
                            _2339 = mem[_1441 + 192]
                            require mem[_1441 + 192] <= test266151307()
                            require _1441 + mem[_1441 + 192] + 31 < _1441 + return_data.size
                            _2354 = mem[_1441 + mem[_1441 + 192]]
                            if mem[_1441 + mem[_1441 + 192]] > test266151307():
                                revert with 'NH{q', 65
                            _2366 = mem[64]
                            if mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 192]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 192]])) + 1
                            mem[_2366] = _2354
                            require _2339 + _2354 + 32 <= return_data.size
                            s = 0
                            while s < _2354:
                                mem[s + _2366 + 32] = mem[s + _1441 + _2339 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2354) <= _2354:
                                _2996 = mem[_1441 + 224]
                                require mem[_1441 + 224] <= test266151307()
                                require _1441 + mem[_1441 + 224] + 31 < _1441 + return_data.size
                                _3032 = mem[_1441 + mem[_1441 + 224]]
                                if mem[_1441 + mem[_1441 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _3049 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1
                                mem[_3049] = _3032
                                require _2996 + _3032 + 32 <= return_data.size
                                s = 0
                                while s < _3032:
                                    mem[s + _3049 + 32] = mem[s + _1441 + _2996 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3032) > _3032:
                                    mem[_3049 + _3032 + 32] = 0
                            else:
                                mem[_2366 + _2354 + 32] = 0
                                _3006 = mem[_1441 + 224]
                                require mem[_1441 + 224] <= test266151307()
                                require _1441 + mem[_1441 + 224] + 31 < _1441 + return_data.size
                                _3042 = mem[_1441 + mem[_1441 + 224]]
                                if mem[_1441 + mem[_1441 + 224]] > test266151307():
                                    revert with 'NH{q', 65
                                _3062 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[_1441 + mem[_1441 + 224]])) + 1
                                mem[_3062] = _3042
                                require _3006 + _3042 + 32 <= return_data.size
                                s = 0
                                while s < _3042:
                                    mem[s + _3062 + 32] = mem[s + _1441 + _3006 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3042) > _3042:
                                    mem[_3062 + _3042 + 32] = 0
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if 1 == _2301:
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                            else:
                                if 2 == _2301:
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])):
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                                else:
                                    if 3 == _2301:
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                                        if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])):
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                                    else:
                                        if 4 == _2301:
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                            if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                revert with 'NH{q', 50
                                            if idx >= 36:
                                                revert with 'NH{q', 50
                                            if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])):
                                                revert with 'NH{q', 17
                                            stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                        else:
                                            if 5 == _2301:
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                    revert with 'NH{q', 17
                                                if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                                if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                    revert with 'NH{q', 50
                                                if idx >= 36:
                                                    revert with 'NH{q', 50
                                                if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])):
                                                    revert with 'NH{q', 17
                                                stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                            else:
                                                if _2301 != 6:
                                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                        revert with 'NH{q', 50
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]:
                                                        revert with 'NH{q', 17
                                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280]
                                                else:
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1]:
                                                        revert with 'NH{q', 17
                                                    if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 1280] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                                    if uint8(uint8(ext_call.return_data[0]) - 1) >= 5:
                                                        revert with 'NH{q', 50
                                                    if idx >= 36:
                                                        revert with 'NH{q', 50
                                                    if stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] > !(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])):
                                                        revert with 'NH{q', 17
                                                    stor[idx + (36 * uint8(uint8(ext_call.return_data[0]) - 1)) + 22] += mem[(32 * idx) + (2 * ceil32(return_data.size)) + 159 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                s = 0
                idx = (2 * ceil32(return_data.size)) + 1280
                while (2 * ceil32(return_data.size)) + 2432 > idx:
                    stor204[cd[4]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 36
                while 36 > idx:
                    stor204[cd[4]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
