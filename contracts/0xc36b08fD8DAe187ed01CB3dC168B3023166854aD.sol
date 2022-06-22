contract main {




// =====================  Runtime code  =====================


const name = 'Rarity Personal Daycare', 0

const symbol = 'RPD', 0


array of uint256 sub_3fc9f86e;
address stor1;
mapping of uint8 stor2;
mapping of uint256 sub_8483d76e;
mapping of uint8 stor4;

function sub_3fc9f86e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_3fc9f86e.length
    return sub_3fc9f86e[arg1]
}

function approvals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function sub_8483d76e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_8483d76e[arg1][arg2[all]]
}

function registrations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        if bool(stor4[address(msg.sender)]) != 1:
            revert with 0, '!ownerOrApproved'
    stor4[address(arg1)] = 1
}

function sub_fc101d9b(?) payable {
    if stor1 != msg.sender:
        if bool(stor4[address(msg.sender)]) != 1:
            revert with 0, '!ownerOrApproved'
    idx = sub_3fc9f86e.length
    while idx > 0:
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= sub_3fc9f86e.length:
            revert with 'NH{q', 50
        mem[32] = 2
        stor2[stor0[idx]] = 0
        if sub_3fc9f86e.length < 1:
            revert with 'NH{q', 17
        if sub_3fc9f86e.length - 1 >= sub_3fc9f86e.length:
            revert with 'NH{q', 50
        if idx - 1 >= sub_3fc9f86e.length:
            revert with 'NH{q', 50
        sub_3fc9f86e[idx] = sub_3fc9f86e[sub_3fc9f86e.length]
        if not sub_3fc9f86e.length:
            revert with 'NH{q', 49
        mem[0] = 0
        sub_3fc9f86e[sub_3fc9f86e.length] = 0
        sub_3fc9f86e.length--
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}

function sub_5546e817(?) payable {
    mem[64] = 96
    idx = 0
    while idx < sub_3fc9f86e.length:
        mem[0] = 0
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
             gas gas_remaining wei
            args sub_3fc9f86e[idx]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_43] == mem[_43]
        _46 = mem[_43 + 32]
        require mem[_43 + 32] == mem[_43 + 32]
        require mem[_43 + 64] == mem[_43 + 64]
        require mem[_43 + 96] == mem[_43 + 96]
        sub_8483d76e[stor0[idx]]['xp'] = mem[_43]
        sub_8483d76e[stor0[idx]]['level'] = mem[_43 + 96]
        mem[0] = sub_3fc9f86e[idx]
        mem[32] = 3
        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
        sub_8483d76e[stor0[idx]]['rarityAdventureLog'] = _46
        mem[mem[64] + 4] = sub_3fc9f86e[idx]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
             gas gas_remaining wei
            args sub_3fc9f86e[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _64 = mem[_63]
        require mem[_63] == mem[_63]
        mem[0] = sub_3fc9f86e[idx]
        mem[32] = 3
        mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
        sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = _64
        mem[mem[64] + 4] = sub_3fc9f86e[idx]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
             gas gas_remaining wei
            args sub_3fc9f86e[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _72 = mem[_71]
        require mem[_71] == mem[_71]
        mem[0] = sub_3fc9f86e[idx]
        mem[32] = 3
        mem[mem[64]] = 'claimedGoldByLevel'
        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = _72
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _39 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = 20
    mem[mem[64] + 96] = 'SyncedSummonerCount:'
    mem[mem[64] + 32] = sub_3fc9f86e.length
    emit 0x5faa6392: mem[mem[64] len _39 + -mem[64] + 128]
}

function sub_29bc6494(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if msg.sender == stor1:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 2
            if not stor2[cd[((32 * idx) + cd[4] + 36)]]:
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _86 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_86] == mem[_86]
                _90 = mem[_86 + 32]
                require mem[_86 + 32] == mem[_86 + 32]
                require mem[_86 + 64] == mem[_86 + 64]
                require mem[_86 + 96] == mem[_86 + 96]
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['xp'] = mem[_86]
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['level'] = mem[_86 + 96]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 3
                mem[mem[64] + 18] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['rarityAdventureLog'] = _90
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _126 = mem[_124]
                require mem[_124] == mem[_124]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 3
                mem[mem[64] + 16] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['cellarDungeonLog'] = _126
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _142 = mem[_140]
                require mem[_140] == mem[_140]
                mem[mem[64]] = 'claimedGoldByLevel'
                mem[mem[64] + 18] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['claimedGoldByLevel'] = _142
                sub_3fc9f86e.length++
                sub_3fc9f86e[sub_3fc9f86e.length] = cd[((32 * idx) + cd[4] + 36)]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 2
                stor2[cd[((32 * idx) + cd[4] + 36)]] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if bool(stor4[address(msg.sender)]) != 1:
            revert with 0, '!ownerOrApproved'
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 2
            if not stor2[cd[((32 * idx) + cd[4] + 36)]]:
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_87] == mem[_87]
                _91 = mem[_87 + 32]
                require mem[_87 + 32] == mem[_87 + 32]
                require mem[_87 + 64] == mem[_87 + 64]
                require mem[_87 + 96] == mem[_87 + 96]
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['xp'] = mem[_87]
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['level'] = mem[_87 + 96]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 3
                mem[mem[64] + 18] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['rarityAdventureLog'] = _91
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _127 = mem[_125]
                require mem[_125] == mem[_125]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 3
                mem[mem[64] + 16] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['cellarDungeonLog'] = _127
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _143 = mem[_141]
                require mem[_141] == mem[_141]
                mem[mem[64]] = 'claimedGoldByLevel'
                mem[mem[64] + 18] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['claimedGoldByLevel'] = _143
                sub_3fc9f86e.length++
                sub_3fc9f86e[sub_3fc9f86e.length] = cd[((32 * idx) + cd[4] + 36)]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 2
                stor2[cd[((32 * idx) + cd[4] + 36)]] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_c2169c1a(?) payable {
    mem[64] = 96
    if msg.sender == stor1:
        idx = 0
        while idx < sub_3fc9f86e.length:
            mem[0] = sub_3fc9f86e[idx]
            mem[32] = 3
            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
            if block.timestamp <= sub_8483d76e[stor0[idx]]['rarityAdventureLog']:
                mem[0] = sub_3fc9f86e[idx]
                mem[32] = 3
                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                    if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                        revert with 'NH{q', 17
                    s = 1
                    t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                    while s < sub_8483d76e[stor0[idx]]['level']:
                        if s and 1000 * 10^18 > -1 / s:
                            revert with 'NH{q', 17
                        if t > (-1000 * 10^18 * s) - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + (1000 * 10^18 * s)
                        continue 
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    if t > sub_8483d76e[stor0[idx]]['xp']:
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        mem[mem[64]] = 'level'
                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5277 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5349 = mem[_5277]
                                require mem[_5277] == mem[_5277]
                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _5637 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 9
                                    mem[mem[64] + 96] = 'GoldClaim'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _5637 + -mem[64] + 128]
                                else:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5877 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5877] == mem[_5877]
                                    if mem[_5877] > _5349:
                                        _6117 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _6117 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'claimedGoldByLevel'
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                    else:
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        if not ext_call.success:
                            _4703 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 7
                            mem[mem[64] + 96] = 'LevelUp'
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x413165ba: mem[mem[64] len _4703 + -mem[64] + 128]
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5757 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5782 = mem[_5757]
                                    require mem[_5757] == mem[_5757]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _6165 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _6165 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6312 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6312] == mem[_6312]
                                        if mem[_6312] > _5782:
                                            _6621 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _6621 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            _4773 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 7
                            mem[mem[64] + 96] = 'LevelUp'
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x5faa6392: mem[mem[64] len _4773 + -mem[64] + 128]
                            if sub_8483d76e[stor0[idx]]['level'] > -2:
                                revert with 'NH{q', 17
                            sub_8483d76e[stor0[idx]]['level']++
                            if sub_8483d76e[stor0[idx]]['xp'] < t:
                                revert with 'NH{q', 17
                            sub_8483d76e[stor0[idx]]['xp'] -= t
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6431 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6501 = mem[_6431]
                                    require mem[_6431] == mem[_6431]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _6741 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _6741 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6889 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6889] == mem[_6889]
                                        if mem[_6889] > _6501:
                                            _7101 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _7101 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                else:
                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_3fc9f86e[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2231 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2231] == mem[_2231]
                    if not mem[_2231]:
                        if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                            revert with 'NH{q', 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                        while s < sub_8483d76e[stor0[idx]]['level']:
                            if s and 1000 * 10^18 > -1 / s:
                                revert with 'NH{q', 17
                            if t > (-1000 * 10^18 * s) - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]]['xp']:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5278 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5350 = mem[_5278]
                                    require mem[_5278] == mem[_5278]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _5640 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _5640 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5880 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5880] == mem[_5880]
                                        if mem[_5880] > _5350:
                                            _6119 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _6119 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _4706 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _4706 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5758 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5784 = mem[_5758]
                                        require mem[_5758] == mem[_5758]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6166 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6166 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6316 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6316] == mem[_6316]
                                            if mem[_6316] > _5784:
                                                _6622 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6622 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _4774 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _4774 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] > -2:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['level']++
                                if sub_8483d76e[stor0[idx]]['xp'] < t:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['xp'] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6434 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6502 = mem[_6434]
                                        require mem[_6434] == mem[_6434]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6742 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6742 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6894 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6894] == mem[_6894]
                                            if mem[_6894] > _6502:
                                                _7102 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _7102 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                    else:
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        if not ext_call.success:
                            _2288 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 13
                            mem[mem[64] + 96] = 'CellarDungeon'
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x413165ba: mem[mem[64] len _2288 + -mem[64] + 128]
                            if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                revert with 'NH{q', 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                            while s < sub_8483d76e[stor0[idx]]['level']:
                                if s and 1000 * 10^18 > -1 / s:
                                    revert with 'NH{q', 17
                                if t > (-1000 * 10^18 * s) - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]]['xp']:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5279 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5351 = mem[_5279]
                                        require mem[_5279] == mem[_5279]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _5643 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _5643 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5883 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5883] == mem[_5883]
                                            if mem[_5883] > _5351:
                                                _6121 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6121 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _4709 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _4709 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5759 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5786 = mem[_5759]
                                            require mem[_5759] == mem[_5759]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6167 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6167 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6320 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6320] == mem[_6320]
                                                if mem[_6320] > _5786:
                                                    _6623 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6623 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    _4775 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x5faa6392: mem[mem[64] len _4775 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]]['level'] > -2:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['level']++
                                    if sub_8483d76e[stor0[idx]]['xp'] < t:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['xp'] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6437 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6503 = mem[_6437]
                                            require mem[_6437] == mem[_6437]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6743 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6743 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6899 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6899] == mem[_6899]
                                                if mem[_6899] > _6503:
                                                    _7103 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _7103 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            _2295 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 13
                            mem[mem[64] + 96] = 'CellarDungeon'
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x5faa6392: mem[mem[64] len _2295 + -mem[64] + 128]
                            if block.timestamp > -86401:
                                revert with 'NH{q', 17
                            mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                            sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                            if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                revert with 'NH{q', 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                            while s < sub_8483d76e[stor0[idx]]['level']:
                                if s and 1000 * 10^18 > -1 / s:
                                    revert with 'NH{q', 17
                                if t > (-1000 * 10^18 * s) - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]]['xp']:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5280 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5352 = mem[_5280]
                                        require mem[_5280] == mem[_5280]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _5646 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _5646 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5886 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5886] == mem[_5886]
                                            if mem[_5886] > _5352:
                                                _6123 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6123 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _4712 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _4712 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5760 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5788 = mem[_5760]
                                            require mem[_5760] == mem[_5760]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6168 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6168 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6324 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6324] == mem[_6324]
                                                if mem[_6324] > _5788:
                                                    _6624 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6624 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    _4776 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x5faa6392: mem[mem[64] len _4776 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]]['level'] > -2:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['level']++
                                    if sub_8483d76e[stor0[idx]]['xp'] < t:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['xp'] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6440 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6504 = mem[_6440]
                                            require mem[_6440] == mem[_6440]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6744 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6744 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6904 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6904] == mem[_6904]
                                                if mem[_6904] > _6504:
                                                    _7104 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _7104 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
            else:
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_3fc9f86e[idx]
                if not ext_call.success:
                    _2220 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 15
                    mem[mem[64] + 96] = 'RarityAdventure'
                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                    emit 0x413165ba: mem[mem[64] len _2220 + -mem[64] + 128]
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                    if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                        if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                            revert with 'NH{q', 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                        while s < sub_8483d76e[stor0[idx]]['level']:
                            if s and 1000 * 10^18 > -1 / s:
                                revert with 'NH{q', 17
                            if t > (-1000 * 10^18 * s) - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]]['xp']:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5281 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5353 = mem[_5281]
                                    require mem[_5281] == mem[_5281]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _5649 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _5649 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5889 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5889] == mem[_5889]
                                        if mem[_5889] > _5353:
                                            _6125 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _6125 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _4715 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _4715 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5761 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5790 = mem[_5761]
                                        require mem[_5761] == mem[_5761]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6169 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6169 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6328 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6328] == mem[_6328]
                                            if mem[_6328] > _5790:
                                                _6625 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6625 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _4777 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _4777 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] > -2:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['level']++
                                if sub_8483d76e[stor0[idx]]['xp'] < t:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['xp'] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6443 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6505 = mem[_6443]
                                        require mem[_6443] == mem[_6443]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6745 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6745 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6909 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6909] == mem[_6909]
                                            if mem[_6909] > _6505:
                                                _7105 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _7105 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                    else:
                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2297] == mem[_2297]
                        if not mem[_2297]:
                            if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                revert with 'NH{q', 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                            while s < sub_8483d76e[stor0[idx]]['level']:
                                if s and 1000 * 10^18 > -1 / s:
                                    revert with 'NH{q', 17
                                if t > (-1000 * 10^18 * s) - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]]['xp']:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5282 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5354 = mem[_5282]
                                        require mem[_5282] == mem[_5282]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _5652 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _5652 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5892 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5892] == mem[_5892]
                                            if mem[_5892] > _5354:
                                                _6127 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6127 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _4718 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _4718 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5762 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5792 = mem[_5762]
                                            require mem[_5762] == mem[_5762]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6170 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6170 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6332 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6332] == mem[_6332]
                                                if mem[_6332] > _5792:
                                                    _6626 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6626 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    _4778 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x5faa6392: mem[mem[64] len _4778 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]]['level'] > -2:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['level']++
                                    if sub_8483d76e[stor0[idx]]['xp'] < t:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['xp'] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6446 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6506 = mem[_6446]
                                            require mem[_6446] == mem[_6446]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6746 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6746 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6914 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6914] == mem[_6914]
                                                if mem[_6914] > _6506:
                                                    _7106 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _7106 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _2402 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 'CellarDungeon'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _2402 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                    revert with 'NH{q', 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                                while s < sub_8483d76e[stor0[idx]]['level']:
                                    if s and 1000 * 10^18 > -1 / s:
                                        revert with 'NH{q', 17
                                    if t > (-1000 * 10^18 * s) - 1:
                                        revert with 'NH{q', 17
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]]['xp']:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5283 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5355 = mem[_5283]
                                            require mem[_5283] == mem[_5283]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _5655 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _5655 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5895 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5895] == mem[_5895]
                                                if mem[_5895] > _5355:
                                                    _6129 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6129 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _4721 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _4721 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5763 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5794 = mem[_5763]
                                                require mem[_5763] == mem[_5763]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6171 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6171 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6336 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6336] == mem[_6336]
                                                    if mem[_6336] > _5794:
                                                        _6627 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _6627 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                    else:
                                        _4779 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _4779 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]]['level'] > -2:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['level']++
                                        if sub_8483d76e[stor0[idx]]['xp'] < t:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['xp'] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6449 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6507 = mem[_6449]
                                                require mem[_6449] == mem[_6449]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6747 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6747 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6919 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6919] == mem[_6919]
                                                    if mem[_6919] > _6507:
                                                        _7107 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _7107 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _2409 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 'CellarDungeon'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _2409 + -mem[64] + 128]
                                if block.timestamp > -86401:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                                sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                                if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                    revert with 'NH{q', 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                                while s < sub_8483d76e[stor0[idx]]['level']:
                                    if s and 1000 * 10^18 > -1 / s:
                                        revert with 'NH{q', 17
                                    if t > (-1000 * 10^18 * s) - 1:
                                        revert with 'NH{q', 17
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]]['xp']:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5284 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5356 = mem[_5284]
                                            require mem[_5284] == mem[_5284]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _5658 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _5658 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5898 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5898] == mem[_5898]
                                                if mem[_5898] > _5356:
                                                    _6131 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6131 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _4724 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _4724 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5764 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5796 = mem[_5764]
                                                require mem[_5764] == mem[_5764]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6172 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6172 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6340 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6340] == mem[_6340]
                                                    if mem[_6340] > _5796:
                                                        _6628 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _6628 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                    else:
                                        _4780 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _4780 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]]['level'] > -2:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['level']++
                                        if sub_8483d76e[stor0[idx]]['xp'] < t:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['xp'] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6452 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6508 = mem[_6452]
                                                require mem[_6452] == mem[_6452]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6748 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6748 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6924 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6924] == mem[_6924]
                                                    if mem[_6924] > _6508:
                                                        _7108 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _7108 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                else:
                    _2225 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 15
                    mem[mem[64] + 96] = 'RarityAdventure'
                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                    emit 0x5faa6392: mem[mem[64] len _2225 + -mem[64] + 128]
                    if sub_8483d76e[stor0[idx]]['xp'] > 0xfffffffffffffffffffffffffffffffffffffffffffffff2728d948e8857ffff:
                        revert with 'NH{q', 17
                    sub_8483d76e[stor0[idx]]['xp'] += 250 * 10^18
                    if block.timestamp > -86401:
                        revert with 'NH{q', 17
                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                    sub_8483d76e[stor0[idx]]['rarityAdventureLog'] = block.timestamp + (24 * 3600)
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                    if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                        if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                            revert with 'NH{q', 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                        while s < sub_8483d76e[stor0[idx]]['level']:
                            if s and 1000 * 10^18 > -1 / s:
                                revert with 'NH{q', 17
                            if t > (-1000 * 10^18 * s) - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]]['xp']:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5285 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5357 = mem[_5285]
                                    require mem[_5285] == mem[_5285]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _5661 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _5661 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5901 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5901] == mem[_5901]
                                        if mem[_5901] > _5357:
                                            _6133 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _6133 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _4727 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _4727 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5765 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5798 = mem[_5765]
                                        require mem[_5765] == mem[_5765]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6173 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6173 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6344 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6344] == mem[_6344]
                                            if mem[_6344] > _5798:
                                                _6629 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6629 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _4781 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _4781 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] > -2:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['level']++
                                if sub_8483d76e[stor0[idx]]['xp'] < t:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['xp'] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6455 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6509 = mem[_6455]
                                        require mem[_6455] == mem[_6455]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6749 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6749 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6929 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6929] == mem[_6929]
                                            if mem[_6929] > _6509:
                                                _7109 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _7109 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                    else:
                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2481 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2481] == mem[_2481]
                        if not mem[_2481]:
                            if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                revert with 'NH{q', 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                            while s < sub_8483d76e[stor0[idx]]['level']:
                                if s and 1000 * 10^18 > -1 / s:
                                    revert with 'NH{q', 17
                                if t > (-1000 * 10^18 * s) - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]]['xp']:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5286 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5358 = mem[_5286]
                                        require mem[_5286] == mem[_5286]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _5664 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _5664 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5904 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5904] == mem[_5904]
                                            if mem[_5904] > _5358:
                                                _6135 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6135 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _4730 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _4730 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5766 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5800 = mem[_5766]
                                            require mem[_5766] == mem[_5766]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6174 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6174 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6348 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6348] == mem[_6348]
                                                if mem[_6348] > _5800:
                                                    _6630 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6630 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    _4782 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x5faa6392: mem[mem[64] len _4782 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]]['level'] > -2:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['level']++
                                    if sub_8483d76e[stor0[idx]]['xp'] < t:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['xp'] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6458 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6510 = mem[_6458]
                                            require mem[_6458] == mem[_6458]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6750 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6750 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6934 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6934] == mem[_6934]
                                                if mem[_6934] > _6510:
                                                    _7110 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _7110 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _2704 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 'CellarDungeon'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _2704 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                    revert with 'NH{q', 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                                while s < sub_8483d76e[stor0[idx]]['level']:
                                    if s and 1000 * 10^18 > -1 / s:
                                        revert with 'NH{q', 17
                                    if t > (-1000 * 10^18 * s) - 1:
                                        revert with 'NH{q', 17
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]]['xp']:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5287 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5359 = mem[_5287]
                                            require mem[_5287] == mem[_5287]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _5667 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _5667 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5907 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5907] == mem[_5907]
                                                if mem[_5907] > _5359:
                                                    _6137 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6137 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _4733 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _4733 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5767 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5802 = mem[_5767]
                                                require mem[_5767] == mem[_5767]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6175 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6175 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6352 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6352] == mem[_6352]
                                                    if mem[_6352] > _5802:
                                                        _6631 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _6631 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                    else:
                                        _4783 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _4783 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]]['level'] > -2:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['level']++
                                        if sub_8483d76e[stor0[idx]]['xp'] < t:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['xp'] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6461 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6511 = mem[_6461]
                                                require mem[_6461] == mem[_6461]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6751 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6751 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6939 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6939] == mem[_6939]
                                                    if mem[_6939] > _6511:
                                                        _7111 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _7111 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _2718 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 'CellarDungeon'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _2718 + -mem[64] + 128]
                                if block.timestamp > -86401:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                                sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                                if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                    revert with 'NH{q', 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                                while s < sub_8483d76e[stor0[idx]]['level']:
                                    if s and 1000 * 10^18 > -1 / s:
                                        revert with 'NH{q', 17
                                    if t > (-1000 * 10^18 * s) - 1:
                                        revert with 'NH{q', 17
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]]['xp']:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5288 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5360 = mem[_5288]
                                            require mem[_5288] == mem[_5288]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _5670 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _5670 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5910 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5910] == mem[_5910]
                                                if mem[_5910] > _5360:
                                                    _6139 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6139 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _4736 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _4736 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5768 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5804 = mem[_5768]
                                                require mem[_5768] == mem[_5768]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6176 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6176 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6356 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6356] == mem[_6356]
                                                    if mem[_6356] > _5804:
                                                        _6632 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _6632 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                    else:
                                        _4784 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _4784 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]]['level'] > -2:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['level']++
                                        if sub_8483d76e[stor0[idx]]['xp'] < t:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['xp'] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6464 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6512 = mem[_6464]
                                                require mem[_6464] == mem[_6464]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6752 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6752 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6944 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6944] == mem[_6944]
                                                    if mem[_6944] > _6512:
                                                        _7112 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _7112 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if bool(stor4[address(msg.sender)]) != 1:
            revert with 0, '!ownerOrApproved'
        idx = 0
        while idx < sub_3fc9f86e.length:
            mem[0] = sub_3fc9f86e[idx]
            mem[32] = 3
            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
            if block.timestamp <= sub_8483d76e[stor0[idx]]['rarityAdventureLog']:
                mem[0] = sub_3fc9f86e[idx]
                mem[32] = 3
                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                    if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                        revert with 'NH{q', 17
                    s = 1
                    t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                    while s < sub_8483d76e[stor0[idx]]['level']:
                        if s and 1000 * 10^18 > -1 / s:
                            revert with 'NH{q', 17
                        if t > (-1000 * 10^18 * s) - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + (1000 * 10^18 * s)
                        continue 
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    if t > sub_8483d76e[stor0[idx]]['xp']:
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        mem[mem[64]] = 'level'
                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5289 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5361 = mem[_5289]
                                require mem[_5289] == mem[_5289]
                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _5673 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 9
                                    mem[mem[64] + 96] = 'GoldClaim'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _5673 + -mem[64] + 128]
                                else:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5913 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5913] == mem[_5913]
                                    if mem[_5913] > _5361:
                                        _6141 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _6141 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'claimedGoldByLevel'
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                    else:
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        if not ext_call.success:
                            _4739 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 7
                            mem[mem[64] + 96] = 'LevelUp'
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x413165ba: mem[mem[64] len _4739 + -mem[64] + 128]
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5769 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5806 = mem[_5769]
                                    require mem[_5769] == mem[_5769]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _6177 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _6177 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6360 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6360] == mem[_6360]
                                        if mem[_6360] > _5806:
                                            _6633 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _6633 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            _4785 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 7
                            mem[mem[64] + 96] = 'LevelUp'
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x5faa6392: mem[mem[64] len _4785 + -mem[64] + 128]
                            if sub_8483d76e[stor0[idx]]['level'] > -2:
                                revert with 'NH{q', 17
                            sub_8483d76e[stor0[idx]]['level']++
                            if sub_8483d76e[stor0[idx]]['xp'] < t:
                                revert with 'NH{q', 17
                            sub_8483d76e[stor0[idx]]['xp'] -= t
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6467 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6513 = mem[_6467]
                                    require mem[_6467] == mem[_6467]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _6753 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _6753 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6949 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6949] == mem[_6949]
                                        if mem[_6949] > _6513:
                                            _7113 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _7113 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                else:
                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_3fc9f86e[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2232 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2232] == mem[_2232]
                    if not mem[_2232]:
                        if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                            revert with 'NH{q', 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                        while s < sub_8483d76e[stor0[idx]]['level']:
                            if s and 1000 * 10^18 > -1 / s:
                                revert with 'NH{q', 17
                            if t > (-1000 * 10^18 * s) - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]]['xp']:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5290 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5362 = mem[_5290]
                                    require mem[_5290] == mem[_5290]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _5676 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _5676 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5916 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5916] == mem[_5916]
                                        if mem[_5916] > _5362:
                                            _6143 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _6143 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _4742 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _4742 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5770 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5808 = mem[_5770]
                                        require mem[_5770] == mem[_5770]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6178 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6178 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6364 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6364] == mem[_6364]
                                            if mem[_6364] > _5808:
                                                _6634 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6634 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _4786 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _4786 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] > -2:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['level']++
                                if sub_8483d76e[stor0[idx]]['xp'] < t:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['xp'] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6470 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6514 = mem[_6470]
                                        require mem[_6470] == mem[_6470]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6754 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6754 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6954 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6954] == mem[_6954]
                                            if mem[_6954] > _6514:
                                                _7114 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _7114 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                    else:
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        if not ext_call.success:
                            _2293 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 13
                            mem[mem[64] + 96] = 'CellarDungeon'
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x413165ba: mem[mem[64] len _2293 + -mem[64] + 128]
                            if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                revert with 'NH{q', 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                            while s < sub_8483d76e[stor0[idx]]['level']:
                                if s and 1000 * 10^18 > -1 / s:
                                    revert with 'NH{q', 17
                                if t > (-1000 * 10^18 * s) - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]]['xp']:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5291 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5363 = mem[_5291]
                                        require mem[_5291] == mem[_5291]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _5679 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _5679 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5919 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5919] == mem[_5919]
                                            if mem[_5919] > _5363:
                                                _6145 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6145 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _4745 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _4745 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5771 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5810 = mem[_5771]
                                            require mem[_5771] == mem[_5771]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6179 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6179 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6368 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6368] == mem[_6368]
                                                if mem[_6368] > _5810:
                                                    _6635 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6635 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    _4787 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x5faa6392: mem[mem[64] len _4787 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]]['level'] > -2:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['level']++
                                    if sub_8483d76e[stor0[idx]]['xp'] < t:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['xp'] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6473 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6515 = mem[_6473]
                                            require mem[_6473] == mem[_6473]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6755 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6755 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6959 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6959] == mem[_6959]
                                                if mem[_6959] > _6515:
                                                    _7115 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _7115 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            _2296 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 13
                            mem[mem[64] + 96] = 'CellarDungeon'
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x5faa6392: mem[mem[64] len _2296 + -mem[64] + 128]
                            if block.timestamp > -86401:
                                revert with 'NH{q', 17
                            mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                            sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                            if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                revert with 'NH{q', 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                            while s < sub_8483d76e[stor0[idx]]['level']:
                                if s and 1000 * 10^18 > -1 / s:
                                    revert with 'NH{q', 17
                                if t > (-1000 * 10^18 * s) - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]]['xp']:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5292 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5364 = mem[_5292]
                                        require mem[_5292] == mem[_5292]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _5682 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _5682 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5922 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5922] == mem[_5922]
                                            if mem[_5922] > _5364:
                                                _6147 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6147 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _4748 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _4748 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5772 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5812 = mem[_5772]
                                            require mem[_5772] == mem[_5772]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6180 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6180 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6372 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6372] == mem[_6372]
                                                if mem[_6372] > _5812:
                                                    _6636 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6636 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    _4788 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x5faa6392: mem[mem[64] len _4788 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]]['level'] > -2:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['level']++
                                    if sub_8483d76e[stor0[idx]]['xp'] < t:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['xp'] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6476 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6516 = mem[_6476]
                                            require mem[_6476] == mem[_6476]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6756 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6756 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6964 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6964] == mem[_6964]
                                                if mem[_6964] > _6516:
                                                    _7116 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _7116 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
            else:
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_3fc9f86e[idx]
                if not ext_call.success:
                    _2222 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 15
                    mem[mem[64] + 96] = 'RarityAdventure'
                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                    emit 0x413165ba: mem[mem[64] len _2222 + -mem[64] + 128]
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                    if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                        if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                            revert with 'NH{q', 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                        while s < sub_8483d76e[stor0[idx]]['level']:
                            if s and 1000 * 10^18 > -1 / s:
                                revert with 'NH{q', 17
                            if t > (-1000 * 10^18 * s) - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]]['xp']:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5293 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5365 = mem[_5293]
                                    require mem[_5293] == mem[_5293]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _5685 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _5685 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5925 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5925] == mem[_5925]
                                        if mem[_5925] > _5365:
                                            _6149 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _6149 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _4751 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _4751 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5773 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5814 = mem[_5773]
                                        require mem[_5773] == mem[_5773]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6181 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6181 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6376 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6376] == mem[_6376]
                                            if mem[_6376] > _5814:
                                                _6637 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6637 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _4789 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _4789 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] > -2:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['level']++
                                if sub_8483d76e[stor0[idx]]['xp'] < t:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['xp'] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6479 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6517 = mem[_6479]
                                        require mem[_6479] == mem[_6479]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6757 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6757 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6969 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6969] == mem[_6969]
                                            if mem[_6969] > _6517:
                                                _7117 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _7117 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                    else:
                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2298] == mem[_2298]
                        if not mem[_2298]:
                            if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                revert with 'NH{q', 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                            while s < sub_8483d76e[stor0[idx]]['level']:
                                if s and 1000 * 10^18 > -1 / s:
                                    revert with 'NH{q', 17
                                if t > (-1000 * 10^18 * s) - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]]['xp']:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5294 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5366 = mem[_5294]
                                        require mem[_5294] == mem[_5294]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _5688 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _5688 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5928 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5928] == mem[_5928]
                                            if mem[_5928] > _5366:
                                                _6151 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6151 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _4754 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _4754 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5774 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5816 = mem[_5774]
                                            require mem[_5774] == mem[_5774]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6182 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6182 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6380 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6380] == mem[_6380]
                                                if mem[_6380] > _5816:
                                                    _6638 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6638 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    _4790 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x5faa6392: mem[mem[64] len _4790 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]]['level'] > -2:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['level']++
                                    if sub_8483d76e[stor0[idx]]['xp'] < t:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['xp'] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6482 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6518 = mem[_6482]
                                            require mem[_6482] == mem[_6482]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6758 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6758 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6974 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6974] == mem[_6974]
                                                if mem[_6974] > _6518:
                                                    _7118 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _7118 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _2408 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 'CellarDungeon'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _2408 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                    revert with 'NH{q', 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                                while s < sub_8483d76e[stor0[idx]]['level']:
                                    if s and 1000 * 10^18 > -1 / s:
                                        revert with 'NH{q', 17
                                    if t > (-1000 * 10^18 * s) - 1:
                                        revert with 'NH{q', 17
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]]['xp']:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5295 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5367 = mem[_5295]
                                            require mem[_5295] == mem[_5295]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _5691 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _5691 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5931 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5931] == mem[_5931]
                                                if mem[_5931] > _5367:
                                                    _6153 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6153 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _4757 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _4757 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5775 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5818 = mem[_5775]
                                                require mem[_5775] == mem[_5775]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6183 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6183 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6384 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6384] == mem[_6384]
                                                    if mem[_6384] > _5818:
                                                        _6639 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _6639 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                    else:
                                        _4791 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _4791 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]]['level'] > -2:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['level']++
                                        if sub_8483d76e[stor0[idx]]['xp'] < t:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['xp'] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6485 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6519 = mem[_6485]
                                                require mem[_6485] == mem[_6485]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6759 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6759 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6979 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6979] == mem[_6979]
                                                    if mem[_6979] > _6519:
                                                        _7119 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _7119 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _2412 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 'CellarDungeon'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _2412 + -mem[64] + 128]
                                if block.timestamp > -86401:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                                sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                                if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                    revert with 'NH{q', 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                                while s < sub_8483d76e[stor0[idx]]['level']:
                                    if s and 1000 * 10^18 > -1 / s:
                                        revert with 'NH{q', 17
                                    if t > (-1000 * 10^18 * s) - 1:
                                        revert with 'NH{q', 17
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]]['xp']:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5296 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5368 = mem[_5296]
                                            require mem[_5296] == mem[_5296]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _5694 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _5694 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5934 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5934] == mem[_5934]
                                                if mem[_5934] > _5368:
                                                    _6155 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6155 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _4760 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _4760 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5776 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5820 = mem[_5776]
                                                require mem[_5776] == mem[_5776]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6184 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6184 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6388 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6388] == mem[_6388]
                                                    if mem[_6388] > _5820:
                                                        _6640 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _6640 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                    else:
                                        _4792 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _4792 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]]['level'] > -2:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['level']++
                                        if sub_8483d76e[stor0[idx]]['xp'] < t:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['xp'] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6488 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6520 = mem[_6488]
                                                require mem[_6488] == mem[_6488]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6760 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6760 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6984 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6984] == mem[_6984]
                                                    if mem[_6984] > _6520:
                                                        _7120 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _7120 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                else:
                    _2228 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 15
                    mem[mem[64] + 96] = 'RarityAdventure'
                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                    emit 0x5faa6392: mem[mem[64] len _2228 + -mem[64] + 128]
                    if sub_8483d76e[stor0[idx]]['xp'] > 0xfffffffffffffffffffffffffffffffffffffffffffffff2728d948e8857ffff:
                        revert with 'NH{q', 17
                    sub_8483d76e[stor0[idx]]['xp'] += 250 * 10^18
                    if block.timestamp > -86401:
                        revert with 'NH{q', 17
                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                    sub_8483d76e[stor0[idx]]['rarityAdventureLog'] = block.timestamp + (24 * 3600)
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                    if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                        if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                            revert with 'NH{q', 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                        while s < sub_8483d76e[stor0[idx]]['level']:
                            if s and 1000 * 10^18 > -1 / s:
                                revert with 'NH{q', 17
                            if t > (-1000 * 10^18 * s) - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]]['xp']:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 'level'
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]]['level'] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5297 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5369 = mem[_5297]
                                    require mem[_5297] == mem[_5297]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _5697 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _5697 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5937 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5937] == mem[_5937]
                                        if mem[_5937] > _5369:
                                            _6157 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x5faa6392: mem[mem[64] len _6157 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'claimedGoldByLevel'
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _4763 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _4763 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5777 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5822 = mem[_5777]
                                        require mem[_5777] == mem[_5777]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6185 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6185 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6392 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6392] == mem[_6392]
                                            if mem[_6392] > _5822:
                                                _6641 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6641 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _4793 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 'LevelUp'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _4793 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] > -2:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['level']++
                                if sub_8483d76e[stor0[idx]]['xp'] < t:
                                    revert with 'NH{q', 17
                                sub_8483d76e[stor0[idx]]['xp'] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6491 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6521 = mem[_6491]
                                        require mem[_6491] == mem[_6491]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _6761 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _6761 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6989 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6989] == mem[_6989]
                                            if mem[_6989] > _6521:
                                                _7121 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _7121 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                    else:
                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2488 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2488] == mem[_2488]
                        if not mem[_2488]:
                            if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                revert with 'NH{q', 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                            while s < sub_8483d76e[stor0[idx]]['level']:
                                if s and 1000 * 10^18 > -1 / s:
                                    revert with 'NH{q', 17
                                if t > (-1000 * 10^18 * s) - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]]['xp']:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 'level'
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]]['level'] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5298 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5370 = mem[_5298]
                                        require mem[_5298] == mem[_5298]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _5700 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim'
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x413165ba: mem[mem[64] len _5700 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5940 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5940] == mem[_5940]
                                            if mem[_5940] > _5370:
                                                _6159 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x5faa6392: mem[mem[64] len _6159 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 'claimedGoldByLevel'
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _4766 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x413165ba: mem[mem[64] len _4766 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5778 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5824 = mem[_5778]
                                            require mem[_5778] == mem[_5778]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6186 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6186 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6396 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6396] == mem[_6396]
                                                if mem[_6396] > _5824:
                                                    _6642 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6642 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    _4794 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 'LevelUp'
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x5faa6392: mem[mem[64] len _4794 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]]['level'] > -2:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['level']++
                                    if sub_8483d76e[stor0[idx]]['xp'] < t:
                                        revert with 'NH{q', 17
                                    sub_8483d76e[stor0[idx]]['xp'] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6494 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6522 = mem[_6494]
                                            require mem[_6494] == mem[_6494]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _6762 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _6762 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6994 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6994] == mem[_6994]
                                                if mem[_6994] > _6522:
                                                    _7122 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _7122 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                        else:
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _2714 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 'CellarDungeon'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x413165ba: mem[mem[64] len _2714 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                    revert with 'NH{q', 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                                while s < sub_8483d76e[stor0[idx]]['level']:
                                    if s and 1000 * 10^18 > -1 / s:
                                        revert with 'NH{q', 17
                                    if t > (-1000 * 10^18 * s) - 1:
                                        revert with 'NH{q', 17
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]]['xp']:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5299 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5371 = mem[_5299]
                                            require mem[_5299] == mem[_5299]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _5703 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _5703 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5943 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5943] == mem[_5943]
                                                if mem[_5943] > _5371:
                                                    _6161 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6161 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _4769 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _4769 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5779 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5826 = mem[_5779]
                                                require mem[_5779] == mem[_5779]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6187 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6187 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6400 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6400] == mem[_6400]
                                                    if mem[_6400] > _5826:
                                                        _6643 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _6643 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                    else:
                                        _4795 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _4795 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]]['level'] > -2:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['level']++
                                        if sub_8483d76e[stor0[idx]]['xp'] < t:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['xp'] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6497 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6523 = mem[_6497]
                                                require mem[_6497] == mem[_6497]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6763 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6763 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6999 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6999] == mem[_6999]
                                                    if mem[_6999] > _6523:
                                                        _7123 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _7123 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                            else:
                                _2722 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 'CellarDungeon'
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x5faa6392: mem[mem[64] len _2722 + -mem[64] + 128]
                                if block.timestamp > -86401:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                                sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                                if sub_8483d76e[stor0[idx]]['level'] and 1000 * 10^18 > -1 / sub_8483d76e[stor0[idx]]['level']:
                                    revert with 'NH{q', 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]]['level']
                                while s < sub_8483d76e[stor0[idx]]['level']:
                                    if s and 1000 * 10^18 > -1 / s:
                                        revert with 'NH{q', 17
                                    if t > (-1000 * 10^18 * s) - 1:
                                        revert with 'NH{q', 17
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]]['xp']:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 'level'
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]]['level'] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5300 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5372 = mem[_5300]
                                            require mem[_5300] == mem[_5300]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _5706 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim'
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x413165ba: mem[mem[64] len _5706 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5946 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5946] == mem[_5946]
                                                if mem[_5946] > _5372:
                                                    _6163 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x5faa6392: mem[mem[64] len _6163 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 'claimedGoldByLevel'
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _4772 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x413165ba: mem[mem[64] len _4772 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5780 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5828 = mem[_5780]
                                                require mem[_5780] == mem[_5780]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6188 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6188 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6404 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6404] == mem[_6404]
                                                    if mem[_6404] > _5828:
                                                        _6644 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _6644 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
                                    else:
                                        _4796 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 'LevelUp'
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x5faa6392: mem[mem[64] len _4796 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]]['level'] > -2:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['level']++
                                        if sub_8483d76e[stor0[idx]]['xp'] < t:
                                            revert with 'NH{q', 17
                                        sub_8483d76e[stor0[idx]]['xp'] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 'level'
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]]['level'] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 'level'
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]]['level'] > sub_8483d76e[stor0[idx]]['claimedGoldByLevel']:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6500 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6524 = mem[_6500]
                                                require mem[_6500] == mem[_6500]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _6764 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim'
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x413165ba: mem[mem[64] len _6764 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7004 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7004] == mem[_7004]
                                                    if mem[_7004] > _6524:
                                                        _7124 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim'
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x5faa6392: mem[mem[64] len _7124 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 'claimedGoldByLevel'
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]]['claimedGoldByLevel'] = sub_8483d76e[stor0[idx]]['level']
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
