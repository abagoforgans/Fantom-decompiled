contract main {




// =====================  Runtime code  =====================


const sub_7287b627(?) = 0x6292f3fb422e393342f257857e744d43b1ae7e70

const sub_b2d946bc(?) = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb


address owner;
array of uint256 stor1;
uint256 sub_2ba3cd52;
uint256 sub_4bf9e197;
array of uint256 sub_152a9f06;
array of uint256 sub_797c82a7;
mapping of struct sub_9a6b2087;
mapping of uint256 sub_77e840ed;
array of uint256 sub_0152600c;
mapping of uint8 stor17;
array of uint256 sub_44754090;
uint256 sub_3309ba44;
array of struct stor204;

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

function sub_2ba3cd52(?) {
    return sub_2ba3cd52
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

function sub_4bf9e197(?) {
    return sub_4bf9e197
}

function sub_4c0d9801(?) {
    return stor1.length
}

function sub_690aba52(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
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
    return stor[arg2 + (36 * arg1) + 23]
}

function owner() {
    return owner
}

function sub_9a6b2087(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint8(sub_9a6b2087[arg1].field_0), sub_9a6b2087[arg1].field_256
}

function sub_fc23c5ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0152600c[address(arg1)]
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

function sub_25b16af0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    sub_4bf9e197 = arg1
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
    sub_2ba3cd52 = arg1
}

function sub_4f15ce37(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return 'The Harpers', 0
    if arg1 != 2:
        if arg1 == 3:
            return 'The Emeral Enclave', 0
        if arg1 == 4:
            return 'The Loard's Alliance', 0
        if arg1 != 5:
            return 'None', 0
    return 'The Order of the Gauntlet', 0
}

function sub_330ab39a(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    if 1 > uint8(arg2):
        revert with 0, 'Factions: bad index'
    if uint8(arg2) > 5:
        revert with 0, 'Factions: bad index'
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.character_created(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Factions: summoner does not exist'
    if sub_9a6b2087[arg1].field_256 > -sub_4bf9e197 - 1:
        revert with 'NH{q', 17
    if sub_9a6b2087[arg1].field_256 + sub_4bf9e197 >= block.timestamp:
        revert with 0, 'Factions: changing too fast'
    uint8(sub_9a6b2087[arg1].field_0) = uint8(arg2)
    sub_9a6b2087[arg1].field_256 = block.timestamp
}

function sub_8c14aa76(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_0152600c[address(msg.sender)][1][arg1]:
        revert with 0, 'Factions: summoner not owned'
    if uint8(sub_9a6b2087[arg1].field_0) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
        revert with 'NH{q', 50
    if sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)] < sub_77e840ed[arg1]:
        revert with 'NH{q', 17
    if not sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]:
        revert with 'NH{q', 18
    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
        revert with 'NH{q', 50
    if sub_797c82a7[uint8(uint8(stor14[arg1].field_0) - 1)] < sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]:
        revert with 'NH{q', 17
    sub_797c82a7[uint8(uint8(stor14[arg1].field_0) - 1)] -= sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]
    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
        revert with 'NH{q', 50
    sub_77e840ed[arg1] = sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)]
    call msg.sender with:
       value sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04d57eab(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Factions: summoner not owned'
        if uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) < 1:
            revert with 'NH{q', 17
        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        if sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 'NH{q', 17
        if not sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
            revert with 'NH{q', 18
        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        if sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] < sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
            revert with 'NH{q', 17
        sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] -= sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 15
        sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
        call msg.sender with:
           value sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] wei
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
    if uint8(sub_9a6b2087[arg1].field_0) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
        revert with 'NH{q', 50
    if not sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]:
        revert with 'NH{q', 17
    sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]--
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
    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
        revert with 'NH{q', 50
    if sub_77e840ed[arg1] != sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)]:
        if not sub_0152600c[address(msg.sender)][1][arg1]:
            revert with 0, 'Factions: summoner not owned'
        if uint8(sub_9a6b2087[arg1].field_0) < 1:
            revert with 'NH{q', 17
        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        if sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)] < sub_77e840ed[arg1]:
            revert with 'NH{q', 17
        if not sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]:
            revert with 'NH{q', 18
        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        if sub_797c82a7[uint8(uint8(stor14[arg1].field_0) - 1)] < sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]:
            revert with 'NH{q', 17
        sub_797c82a7[uint8(uint8(stor14[arg1].field_0) - 1)] -= sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]
        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        sub_77e840ed[arg1] = sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)]
        call msg.sender with:
           value sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)] - sub_77e840ed[arg1] / sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[96] = stor204[arg1].field_0
    idx = 96
    s = 0
    while 1248 > idx + 32:
        mem[idx + 32] = stor204[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 0
    while idx < 36:
        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        if idx >= 36:
            revert with 'NH{q', 50
        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] < mem[(32 * idx) + 96]:
            revert with 'NH{q', 17
        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] -= mem[(32 * idx) + 96]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_06f5d09d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
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
        _45 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_45] == mem[_45]
        _47 = mem[_45 + 32]
        require mem[_45 + 32] <= test266151307()
        require _45 + mem[_45 + 32] + 31 < _45 + return_data.size
        _48 = mem[_45 + mem[_45 + 32]]
        if mem[_45 + mem[_45 + 32]] > test266151307():
            revert with 'NH{q', 65
        if _45 + ceil32(return_data.size) + ceil32(ceil32(mem[_45 + mem[_45 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_45 + mem[_45 + 32]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _45 + ceil32(return_data.size) + ceil32(ceil32(mem[_45 + mem[_45 + 32]])) + 1
        mem[_45 + ceil32(return_data.size)] = _48
        require _47 + _48 + 32 <= return_data.size
        t = 0
        while t < _48:
            mem[_45 + ceil32(return_data.size) + t + 32] = mem[_45 + _47 + t + 32]
            t = t + 32
            continue 
        if ceil32(_48) <= _48:
            require mem[_45 + 64] == mem[_45 + 64]
            _86 = mem[_45 + 96]
            require mem[_45 + 96] == mem[_45 + 96]
            require mem[_45 + 128] == bool(mem[_45 + 128])
            require mem[_45 + 160] == bool(mem[_45 + 160])
            _92 = mem[_45 + 192]
            require mem[_45 + 192] <= test266151307()
            require _45 + mem[_45 + 192] + 31 < _45 + return_data.size
            _94 = mem[_45 + mem[_45 + 192]]
            if mem[_45 + mem[_45 + 192]] > test266151307():
                revert with 'NH{q', 65
            _96 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 192]])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 192]])) + 1
            mem[_96] = _94
            require _92 + _94 + 32 <= return_data.size
            t = 0
            while t < _94:
                mem[_96 + t + 32] = mem[_45 + _92 + t + 32]
                t = t + 32
                continue 
            if ceil32(_94) <= _94:
                _118 = mem[_45 + 224]
                require mem[_45 + 224] <= test266151307()
                require _45 + mem[_45 + 224] + 31 < _45 + return_data.size
                _122 = mem[_45 + mem[_45 + 224]]
                if mem[_45 + mem[_45 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _126 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1
                mem[_126] = _122
                require _118 + _122 + 32 <= return_data.size
                t = 0
                while t < _122:
                    mem[_126 + t + 32] = mem[_45 + _118 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_122) > _122:
                    mem[_126 + _122 + 32] = 0
            else:
                mem[_96 + _94 + 32] = 0
                _120 = mem[_45 + 224]
                require mem[_45 + 224] <= test266151307()
                require _45 + mem[_45 + 224] + 31 < _45 + return_data.size
                _124 = mem[_45 + mem[_45 + 224]]
                if mem[_45 + mem[_45 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _128 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1
                mem[_128] = _124
                require _120 + _124 + 32 <= return_data.size
                t = 0
                while t < _124:
                    mem[_128 + t + 32] = mem[_45 + _120 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_124) > _124:
                    mem[_128 + _124 + 32] = 0
            if uint8(arg1) >= 5:
                revert with 'NH{q', 50
            if not _86:
                if idx >= 36:
                    revert with 'NH{q', 50
                if s > -stor[idx + (36 * uint8(arg1)) + 23] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor[idx + (36 * uint8(arg1)) + 23]
                continue 
            if _86 < 1:
                revert with 'NH{q', 17
            if _86 - 1 >= 36:
                revert with 'NH{q', 50
            if uint8(arg1) >= 5:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if stor[idx + (36 * uint8(arg1)) + 23] > -stor[_86 + (36 * uint8(arg1)) + 22] - 1:
                revert with 'NH{q', 17
            if s > -stor[idx + (36 * uint8(arg1)) + 23] + -stor[_86 + (36 * uint8(arg1)) + 22] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + stor[idx + (36 * uint8(arg1)) + 23] + stor[_86 + (36 * uint8(arg1)) + 22]
            continue 
        mem[_45 + ceil32(return_data.size) + _48 + 32] = 0
        require mem[_45 + 64] == mem[_45 + 64]
        _87 = mem[_45 + 96]
        require mem[_45 + 96] == mem[_45 + 96]
        require mem[_45 + 128] == bool(mem[_45 + 128])
        require mem[_45 + 160] == bool(mem[_45 + 160])
        _93 = mem[_45 + 192]
        require mem[_45 + 192] <= test266151307()
        require _45 + mem[_45 + 192] + 31 < _45 + return_data.size
        _95 = mem[_45 + mem[_45 + 192]]
        if mem[_45 + mem[_45 + 192]] > test266151307():
            revert with 'NH{q', 65
        _97 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 192]])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 192]])) + 1
        mem[_97] = _95
        require _93 + _95 + 32 <= return_data.size
        t = 0
        while t < _95:
            mem[_97 + t + 32] = mem[_45 + _93 + t + 32]
            t = t + 32
            continue 
        if ceil32(_95) <= _95:
            _119 = mem[_45 + 224]
            require mem[_45 + 224] <= test266151307()
            require _45 + mem[_45 + 224] + 31 < _45 + return_data.size
            _123 = mem[_45 + mem[_45 + 224]]
            if mem[_45 + mem[_45 + 224]] > test266151307():
                revert with 'NH{q', 65
            _127 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1
            mem[_127] = _123
            require _119 + _123 + 32 <= return_data.size
            t = 0
            while t < _123:
                mem[_127 + t + 32] = mem[_45 + _119 + t + 32]
                t = t + 32
                continue 
            if ceil32(_123) > _123:
                mem[_127 + _123 + 32] = 0
        else:
            mem[_97 + _95 + 32] = 0
            _121 = mem[_45 + 224]
            require mem[_45 + 224] <= test266151307()
            require _45 + mem[_45 + 224] + 31 < _45 + return_data.size
            _125 = mem[_45 + mem[_45 + 224]]
            if mem[_45 + mem[_45 + 224]] > test266151307():
                revert with 'NH{q', 65
            _129 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_45 + mem[_45 + 224]])) + 1
            mem[_129] = _125
            require _121 + _125 + 32 <= return_data.size
            t = 0
            while t < _125:
                mem[_129 + t + 32] = mem[_45 + _121 + t + 32]
                t = t + 32
                continue 
            if ceil32(_125) > _125:
                mem[_129 + _125 + 32] = 0
        if uint8(arg1) >= 5:
            revert with 'NH{q', 50
        if not _87:
            if idx >= 36:
                revert with 'NH{q', 50
            if s > -stor[idx + (36 * uint8(arg1)) + 23] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + stor[idx + (36 * uint8(arg1)) + 23]
            continue 
        if _87 < 1:
            revert with 'NH{q', 17
        if _87 - 1 >= 36:
            revert with 'NH{q', 50
        if uint8(arg1) >= 5:
            revert with 'NH{q', 50
        if idx >= 36:
            revert with 'NH{q', 50
        if stor[idx + (36 * uint8(arg1)) + 23] > -stor[_87 + (36 * uint8(arg1)) + 22] - 1:
            revert with 'NH{q', 17
        if s > -stor[idx + (36 * uint8(arg1)) + 23] + -stor[_87 + (36 * uint8(arg1)) + 22] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + stor[idx + (36 * uint8(arg1)) + 23] + stor[_87 + (36 * uint8(arg1)) + 22]
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
    if uint8(var26001) < 5:
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
            _125 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_125] == mem[_125]
            _127 = mem[_125 + 32]
            require mem[_125 + 32] <= test266151307()
            require _125 + mem[_125 + 32] + 31 < _125 + return_data.size
            _128 = mem[_125 + mem[_125 + 32]]
            if mem[_125 + mem[_125 + 32]] > test266151307():
                revert with 'NH{q', 65
            if _125 + ceil32(return_data.size) + ceil32(ceil32(mem[_125 + mem[_125 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_125 + mem[_125 + 32]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _125 + ceil32(return_data.size) + ceil32(ceil32(mem[_125 + mem[_125 + 32]])) + 1
            mem[_125 + ceil32(return_data.size)] = _128
            require _127 + _128 + 32 <= return_data.size
            t = 0
            while t < _128:
                mem[_125 + ceil32(return_data.size) + t + 32] = mem[_125 + _127 + t + 32]
                t = t + 32
                continue 
            if ceil32(_128) <= _128:
                require mem[_125 + 64] == mem[_125 + 64]
                _166 = mem[_125 + 96]
                require mem[_125 + 96] == mem[_125 + 96]
                require mem[_125 + 128] == bool(mem[_125 + 128])
                require mem[_125 + 160] == bool(mem[_125 + 160])
                _172 = mem[_125 + 192]
                require mem[_125 + 192] <= test266151307()
                require _125 + mem[_125 + 192] + 31 < _125 + return_data.size
                _174 = mem[_125 + mem[_125 + 192]]
                if mem[_125 + mem[_125 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _176 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 192]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 192]])) + 1
                mem[_176] = _174
                require _172 + _174 + 32 <= return_data.size
                t = 0
                while t < _174:
                    mem[_176 + t + 32] = mem[_125 + _172 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_174) <= _174:
                    _198 = mem[_125 + 224]
                    require mem[_125 + 224] <= test266151307()
                    require _125 + mem[_125 + 224] + 31 < _125 + return_data.size
                    _202 = mem[_125 + mem[_125 + 224]]
                    if mem[_125 + mem[_125 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _206 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1
                    mem[_206] = _202
                    require _198 + _202 + 32 <= return_data.size
                    t = 0
                    while t < _202:
                        mem[_206 + t + 32] = mem[_125 + _198 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_202) > _202:
                        mem[_206 + _202 + 32] = 0
                else:
                    mem[_176 + _174 + 32] = 0
                    _200 = mem[_125 + 224]
                    require mem[_125 + 224] <= test266151307()
                    require _125 + mem[_125 + 224] + 31 < _125 + return_data.size
                    _204 = mem[_125 + mem[_125 + 224]]
                    if mem[_125 + mem[_125 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _208 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1
                    mem[_208] = _204
                    require _200 + _204 + 32 <= return_data.size
                    t = 0
                    while t < _204:
                        mem[_208 + t + 32] = mem[_125 + _200 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_204) > _204:
                        mem[_208 + _204 + 32] = 0
                if uint8(var26001) >= 5:
                    revert with 'NH{q', 50
                if not _166:
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if s > -stor[idx + (36 * uint8(var26001)) + 23] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor[idx + (36 * uint8(var26001)) + 23]
                    continue 
                if _166 < 1:
                    revert with 'NH{q', 17
                if _166 - 1 >= 36:
                    revert with 'NH{q', 50
                if uint8(var26001) >= 5:
                    revert with 'NH{q', 50
                if idx >= 36:
                    revert with 'NH{q', 50
                if stor[idx + (36 * uint8(var26001)) + 23] > -stor[_166 + (36 * uint8(var26001)) + 22] - 1:
                    revert with 'NH{q', 17
                if s > -stor[idx + (36 * uint8(var26001)) + 23] + -stor[_166 + (36 * uint8(var26001)) + 22] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor[idx + (36 * uint8(var26001)) + 23] + stor[_166 + (36 * uint8(var26001)) + 22]
                continue 
            mem[_125 + ceil32(return_data.size) + _128 + 32] = 0
            require mem[_125 + 64] == mem[_125 + 64]
            _167 = mem[_125 + 96]
            require mem[_125 + 96] == mem[_125 + 96]
            require mem[_125 + 128] == bool(mem[_125 + 128])
            require mem[_125 + 160] == bool(mem[_125 + 160])
            _173 = mem[_125 + 192]
            require mem[_125 + 192] <= test266151307()
            require _125 + mem[_125 + 192] + 31 < _125 + return_data.size
            _175 = mem[_125 + mem[_125 + 192]]
            if mem[_125 + mem[_125 + 192]] > test266151307():
                revert with 'NH{q', 65
            _177 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 192]])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 192]])) + 1
            mem[_177] = _175
            require _173 + _175 + 32 <= return_data.size
            t = 0
            while t < _175:
                mem[_177 + t + 32] = mem[_125 + _173 + t + 32]
                t = t + 32
                continue 
            if ceil32(_175) <= _175:
                _199 = mem[_125 + 224]
                require mem[_125 + 224] <= test266151307()
                require _125 + mem[_125 + 224] + 31 < _125 + return_data.size
                _203 = mem[_125 + mem[_125 + 224]]
                if mem[_125 + mem[_125 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _207 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1
                mem[_207] = _203
                require _199 + _203 + 32 <= return_data.size
                t = 0
                while t < _203:
                    mem[_207 + t + 32] = mem[_125 + _199 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_203) > _203:
                    mem[_207 + _203 + 32] = 0
            else:
                mem[_177 + _175 + 32] = 0
                _201 = mem[_125 + 224]
                require mem[_125 + 224] <= test266151307()
                require _125 + mem[_125 + 224] + 31 < _125 + return_data.size
                _205 = mem[_125 + mem[_125 + 224]]
                if mem[_125 + mem[_125 + 224]] > test266151307():
                    revert with 'NH{q', 65
                _209 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_125 + mem[_125 + 224]])) + 1
                mem[_209] = _205
                require _201 + _205 + 32 <= return_data.size
                t = 0
                while t < _205:
                    mem[_209 + t + 32] = mem[_125 + _201 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_205) > _205:
                    mem[_209 + _205 + 32] = 0
            if uint8(var26001) >= 5:
                revert with 'NH{q', 50
            if not _167:
                if idx >= 36:
                    revert with 'NH{q', 50
                if s > -stor[idx + (36 * uint8(var26001)) + 23] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + stor[idx + (36 * uint8(var26001)) + 23]
                continue 
            if _167 < 1:
                revert with 'NH{q', 17
            if _167 - 1 >= 36:
                revert with 'NH{q', 50
            if uint8(var26001) >= 5:
                revert with 'NH{q', 50
            if idx >= 36:
                revert with 'NH{q', 50
            if stor[idx + (36 * uint8(var26001)) + 23] > -stor[_167 + (36 * uint8(var26001)) + 22] - 1:
                revert with 'NH{q', 17
            if s > -stor[idx + (36 * uint8(var26001)) + 23] + -stor[_167 + (36 * uint8(var26001)) + 22] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + stor[idx + (36 * uint8(var26001)) + 23] + stor[_167 + (36 * uint8(var26001)) + 22]
            continue 
        if uint8(var26001) == 255:
            revert with 'NH{q', 17
        if var26002 >= s:
            var26001 = uint8(var26001) + 1
            var26002 = var26002
            continue 
        var26001 = uint8(var26001) + 1
        var26002 = s
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
        if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, 'Factions: not owned'
        if uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) < 1:
            revert with 'NH{q', 17
        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        if not sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
            revert with 'NH{q', 17
        sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]--
        if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                revert with 'NH{q', 50
            if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 204
                _90 = mem[64]
                mem[64] = mem[64] + 1152
                mem[_90] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                s = _90
                t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                while _90 + 1152 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                s = 0
                while s < 36:
                    if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if s >= 36:
                        revert with 'NH{q', 50
                    if stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] < mem[(32 * s) + _90]:
                        revert with 'NH{q', 17
                    stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] -= mem[(32 * s) + _90]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            else:
                if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 'Factions: summoner not owned'
                if uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) < 1:
                    revert with 'NH{q', 17
                if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                    revert with 'NH{q', 50
                if sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 'NH{q', 17
                if not sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                    revert with 'NH{q', 18
                if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                    revert with 'NH{q', 50
                if sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] < sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                    revert with 'NH{q', 17
                sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] -= sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
                if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                    revert with 'NH{q', 50
                sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
                call msg.sender with:
                   value sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 204
                _126 = mem[64]
                mem[64] = mem[64] + 1152
                mem[_126] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                s = _126
                t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                while _126 + 1152 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                s = 0
                while s < 36:
                    if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if s >= 36:
                        revert with 'NH{q', 50
                    if stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] < mem[(32 * s) + _126]:
                        revert with 'NH{q', 17
                    stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] -= mem[(32 * s) + _126]
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
                if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                    revert with 'NH{q', 50
                if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 204
                    _106 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_106] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _106
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                    while _106 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] < mem[(32 * s) + _106]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] -= mem[(32 * s) + _106]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                else:
                    if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Factions: summoner not owned'
                    if uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) < 1:
                        revert with 'NH{q', 17
                    if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 'NH{q', 17
                    if not sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                        revert with 'NH{q', 18
                    if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] < sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                        revert with 'NH{q', 17
                    sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] -= sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
                    if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
                    call msg.sender with:
                       value sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
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
                        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] < mem[(32 * s) + _131]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] -= mem[(32 * s) + _131]
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
                if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                    revert with 'NH{q', 50
                if sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] == sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 204
                    _111 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_111] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _111
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                    while _111 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] < mem[(32 * s) + _111]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] -= mem[(32 * s) + _111]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                else:
                    if not sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Factions: summoner not owned'
                    if uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) < 1:
                        revert with 'NH{q', 17
                    if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] < sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 'NH{q', 17
                    if not sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                        revert with 'NH{q', 18
                    if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] < sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]:
                        revert with 'NH{q', 17
                    sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] -= sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
                    if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
                    call msg.sender with:
                       value sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] - sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] / sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 204
                    _136 = mem[64]
                    mem[64] = mem[64] + 1152
                    mem[_136] = stor204[cd[((32 * idx) + cd[4] + 36)]].field_0
                    s = _136
                    t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
                    while _136 + 1152 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < 36:
                        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                            revert with 'NH{q', 50
                        if s >= 36:
                            revert with 'NH{q', 50
                        if stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] < mem[(32 * s) + _136]:
                            revert with 'NH{q', 17
                        stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] -= mem[(32 * s) + _136]
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
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 14
        _699 = mem[64]
        mem[64] = mem[64] + 64
        mem[_699] = uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0)
        mem[_699 + 32] = sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_256
        if sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_256 <= 0:
            revert with 0, 'Factions: not enrolled'
        if msg.value < stor1.length:
            revert with 0, 'Factions: did not pay tribute'
        if uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) < 1:
            revert with 'NH{q', 17
        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        if sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] == -1:
            revert with 'NH{q', 17
        sub_44754090[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]++
        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        if sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] > -stor1.length - 1:
            revert with 'NH{q', 17
        sub_797c82a7[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)] += stor1.length
        if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
            revert with 'NH{q', 50
        sub_77e840ed[cd[((32 * idx) + cd[4] + 36)]] = sub_152a9f06[uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)]
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = sha3(address(msg.sender), 16) + 1
        if sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
            staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _715 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _715 + 31 < _715 + return_data.size
            _717 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _715
            u = _717
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _723 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_723 len 1152] = call.data[calldata.size len 1152]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _731 = mem[_729]
            require mem[_729] == mem[_729]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _737 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _739 = mem[_737]
            require mem[_737] == mem[_737 + 28 len 4]
            _741 = mem[_737 + 32]
            require mem[_737 + 32] == mem[_737 + 60 len 4]
            _743 = mem[_737 + 64]
            require mem[_737 + 64] == mem[_737 + 92 len 4]
            _745 = mem[_737 + 96]
            require mem[_737 + 96] == mem[_737 + 124 len 4]
            _747 = mem[_737 + 128]
            require mem[_737 + 128] == mem[_737 + 156 len 4]
            _749 = mem[_737 + 160]
            require mem[_737 + 160] == mem[_737 + 188 len 4]
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
                _1107 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 256
                require mem[_1107] == mem[_1107]
                _1111 = mem[_1107 + 32]
                require mem[_1107 + 32] <= test266151307()
                require _1107 + mem[_1107 + 32] + 31 < _1107 + return_data.size
                _1113 = mem[_1107 + mem[_1107 + 32]]
                if mem[_1107 + mem[_1107 + 32]] > test266151307():
                    revert with 'NH{q', 65
                if _1107 + ceil32(return_data.size) + ceil32(ceil32(mem[_1107 + mem[_1107 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_1107 + mem[_1107 + 32]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1107 + ceil32(return_data.size) + ceil32(ceil32(mem[_1107 + mem[_1107 + 32]])) + 1
                mem[_1107 + ceil32(return_data.size)] = _1113
                require _1111 + _1113 + 32 <= return_data.size
                t = 0
                while t < _1113:
                    mem[_1107 + ceil32(return_data.size) + t + 32] = mem[_1107 + _1111 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1113) <= _1113:
                    _1397 = mem[_1107 + 64]
                    require mem[_1107 + 64] == mem[_1107 + 64]
                    require mem[_1107 + 96] == mem[_1107 + 96]
                    require mem[_1107 + 128] == bool(mem[_1107 + 128])
                    require mem[_1107 + 160] == bool(mem[_1107 + 160])
                    _1417 = mem[_1107 + 192]
                    require mem[_1107 + 192] <= test266151307()
                    require _1107 + mem[_1107 + 192] + 31 < _1107 + return_data.size
                    _1421 = mem[_1107 + mem[_1107 + 192]]
                    if mem[_1107 + mem[_1107 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1425 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 192]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 192]])) + 1
                    mem[_1425] = _1421
                    require _1417 + _1421 + 32 <= return_data.size
                    t = 0
                    while t < _1421:
                        mem[_1425 + t + 32] = mem[_1107 + _1417 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1421) <= _1421:
                        _1679 = mem[_1107 + 224]
                        require mem[_1107 + 224] <= test266151307()
                        require _1107 + mem[_1107 + 224] + 31 < _1107 + return_data.size
                        _1687 = mem[_1107 + mem[_1107 + 224]]
                        if mem[_1107 + mem[_1107 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1695 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1
                        mem[_1695] = _1687
                        require _1679 + _1687 + 32 <= return_data.size
                        t = 0
                        while t < _1687:
                            mem[_1695 + t + 32] = mem[_1107 + _1679 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1687) > _1687:
                            mem[_1695 + _1687 + 32] = 0
                    else:
                        mem[_1425 + _1421 + 32] = 0
                        _1683 = mem[_1107 + 224]
                        require mem[_1107 + 224] <= test266151307()
                        require _1107 + mem[_1107 + 224] + 31 < _1107 + return_data.size
                        _1691 = mem[_1107 + mem[_1107 + 224]]
                        if mem[_1107 + mem[_1107 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1699 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1
                        mem[_1699] = _1691
                        require _1683 + _1691 + 32 <= return_data.size
                        t = 0
                        while t < _1691:
                            mem[_1699 + t + 32] = mem[_1107 + _1683 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1691) > _1691:
                            mem[_1699 + _1691 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if _1397 == 1:
                        if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_739) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_739)
                    else:
                        if _1397 == 2:
                            if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_741) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_741)
                        else:
                            if _1397 == 3:
                                if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_743) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_743)
                            else:
                                if _1397 == 4:
                                    if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_745) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_745)
                                else:
                                    if _1397 == 5:
                                        if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_747) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_747)
                                    else:
                                        if _1397 != 6:
                                        else:
                                            if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_749) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_749)
                else:
                    mem[_1107 + ceil32(return_data.size) + _1113 + 32] = 0
                    _1400 = mem[_1107 + 64]
                    require mem[_1107 + 64] == mem[_1107 + 64]
                    require mem[_1107 + 96] == mem[_1107 + 96]
                    require mem[_1107 + 128] == bool(mem[_1107 + 128])
                    require mem[_1107 + 160] == bool(mem[_1107 + 160])
                    _1419 = mem[_1107 + 192]
                    require mem[_1107 + 192] <= test266151307()
                    require _1107 + mem[_1107 + 192] + 31 < _1107 + return_data.size
                    _1423 = mem[_1107 + mem[_1107 + 192]]
                    if mem[_1107 + mem[_1107 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1427 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 192]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 192]])) + 1
                    mem[_1427] = _1423
                    require _1419 + _1423 + 32 <= return_data.size
                    t = 0
                    while t < _1423:
                        mem[_1427 + t + 32] = mem[_1107 + _1419 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1423) <= _1423:
                        _1680 = mem[_1107 + 224]
                        require mem[_1107 + 224] <= test266151307()
                        require _1107 + mem[_1107 + 224] + 31 < _1107 + return_data.size
                        _1688 = mem[_1107 + mem[_1107 + 224]]
                        if mem[_1107 + mem[_1107 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1696 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1
                        mem[_1696] = _1688
                        require _1680 + _1688 + 32 <= return_data.size
                        t = 0
                        while t < _1688:
                            mem[_1696 + t + 32] = mem[_1107 + _1680 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1688) > _1688:
                            mem[_1696 + _1688 + 32] = 0
                    else:
                        mem[_1427 + _1423 + 32] = 0
                        _1684 = mem[_1107 + 224]
                        require mem[_1107 + 224] <= test266151307()
                        require _1107 + mem[_1107 + 224] + 31 < _1107 + return_data.size
                        _1692 = mem[_1107 + mem[_1107 + 224]]
                        if mem[_1107 + mem[_1107 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1700 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1107 + mem[_1107 + 224]])) + 1
                        mem[_1700] = _1692
                        require _1684 + _1692 + 32 <= return_data.size
                        t = 0
                        while t < _1692:
                            mem[_1700 + t + 32] = mem[_1107 + _1684 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1692) > _1692:
                            mem[_1700 + _1692 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if _1400 == 1:
                        if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_739) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_739)
                    else:
                        if _1400 == 2:
                            if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_741) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_741)
                        else:
                            if _1400 == 3:
                                if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_743) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_743)
                            else:
                                if _1400 == 4:
                                    if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_745) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_745)
                                else:
                                    if _1400 == 5:
                                        if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_747) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_747)
                                    else:
                                        if _1400 != 6:
                                        else:
                                            if mem[(32 * s) + _717 + 31 len 1] and _731 > -1 / mem[(32 * s) + _717 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _717 + 31 len 1] * _731 and uint32(_749) > -1 / mem[(32 * s) + _717 + 31 len 1] * _731:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _723] = mem[(32 * s) + _717 + 31 len 1] * _731 * uint32(_749)
                if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                    revert with 'NH{q', 50
                if s >= 36:
                    revert with 'NH{q', 50
                if stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] > -mem[(32 * s) + _723] - 1:
                    revert with 'NH{q', 17
                stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] += mem[(32 * s) + _723]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 204
            t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
            s = _723
            while _723 + 1152 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
        else:
            sub_0152600c[address(msg.sender)]++
            sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]] = cd[((32 * idx) + cd[4] + 36)]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(address(msg.sender), 16) + 1
            sub_0152600c[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] = sub_0152600c[address(msg.sender)]
            require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
            staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _716 + 31 < _716 + return_data.size
            _718 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _716
            u = _718
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _724 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_724 len 1152] = call.data[calldata.size len 1152]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _732 = mem[_730]
            require mem[_730] == mem[_730]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _738 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _740 = mem[_738]
            require mem[_738] == mem[_738 + 28 len 4]
            _742 = mem[_738 + 32]
            require mem[_738 + 32] == mem[_738 + 60 len 4]
            _744 = mem[_738 + 64]
            require mem[_738 + 64] == mem[_738 + 92 len 4]
            _746 = mem[_738 + 96]
            require mem[_738 + 96] == mem[_738 + 124 len 4]
            _748 = mem[_738 + 128]
            require mem[_738 + 128] == mem[_738 + 156 len 4]
            _750 = mem[_738 + 160]
            require mem[_738 + 160] == mem[_738 + 188 len 4]
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
                _1108 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 256
                require mem[_1108] == mem[_1108]
                _1112 = mem[_1108 + 32]
                require mem[_1108 + 32] <= test266151307()
                require _1108 + mem[_1108 + 32] + 31 < _1108 + return_data.size
                _1114 = mem[_1108 + mem[_1108 + 32]]
                if mem[_1108 + mem[_1108 + 32]] > test266151307():
                    revert with 'NH{q', 65
                if _1108 + ceil32(return_data.size) + ceil32(ceil32(mem[_1108 + mem[_1108 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_1108 + mem[_1108 + 32]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1108 + ceil32(return_data.size) + ceil32(ceil32(mem[_1108 + mem[_1108 + 32]])) + 1
                mem[_1108 + ceil32(return_data.size)] = _1114
                require _1112 + _1114 + 32 <= return_data.size
                t = 0
                while t < _1114:
                    mem[_1108 + ceil32(return_data.size) + t + 32] = mem[_1108 + _1112 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1114) <= _1114:
                    _1398 = mem[_1108 + 64]
                    require mem[_1108 + 64] == mem[_1108 + 64]
                    require mem[_1108 + 96] == mem[_1108 + 96]
                    require mem[_1108 + 128] == bool(mem[_1108 + 128])
                    require mem[_1108 + 160] == bool(mem[_1108 + 160])
                    _1418 = mem[_1108 + 192]
                    require mem[_1108 + 192] <= test266151307()
                    require _1108 + mem[_1108 + 192] + 31 < _1108 + return_data.size
                    _1422 = mem[_1108 + mem[_1108 + 192]]
                    if mem[_1108 + mem[_1108 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1426 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 192]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 192]])) + 1
                    mem[_1426] = _1422
                    require _1418 + _1422 + 32 <= return_data.size
                    t = 0
                    while t < _1422:
                        mem[_1426 + t + 32] = mem[_1108 + _1418 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1422) <= _1422:
                        _1681 = mem[_1108 + 224]
                        require mem[_1108 + 224] <= test266151307()
                        require _1108 + mem[_1108 + 224] + 31 < _1108 + return_data.size
                        _1689 = mem[_1108 + mem[_1108 + 224]]
                        if mem[_1108 + mem[_1108 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1697 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1
                        mem[_1697] = _1689
                        require _1681 + _1689 + 32 <= return_data.size
                        t = 0
                        while t < _1689:
                            mem[_1697 + t + 32] = mem[_1108 + _1681 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1689) > _1689:
                            mem[_1697 + _1689 + 32] = 0
                    else:
                        mem[_1426 + _1422 + 32] = 0
                        _1685 = mem[_1108 + 224]
                        require mem[_1108 + 224] <= test266151307()
                        require _1108 + mem[_1108 + 224] + 31 < _1108 + return_data.size
                        _1693 = mem[_1108 + mem[_1108 + 224]]
                        if mem[_1108 + mem[_1108 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1701 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1
                        mem[_1701] = _1693
                        require _1685 + _1693 + 32 <= return_data.size
                        t = 0
                        while t < _1693:
                            mem[_1701 + t + 32] = mem[_1108 + _1685 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1693) > _1693:
                            mem[_1701 + _1693 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if _1398 == 1:
                        if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_740) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_740)
                    else:
                        if _1398 == 2:
                            if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_742) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_742)
                        else:
                            if _1398 == 3:
                                if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_744) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_744)
                            else:
                                if _1398 == 4:
                                    if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_746) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_746)
                                else:
                                    if _1398 == 5:
                                        if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_748) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_748)
                                    else:
                                        if _1398 != 6:
                                        else:
                                            if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_750) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_750)
                else:
                    mem[_1108 + ceil32(return_data.size) + _1114 + 32] = 0
                    _1402 = mem[_1108 + 64]
                    require mem[_1108 + 64] == mem[_1108 + 64]
                    require mem[_1108 + 96] == mem[_1108 + 96]
                    require mem[_1108 + 128] == bool(mem[_1108 + 128])
                    require mem[_1108 + 160] == bool(mem[_1108 + 160])
                    _1420 = mem[_1108 + 192]
                    require mem[_1108 + 192] <= test266151307()
                    require _1108 + mem[_1108 + 192] + 31 < _1108 + return_data.size
                    _1424 = mem[_1108 + mem[_1108 + 192]]
                    if mem[_1108 + mem[_1108 + 192]] > test266151307():
                        revert with 'NH{q', 65
                    _1428 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 192]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 192]])) + 1
                    mem[_1428] = _1424
                    require _1420 + _1424 + 32 <= return_data.size
                    t = 0
                    while t < _1424:
                        mem[_1428 + t + 32] = mem[_1108 + _1420 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1424) <= _1424:
                        _1682 = mem[_1108 + 224]
                        require mem[_1108 + 224] <= test266151307()
                        require _1108 + mem[_1108 + 224] + 31 < _1108 + return_data.size
                        _1690 = mem[_1108 + mem[_1108 + 224]]
                        if mem[_1108 + mem[_1108 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1698 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1
                        mem[_1698] = _1690
                        require _1682 + _1690 + 32 <= return_data.size
                        t = 0
                        while t < _1690:
                            mem[_1698 + t + 32] = mem[_1108 + _1682 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1690) > _1690:
                            mem[_1698 + _1690 + 32] = 0
                    else:
                        mem[_1428 + _1424 + 32] = 0
                        _1686 = mem[_1108 + 224]
                        require mem[_1108 + 224] <= test266151307()
                        require _1108 + mem[_1108 + 224] + 31 < _1108 + return_data.size
                        _1694 = mem[_1108 + mem[_1108 + 224]]
                        if mem[_1108 + mem[_1108 + 224]] > test266151307():
                            revert with 'NH{q', 65
                        _1702 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_1108 + mem[_1108 + 224]])) + 1
                        mem[_1702] = _1694
                        require _1686 + _1694 + 32 <= return_data.size
                        t = 0
                        while t < _1694:
                            mem[_1702 + t + 32] = mem[_1108 + _1686 + t + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1694) > _1694:
                            mem[_1702 + _1694 + 32] = 0
                    if s >= 36:
                        revert with 'NH{q', 50
                    if _1402 == 1:
                        if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_740) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                            revert with 'NH{q', 17
                        if s >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_740)
                    else:
                        if _1402 == 2:
                            if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_742) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                revert with 'NH{q', 17
                            if s >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_742)
                        else:
                            if _1402 == 3:
                                if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_744) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                    revert with 'NH{q', 17
                                if s >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_744)
                            else:
                                if _1402 == 4:
                                    if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_746) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                        revert with 'NH{q', 17
                                    if s >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_746)
                                else:
                                    if _1402 == 5:
                                        if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_748) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                            revert with 'NH{q', 17
                                        if s >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_748)
                                    else:
                                        if _1402 != 6:
                                        else:
                                            if mem[(32 * s) + _718 + 31 len 1] and _732 > -1 / mem[(32 * s) + _718 + 31 len 1]:
                                                revert with 'NH{q', 17
                                            if mem[(32 * s) + _718 + 31 len 1] * _732 and uint32(_750) > -1 / mem[(32 * s) + _718 + 31 len 1] * _732:
                                                revert with 'NH{q', 17
                                            if s >= 36:
                                                revert with 'NH{q', 50
                                            mem[(32 * s) + _724] = mem[(32 * s) + _718 + 31 len 1] * _732 * uint32(_750)
                if uint8(uint8(sub_9a6b2087[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1) >= 5:
                    revert with 'NH{q', 50
                if s >= 36:
                    revert with 'NH{q', 50
                if stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] > -mem[(32 * s) + _724] - 1:
                    revert with 'NH{q', 17
                stor[s + (36 * uint8(uint8(stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) - 1)) + 23] += mem[(32 * s) + _724]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 204
            t = sha3(cd[((32 * idx) + cd[4] + 36)], 204)
            s = _724
            while _724 + 1152 > s:
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
}

function sub_3704483b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = uint8(sub_9a6b2087[arg1].field_0)
    mem[128] = sub_9a6b2087[arg1].field_256
    if sub_9a6b2087[arg1].field_256 <= 0:
        revert with 0, 'Factions: not enrolled'
    if msg.value < stor1.length:
        revert with 0, 'Factions: did not pay tribute'
    if uint8(sub_9a6b2087[arg1].field_0) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
        revert with 'NH{q', 50
    if sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)] == -1:
        revert with 'NH{q', 17
    sub_44754090[uint8(uint8(stor14[arg1].field_0) - 1)]++
    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
        revert with 'NH{q', 50
    if sub_797c82a7[uint8(uint8(stor14[arg1].field_0) - 1)] > -stor1.length - 1:
        revert with 'NH{q', 17
    sub_797c82a7[uint8(uint8(stor14[arg1].field_0) - 1)] += stor1.length
    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
        revert with 'NH{q', 50
    sub_77e840ed[arg1] = sub_152a9f06[uint8(uint8(stor14[arg1].field_0) - 1)]
    mem[0] = arg1
    mem[32] = sha3(address(msg.sender), 16) + 1
    if sub_0152600c[address(msg.sender)][1][arg1]:
        require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
        staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[160 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require 191 < return_data.size + 160
        if not bool(ceil32(return_data.size) + 1312 <= test266151307()):
            revert with 'NH{q', 65
        require 1152 <= return_data.size
        idx = 0
        s = 160
        t = ceil32(return_data.size) + 160
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 1312 len 1152] = call.data[calldata.size len 1152]
        mem[ceil32(return_data.size) + 2468] = arg1
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 2464] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 2464 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 2464
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
            _410 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_410] == mem[_410]
            _414 = mem[_410 + 32]
            require mem[_410 + 32] <= test266151307()
            require _410 + mem[_410 + 32] + 31 < _410 + return_data.size
            _416 = mem[_410 + mem[_410 + 32]]
            if mem[_410 + mem[_410 + 32]] > test266151307():
                revert with 'NH{q', 65
            if _410 + ceil32(return_data.size) + ceil32(ceil32(mem[_410 + mem[_410 + 32]])) + 1 > test266151307() or ceil32(ceil32(mem[_410 + mem[_410 + 32]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _410 + ceil32(return_data.size) + ceil32(ceil32(mem[_410 + mem[_410 + 32]])) + 1
            mem[_410 + ceil32(return_data.size)] = _416
            require _414 + _416 + 32 <= return_data.size
            s = 0
            while s < _416:
                mem[_410 + ceil32(return_data.size) + s + 32] = mem[_410 + _414 + s + 32]
                s = s + 32
                continue 
            if ceil32(_416) <= _416:
                _700 = mem[_410 + 64]
                require mem[_410 + 64] == mem[_410 + 64]
                require mem[_410 + 96] == mem[_410 + 96]
                require mem[_410 + 128] == bool(mem[_410 + 128])
                require mem[_410 + 160] == bool(mem[_410 + 160])
                _720 = mem[_410 + 192]
                require mem[_410 + 192] <= test266151307()
                require _410 + mem[_410 + 192] + 31 < _410 + return_data.size
                _724 = mem[_410 + mem[_410 + 192]]
                if mem[_410 + mem[_410 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _728 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 192]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 192]])) + 1
                mem[_728] = _724
                require _720 + _724 + 32 <= return_data.size
                s = 0
                while s < _724:
                    mem[_728 + s + 32] = mem[_410 + _720 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_724) <= _724:
                    _982 = mem[_410 + 224]
                    require mem[_410 + 224] <= test266151307()
                    require _410 + mem[_410 + 224] + 31 < _410 + return_data.size
                    _990 = mem[_410 + mem[_410 + 224]]
                    if mem[_410 + mem[_410 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _998 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1
                    mem[_998] = _990
                    require _982 + _990 + 32 <= return_data.size
                    s = 0
                    while s < _990:
                        mem[_998 + s + 32] = mem[_410 + _982 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_990) > _990:
                        mem[_998 + _990 + 32] = 0
                else:
                    mem[_728 + _724 + 32] = 0
                    _986 = mem[_410 + 224]
                    require mem[_410 + 224] <= test266151307()
                    require _410 + mem[_410 + 224] + 31 < _410 + return_data.size
                    _994 = mem[_410 + mem[_410 + 224]]
                    if mem[_410 + mem[_410 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1002 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1
                    mem[_1002] = _994
                    require _986 + _994 + 32 <= return_data.size
                    s = 0
                    while s < _994:
                        mem[_1002 + s + 32] = mem[_410 + _986 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_994) > _994:
                        mem[_1002 + _994 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if _700 == 1:
                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if _700 == 2:
                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if _700 == 3:
                            if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                            if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                revert with 'NH{q', 50
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])) - 1:
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if _700 == 4:
                                if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])) - 1:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if _700 == 5:
                                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])) - 1:
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _700 != 6:
                                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > -mem[(32 * idx) + ceil32(return_data.size) + 1312] - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 1312]
                                    else:
                                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])) - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            else:
                mem[_410 + ceil32(return_data.size) + _416 + 32] = 0
                _703 = mem[_410 + 64]
                require mem[_410 + 64] == mem[_410 + 64]
                require mem[_410 + 96] == mem[_410 + 96]
                require mem[_410 + 128] == bool(mem[_410 + 128])
                require mem[_410 + 160] == bool(mem[_410 + 160])
                _722 = mem[_410 + 192]
                require mem[_410 + 192] <= test266151307()
                require _410 + mem[_410 + 192] + 31 < _410 + return_data.size
                _726 = mem[_410 + mem[_410 + 192]]
                if mem[_410 + mem[_410 + 192]] > test266151307():
                    revert with 'NH{q', 65
                _730 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 192]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 192]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 192]])) + 1
                mem[_730] = _726
                require _722 + _726 + 32 <= return_data.size
                s = 0
                while s < _726:
                    mem[_730 + s + 32] = mem[_410 + _722 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_726) <= _726:
                    _983 = mem[_410 + 224]
                    require mem[_410 + 224] <= test266151307()
                    require _410 + mem[_410 + 224] + 31 < _410 + return_data.size
                    _991 = mem[_410 + mem[_410 + 224]]
                    if mem[_410 + mem[_410 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _999 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1
                    mem[_999] = _991
                    require _983 + _991 + 32 <= return_data.size
                    s = 0
                    while s < _991:
                        mem[_999 + s + 32] = mem[_410 + _983 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) > _991:
                        mem[_999 + _991 + 32] = 0
                else:
                    mem[_730 + _726 + 32] = 0
                    _987 = mem[_410 + 224]
                    require mem[_410 + 224] <= test266151307()
                    require _410 + mem[_410 + 224] + 31 < _410 + return_data.size
                    _995 = mem[_410 + mem[_410 + 224]]
                    if mem[_410 + mem[_410 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1003 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_410 + mem[_410 + 224]])) + 1
                    mem[_1003] = _995
                    require _987 + _995 + 32 <= return_data.size
                    s = 0
                    while s < _995:
                        mem[_1003 + s + 32] = mem[_410 + _987 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_995) > _995:
                        mem[_1003 + _995 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if _703 == 1:
                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if _703 == 2:
                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if _703 == 3:
                            if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                            if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                revert with 'NH{q', 50
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])) - 1:
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if _703 == 4:
                                if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])) - 1:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if _703 == 5:
                                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])) - 1:
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _703 != 6:
                                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > -mem[(32 * idx) + ceil32(return_data.size) + 1312] - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 1312]
                                    else:
                                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])) - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        sub_0152600c[address(msg.sender)]++
        sub_0152600c[address(msg.sender)][sub_0152600c[address(msg.sender)]] = arg1
        mem[0] = arg1
        mem[32] = sha3(address(msg.sender), 16) + 1
        sub_0152600c[address(msg.sender)][1][arg1] = sub_0152600c[address(msg.sender)]
        require ext_code.size(0x6292f3fb422e393342f257857e744d43b1ae7e70)
        staticcall 0x6292f3fb422e393342f257857e744d43b1ae7e70.get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[160 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require 191 < return_data.size + 160
        if not bool(ceil32(return_data.size) + 1312 <= test266151307()):
            revert with 'NH{q', 65
        require 1152 <= return_data.size
        idx = 0
        s = 160
        t = ceil32(return_data.size) + 160
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 1312 len 1152] = call.data[calldata.size len 1152]
        mem[ceil32(return_data.size) + 2468] = arg1
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 2464] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 2464 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 2464
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
                    mem[_729 + _725 + 32] = 0
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
                if _701 == 1:
                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if _701 == 2:
                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if _701 == 3:
                            if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                            if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                revert with 'NH{q', 50
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])) - 1:
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if _701 == 4:
                                if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])) - 1:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if _701 == 5:
                                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])) - 1:
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _701 != 6:
                                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > -mem[(32 * idx) + ceil32(return_data.size) + 1312] - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 1312]
                                    else:
                                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])) - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            else:
                mem[_411 + ceil32(return_data.size) + _417 + 32] = 0
                _705 = mem[_411 + 64]
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
                    _985 = mem[_411 + 224]
                    require mem[_411 + 224] <= test266151307()
                    require _411 + mem[_411 + 224] + 31 < _411 + return_data.size
                    _993 = mem[_411 + mem[_411 + 224]]
                    if mem[_411 + mem[_411 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1001 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1
                    mem[_1001] = _993
                    require _985 + _993 + 32 <= return_data.size
                    s = 0
                    while s < _993:
                        mem[_1001 + s + 32] = mem[_411 + _985 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_993) > _993:
                        mem[_1001 + _993 + 32] = 0
                else:
                    mem[_731 + _727 + 32] = 0
                    _989 = mem[_411 + 224]
                    require mem[_411 + 224] <= test266151307()
                    require _411 + mem[_411 + 224] + 31 < _411 + return_data.size
                    _997 = mem[_411 + mem[_411 + 224]]
                    if mem[_411 + mem[_411 + 224]] > test266151307():
                        revert with 'NH{q', 65
                    _1005 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_411 + mem[_411 + 224]])) + 1
                    mem[_1005] = _997
                    require _989 + _997 + 32 <= return_data.size
                    s = 0
                    while s < _997:
                        mem[_1005 + s + 32] = mem[_411 + _989 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_997) > _997:
                        mem[_1005 + _997 + 32] = 0
                if idx >= 36:
                    revert with 'NH{q', 50
                if _705 == 1:
                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[0]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if idx >= 36:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                        revert with 'NH{q', 50
                    if idx >= 36:
                        revert with 'NH{q', 50
                    if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[0])
                else:
                    if _705 == 2:
                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[32]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if idx >= 36:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                            revert with 'NH{q', 50
                        if idx >= 36:
                            revert with 'NH{q', 50
                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[32])
                    else:
                        if _705 == 3:
                            if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                revert with 'NH{q', 17
                            if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[64]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if idx >= 36:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                            if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                revert with 'NH{q', 50
                            if idx >= 36:
                                revert with 'NH{q', 50
                            if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])) - 1:
                                revert with 'NH{q', 17
                            stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[64])
                        else:
                            if _705 == 4:
                                if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                    revert with 'NH{q', 17
                                if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[96]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                                if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                    revert with 'NH{q', 50
                                if idx >= 36:
                                    revert with 'NH{q', 50
                                if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])) - 1:
                                    revert with 'NH{q', 17
                                stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[96])
                            else:
                                if _705 == 5:
                                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                        revert with 'NH{q', 17
                                    if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[128]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                    if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                        revert with 'NH{q', 50
                                    if idx >= 36:
                                        revert with 'NH{q', 50
                                    if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])) - 1:
                                        revert with 'NH{q', 17
                                    stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[128])
                                else:
                                    if _705 != 6:
                                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > -mem[(32 * idx) + ceil32(return_data.size) + 1312] - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 1312]
                                    else:
                                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] and ext_call.return_data[0] > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1]:
                                            revert with 'NH{q', 17
                                        if mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] and uint32(ext_call.return_data[160]) > -1 / mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + ceil32(return_data.size) + 1312] = mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
                                        if uint8(uint8(sub_9a6b2087[arg1].field_0) - 1) >= 5:
                                            revert with 'NH{q', 50
                                        if idx >= 36:
                                            revert with 'NH{q', 50
                                        if stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] > (-1 * mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])) - 1:
                                            revert with 'NH{q', 17
                                        stor[idx + (36 * uint8(uint8(stor14[arg1].field_0) - 1)) + 23] += mem[(32 * idx) + ceil32(return_data.size) + 191 len 1] * ext_call.return_data[0] * uint32(ext_call.return_data[160])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    s = 0
    idx = ceil32(return_data.size) + 1312
    while ceil32(return_data.size) + 2464 > idx:
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



}
