contract main {




// =====================  Runtime code  =====================


const name = 'Rarity Personal Daycare', 0

const symbol = '', 0


array of uint256 sub_3fc9f86e;
address stor1;
mapping of uint8 stor2;
mapping of uint256 sub_8483d76e;
mapping of uint8 stor4;

function sub_3fc9f86e(?) payable {
    require calldata.size - 4 >= 32
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
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_8483d76e[arg1][arg2[all]]
}

function registrations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        if bool(stor4[msg.sender]) != 1:
            revert with 0, '!ownerOrApproved'
    stor4[address(arg1)] = 1
}

function sub_fc101d9b(?) payable {
    if stor1 != msg.sender:
        if bool(stor4[msg.sender]) != 1:
            revert with 0, '!ownerOrApproved'
    idx = sub_3fc9f86e.length
    while idx:
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= sub_3fc9f86e.length:
            revert with 0, 50
        mem[32] = 2
        stor2[stor0[idx]] = 0
        if sub_3fc9f86e.length < 1:
            revert with 0, 17
        if sub_3fc9f86e.length - 1 >= sub_3fc9f86e.length:
            revert with 0, 50
        if idx - 1 >= sub_3fc9f86e.length:
            revert with 0, 50
        sub_3fc9f86e[idx] = sub_3fc9f86e[sub_3fc9f86e.length]
        if not sub_3fc9f86e.length:
            revert with 0, 49
        mem[0] = 0
        sub_3fc9f86e[sub_3fc9f86e.length] = 0
        sub_3fc9f86e.length--
        if not idx:
            revert with 0, 17
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
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _47 = mem[_45 + 32]
        sub_8483d76e[stor0[idx]][0] = mem[_45]
        sub_8483d76e[stor0[idx]][0] = mem[_45 + 96]
        mem[0] = sub_3fc9f86e[idx]
        mem[32] = 3
        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
        sub_8483d76e[stor0[idx]]['rarityAdventureLog'] = _47
        mem[mem[64] + 4] = sub_3fc9f86e[idx]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
             gas gas_remaining wei
            args sub_3fc9f86e[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _62 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _63 = mem[_62]
        mem[0] = sub_3fc9f86e[idx]
        mem[32] = 3
        mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
        sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = _63
        mem[mem[64] + 4] = sub_3fc9f86e[idx]
        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
             gas gas_remaining wei
            args sub_3fc9f86e[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _70 = mem[_69]
        mem[0] = sub_3fc9f86e[idx]
        mem[32] = 3
        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
        sub_8483d76e[stor0[idx]][1668047209] = _70
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _38 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = 20
    mem[mem[64] + 96] = 0x53796e63656453756d6d6f6e6572436f756e743a000000000000000000000000
    mem[mem[64] + 32] = sub_3fc9f86e.length
    emit 0x625faa63: mem[mem[64] len _38 + -mem[64] + 128]
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
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _81 = mem[_78 + 32]
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]][0] = mem[_78]
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]][0] = mem[_78 + 96]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 3
                mem[mem[64] + 18] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['rarityAdventureLog'] = _81
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _112 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _114 = mem[_112]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 3
                mem[mem[64] + 16] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['cellarDungeonLog'] = _114
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _126 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _128 = mem[_126]
                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                mem[mem[64] + 18] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]][1668047209] = _128
                sub_3fc9f86e.length++
                sub_3fc9f86e[sub_3fc9f86e.length] = cd[((32 * idx) + cd[4] + 36)]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 2
                stor2[cd[((32 * idx) + cd[4] + 36)]] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if bool(stor4[msg.sender]) != 1:
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
                _79 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _85 = mem[_79 + 32]
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]][0] = mem[_79]
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]][0] = mem[_79 + 96]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 3
                mem[mem[64] + 18] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['rarityAdventureLog'] = _85
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _113 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _115 = mem[_113]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 3
                mem[mem[64] + 16] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]]['cellarDungeonLog'] = _115
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimed(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _129 = mem[_127]
                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                mem[mem[64] + 18] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                sub_8483d76e[cd[((32 * idx) + cd[4] + 36)]][1668047209] = _129
                sub_3fc9f86e.length++
                sub_3fc9f86e[sub_3fc9f86e.length] = cd[((32 * idx) + cd[4] + 36)]
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 2
                stor2[cd[((32 * idx) + cd[4] + 36)]] = 1
            if idx == -1:
                revert with 0, 17
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
                    if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                        revert with 0, 17
                    s = 1
                    t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                    while s < sub_8483d76e[stor0[idx]][0]:
                        if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                            revert with 0, 17
                        if t > !(1000 * 10^18 * s):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + (1000 * 10^18 * s)
                        continue 
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    if t > sub_8483d76e[stor0[idx]][0]:
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                        if sub_8483d76e[stor0[idx]][0] != 1:
                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7560 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7728 = mem[_7560]
                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _7920 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 9
                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    mem[0] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _7920 + -mem[64] + 128]
                                else:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8280 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_8280] > _7728:
                                        _8568 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _8568 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                    else:
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        if not ext_call.success:
                            _6892 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 7
                            mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0xfe413165: mem[mem[64] len _6892 + -mem[64] + 128]
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7848 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7924 = mem[_7848]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _8352 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _8352 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8574 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_8574] > _7924:
                                            _8976 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _8976 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            _7082 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 7
                            mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x625faa63: mem[mem[64] len _7082 + -mem[64] + 128]
                            if sub_8483d76e[stor0[idx]][0] > -2:
                                revert with 0, 17
                            sub_8483d76e[stor0[idx]][0]++
                            if sub_8483d76e[stor0[idx]][0] < t:
                                revert with 0, 17
                            sub_8483d76e[stor0[idx]][0] -= t
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8575 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8766 = mem[_8575]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _9125 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _9125 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9384 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9384] > _8766:
                                            _9432 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _9432 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                else:
                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_3fc9f86e[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3356 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3356]:
                        if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                            revert with 0, 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                        while s < sub_8483d76e[stor0[idx]][0]:
                            if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            if t > !(1000 * 10^18 * s):
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]][0]:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7567 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7731 = mem[_7567]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _7927 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _7927 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8283 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_8283] > _7731:
                                            _8576 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _8576 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _6900 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _6900 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7851 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7931 = mem[_7851]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8356 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8356 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8582 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8582] > _7931:
                                                _8982 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8982 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _7090 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _7090 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > -2:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0]++
                                if sub_8483d76e[stor0[idx]][0] < t:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8583 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8773 = mem[_8583]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _9134 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _9134 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9385 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_9385] > _8773:
                                                _9438 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9438 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                    else:
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        if not ext_call.success:
                            _3436 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 13
                            mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0xfe413165: mem[mem[64] len _3436 + -mem[64] + 128]
                            if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                            while s < sub_8483d76e[stor0[idx]][0]:
                                if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                if t > !(1000 * 10^18 * s):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]][0]:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7574 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7734 = mem[_7574]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _7934 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _7934 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8286 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8286] > _7734:
                                                _8584 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8584 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _6908 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _6908 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7854 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7938 = mem[_7854]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8360 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8360 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8590 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8590] > _7938:
                                                    _8988 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8988 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    _7098 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x625faa63: mem[mem[64] len _7098 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]][0] > -2:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0]++
                                    if sub_8483d76e[stor0[idx]][0] < t:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8591 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8780 = mem[_8591]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _9143 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _9143 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9386 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_9386] > _8780:
                                                    _9444 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9444 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            _3462 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 13
                            mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x625faa63: mem[mem[64] len _3462 + -mem[64] + 128]
                            if block.timestamp > -86401:
                                revert with 0, 17
                            mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                            sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                            if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                            while s < sub_8483d76e[stor0[idx]][0]:
                                if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                if t > !(1000 * 10^18 * s):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]][0]:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7581 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7737 = mem[_7581]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _7941 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _7941 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8289 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8289] > _7737:
                                                _8592 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8592 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _6916 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _6916 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7857 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7945 = mem[_7857]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8364 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8364 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8598 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8598] > _7945:
                                                    _8994 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8994 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    _7106 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x625faa63: mem[mem[64] len _7106 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]][0] > -2:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0]++
                                    if sub_8483d76e[stor0[idx]][0] < t:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8599 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8787 = mem[_8599]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _9152 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _9152 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9387 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_9387] > _8787:
                                                    _9450 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9450 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
            else:
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_3fc9f86e[idx]
                if not ext_call.success:
                    _3357 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 15
                    mem[mem[64] + 96] = 'RarityAdventure' << 136
                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                    emit 0xfe413165: mem[mem[64] len _3357 + -mem[64] + 128]
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                    if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                        if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                            revert with 0, 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                        while s < sub_8483d76e[stor0[idx]][0]:
                            if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            if t > !(1000 * 10^18 * s):
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]][0]:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7588 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7740 = mem[_7588]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _7948 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _7948 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8292 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_8292] > _7740:
                                            _8600 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _8600 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _6924 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _6924 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7860 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7952 = mem[_7860]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8368 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8368 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8606 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8606] > _7952:
                                                _9000 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9000 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _7114 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _7114 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > -2:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0]++
                                if sub_8483d76e[stor0[idx]][0] < t:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8607 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8794 = mem[_8607]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _9161 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _9161 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9388 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_9388] > _8794:
                                                _9456 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9456 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                    else:
                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3404]:
                            if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                            while s < sub_8483d76e[stor0[idx]][0]:
                                if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                if t > !(1000 * 10^18 * s):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]][0]:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7595 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7743 = mem[_7595]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _7955 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _7955 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8295 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8295] > _7743:
                                                _8608 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8608 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _6932 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _6932 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7863 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7959 = mem[_7863]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8372 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8372 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8614 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8614] > _7959:
                                                    _9006 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9006 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    _7122 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x625faa63: mem[mem[64] len _7122 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]][0] > -2:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0]++
                                    if sub_8483d76e[stor0[idx]][0] < t:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8615 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8801 = mem[_8615]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _9170 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _9170 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9389 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_9389] > _8801:
                                                    _9462 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9462 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _3522 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _3522 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                                while s < sub_8483d76e[stor0[idx]][0]:
                                    if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                        revert with 0, 17
                                    if t > !(1000 * 10^18 * s):
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]][0]:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7602 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7746 = mem[_7602]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _7962 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _7962 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8298 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8298] > _7746:
                                                    _8616 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8616 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _6940 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _6940 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7866 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7966 = mem[_7866]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _8376 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _8376 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _8622 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_8622] > _7966:
                                                        _9012 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9012 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                    else:
                                        _7130 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _7130 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]][0] > -2:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0]++
                                        if sub_8483d76e[stor0[idx]][0] < t:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8623 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8808 = mem[_8623]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _9179 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _9179 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9390 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_9390] > _8808:
                                                        _9468 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9468 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _3566 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _3566 + -mem[64] + 128]
                                if block.timestamp > -86401:
                                    revert with 0, 17
                                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                                sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                                if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                                while s < sub_8483d76e[stor0[idx]][0]:
                                    if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                        revert with 0, 17
                                    if t > !(1000 * 10^18 * s):
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]][0]:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7609 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7749 = mem[_7609]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _7969 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _7969 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8301 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8301] > _7749:
                                                    _8624 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8624 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _6948 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _6948 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7869 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7973 = mem[_7869]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _8380 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _8380 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _8630 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_8630] > _7973:
                                                        _9018 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9018 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                    else:
                                        _7138 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _7138 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]][0] > -2:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0]++
                                        if sub_8483d76e[stor0[idx]][0] < t:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8631 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8815 = mem[_8631]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _9188 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _9188 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9391 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_9391] > _8815:
                                                        _9474 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9474 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                else:
                    _3372 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 15
                    mem[mem[64] + 96] = 'RarityAdventure' << 136
                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                    emit 0x625faa63: mem[mem[64] len _3372 + -mem[64] + 128]
                    if sub_8483d76e[stor0[idx]][0] > 0xfffffffffffffffffffffffffffffffffffffffffffffff2728d948e8857ffff:
                        revert with 0, 17
                    sub_8483d76e[stor0[idx]][0] += 250 * 10^18
                    if block.timestamp > -86401:
                        revert with 0, 17
                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                    sub_8483d76e[stor0[idx]]['rarityAdventureLog'] = block.timestamp + (24 * 3600)
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                    if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                        if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                            revert with 0, 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                        while s < sub_8483d76e[stor0[idx]][0]:
                            if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            if t > !(1000 * 10^18 * s):
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]][0]:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7616 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7752 = mem[_7616]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _7976 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _7976 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8304 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_8304] > _7752:
                                            _8632 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _8632 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _6956 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _6956 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7872 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7980 = mem[_7872]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8384 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8384 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8638 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8638] > _7980:
                                                _9024 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9024 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _7146 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _7146 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > -2:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0]++
                                if sub_8483d76e[stor0[idx]][0] < t:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8639 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8822 = mem[_8639]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _9197 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _9197 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9392 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_9392] > _8822:
                                                _9480 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9480 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                    else:
                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3498 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3498]:
                            if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                            while s < sub_8483d76e[stor0[idx]][0]:
                                if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                if t > !(1000 * 10^18 * s):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]][0]:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7623 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7755 = mem[_7623]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _7983 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _7983 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8307 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8307] > _7755:
                                                _8640 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8640 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _6964 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _6964 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7875 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7987 = mem[_7875]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8388 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8388 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8646 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8646] > _7987:
                                                    _9030 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9030 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    _7154 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x625faa63: mem[mem[64] len _7154 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]][0] > -2:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0]++
                                    if sub_8483d76e[stor0[idx]][0] < t:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8647 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8829 = mem[_8647]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _9206 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _9206 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9393 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_9393] > _8829:
                                                    _9486 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9486 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _3780 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _3780 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                                while s < sub_8483d76e[stor0[idx]][0]:
                                    if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                        revert with 0, 17
                                    if t > !(1000 * 10^18 * s):
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]][0]:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7630 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7758 = mem[_7630]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _7990 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _7990 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8310 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8310] > _7758:
                                                    _8648 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8648 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _6972 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _6972 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7878 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7994 = mem[_7878]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _8392 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _8392 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _8654 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_8654] > _7994:
                                                        _9036 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9036 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                    else:
                                        _7162 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _7162 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]][0] > -2:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0]++
                                        if sub_8483d76e[stor0[idx]][0] < t:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8655 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8836 = mem[_8655]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _9215 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _9215 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9394 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_9394] > _8836:
                                                        _9492 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9492 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _3831 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _3831 + -mem[64] + 128]
                                if block.timestamp > -86401:
                                    revert with 0, 17
                                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                                sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                                if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                                while s < sub_8483d76e[stor0[idx]][0]:
                                    if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                        revert with 0, 17
                                    if t > !(1000 * 10^18 * s):
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]][0]:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7637 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7761 = mem[_7637]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _7997 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _7997 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8313 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8313] > _7761:
                                                    _8656 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8656 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _6980 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _6980 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7881 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8001 = mem[_7881]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _8396 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _8396 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _8662 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_8662] > _8001:
                                                        _9042 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9042 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                    else:
                                        _7170 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _7170 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]][0] > -2:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0]++
                                        if sub_8483d76e[stor0[idx]][0] < t:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8663 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8843 = mem[_8663]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _9224 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _9224 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9395 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_9395] > _8843:
                                                        _9498 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9498 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if bool(stor4[msg.sender]) != 1:
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
                    if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                        revert with 0, 17
                    s = 1
                    t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                    while s < sub_8483d76e[stor0[idx]][0]:
                        if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                            revert with 0, 17
                        if t > !(1000 * 10^18 * s):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + (1000 * 10^18 * s)
                        continue 
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    if t > sub_8483d76e[stor0[idx]][0]:
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                        if sub_8483d76e[stor0[idx]][0] != 1:
                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7644 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7764 = mem[_7644]
                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _8004 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 9
                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    mem[0] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _8004 + -mem[64] + 128]
                                else:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8316 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_8316] > _7764:
                                        _8664 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _8664 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                    else:
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        if not ext_call.success:
                            _6988 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 7
                            mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0xfe413165: mem[mem[64] len _6988 + -mem[64] + 128]
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7884 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8008 = mem[_7884]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _8400 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _8400 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8670 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_8670] > _8008:
                                            _9048 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _9048 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            _7178 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 7
                            mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x625faa63: mem[mem[64] len _7178 + -mem[64] + 128]
                            if sub_8483d76e[stor0[idx]][0] > -2:
                                revert with 0, 17
                            sub_8483d76e[stor0[idx]][0]++
                            if sub_8483d76e[stor0[idx]][0] < t:
                                revert with 0, 17
                            sub_8483d76e[stor0[idx]][0] -= t
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8671 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8850 = mem[_8671]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _9233 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _9233 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9396 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9396] > _8850:
                                            _9504 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _9504 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                else:
                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_3fc9f86e[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3361]:
                        if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                            revert with 0, 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                        while s < sub_8483d76e[stor0[idx]][0]:
                            if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            if t > !(1000 * 10^18 * s):
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]][0]:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7651 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7767 = mem[_7651]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _8011 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _8011 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8319 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_8319] > _7767:
                                            _8672 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _8672 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _6996 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _6996 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7887 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8015 = mem[_7887]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8404 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8404 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8678 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8678] > _8015:
                                                _9054 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9054 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _7186 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _7186 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > -2:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0]++
                                if sub_8483d76e[stor0[idx]][0] < t:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8679 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8857 = mem[_8679]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _9242 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _9242 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9397 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_9397] > _8857:
                                                _9510 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9510 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                    else:
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        if not ext_call.success:
                            _3448 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 13
                            mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0xfe413165: mem[mem[64] len _3448 + -mem[64] + 128]
                            if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                            while s < sub_8483d76e[stor0[idx]][0]:
                                if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                if t > !(1000 * 10^18 * s):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]][0]:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7658 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7770 = mem[_7658]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8018 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8018 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8322 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8322] > _7770:
                                                _8680 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8680 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _7004 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _7004 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7890 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8022 = mem[_7890]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8408 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8408 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8686 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8686] > _8022:
                                                    _9060 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9060 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    _7194 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x625faa63: mem[mem[64] len _7194 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]][0] > -2:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0]++
                                    if sub_8483d76e[stor0[idx]][0] < t:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8687 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8864 = mem[_8687]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _9251 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _9251 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9398 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_9398] > _8864:
                                                    _9516 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9516 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            _3478 = mem[64]
                            mem[mem[64]] = 64
                            mem[mem[64] + 64] = 13
                            mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                            emit 0x625faa63: mem[mem[64] len _3478 + -mem[64] + 128]
                            if block.timestamp > -86401:
                                revert with 0, 17
                            mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                            sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                            if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                            while s < sub_8483d76e[stor0[idx]][0]:
                                if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                if t > !(1000 * 10^18 * s):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]][0]:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7665 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7773 = mem[_7665]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8025 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8025 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8325 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8325] > _7773:
                                                _8688 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8688 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _7012 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _7012 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7893 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8029 = mem[_7893]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8412 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8412 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8694 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8694] > _8029:
                                                    _9066 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9066 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    _7202 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x625faa63: mem[mem[64] len _7202 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]][0] > -2:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0]++
                                    if sub_8483d76e[stor0[idx]][0] < t:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8695 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8871 = mem[_8695]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _9260 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _9260 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9399 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_9399] > _8871:
                                                    _9522 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9522 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
            else:
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_3fc9f86e[idx]
                if not ext_call.success:
                    _3362 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 15
                    mem[mem[64] + 96] = 'RarityAdventure' << 136
                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                    emit 0xfe413165: mem[mem[64] len _3362 + -mem[64] + 128]
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                    if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                        if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                            revert with 0, 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                        while s < sub_8483d76e[stor0[idx]][0]:
                            if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            if t > !(1000 * 10^18 * s):
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]][0]:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7672 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7776 = mem[_7672]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _8032 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _8032 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8328 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_8328] > _7776:
                                            _8696 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _8696 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _7020 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _7020 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7896 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8036 = mem[_7896]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8416 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8416 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8702 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8702] > _8036:
                                                _9072 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9072 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _7210 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _7210 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > -2:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0]++
                                if sub_8483d76e[stor0[idx]][0] < t:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8703 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8878 = mem[_8703]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _9269 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _9269 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9400 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_9400] > _8878:
                                                _9528 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9528 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                    else:
                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3405]:
                            if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                            while s < sub_8483d76e[stor0[idx]][0]:
                                if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                if t > !(1000 * 10^18 * s):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]][0]:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7679 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7779 = mem[_7679]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8039 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8039 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8331 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8331] > _7779:
                                                _8704 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8704 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _7028 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _7028 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7899 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8043 = mem[_7899]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8420 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8420 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8710 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8710] > _8043:
                                                    _9078 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9078 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    _7218 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x625faa63: mem[mem[64] len _7218 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]][0] > -2:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0]++
                                    if sub_8483d76e[stor0[idx]][0] < t:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8711 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8885 = mem[_8711]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _9278 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _9278 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9401 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_9401] > _8885:
                                                    _9534 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9534 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _3544 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _3544 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                                while s < sub_8483d76e[stor0[idx]][0]:
                                    if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                        revert with 0, 17
                                    if t > !(1000 * 10^18 * s):
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]][0]:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7686 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7782 = mem[_7686]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8046 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8046 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8334 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8334] > _7782:
                                                    _8712 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8712 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _7036 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _7036 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7902 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8050 = mem[_7902]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _8424 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _8424 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _8718 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_8718] > _8050:
                                                        _9084 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9084 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                    else:
                                        _7226 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _7226 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]][0] > -2:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0]++
                                        if sub_8483d76e[stor0[idx]][0] < t:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8719 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8892 = mem[_8719]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _9287 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _9287 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9402 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_9402] > _8892:
                                                        _9540 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9540 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _3587 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _3587 + -mem[64] + 128]
                                if block.timestamp > -86401:
                                    revert with 0, 17
                                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                                sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                                if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                                while s < sub_8483d76e[stor0[idx]][0]:
                                    if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                        revert with 0, 17
                                    if t > !(1000 * 10^18 * s):
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]][0]:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7693 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7785 = mem[_7693]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8053 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8053 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8337 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8337] > _7785:
                                                    _8720 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8720 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _7044 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _7044 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7905 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8057 = mem[_7905]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _8428 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _8428 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _8726 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_8726] > _8057:
                                                        _9090 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9090 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                    else:
                                        _7234 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _7234 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]][0] > -2:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0]++
                                        if sub_8483d76e[stor0[idx]][0] < t:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8727 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8899 = mem[_8727]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _9296 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _9296 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9403 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_9403] > _8899:
                                                        _9546 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9546 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                else:
                    _3386 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 15
                    mem[mem[64] + 96] = 'RarityAdventure' << 136
                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                    emit 0x625faa63: mem[mem[64] len _3386 + -mem[64] + 128]
                    if sub_8483d76e[stor0[idx]][0] > 0xfffffffffffffffffffffffffffffffffffffffffffffff2728d948e8857ffff:
                        revert with 0, 17
                    sub_8483d76e[stor0[idx]][0] += 250 * 10^18
                    if block.timestamp > -86401:
                        revert with 0, 17
                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                    sub_8483d76e[stor0[idx]]['rarityAdventureLog'] = block.timestamp + (24 * 3600)
                    mem[0] = sub_3fc9f86e[idx]
                    mem[32] = 3
                    mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                    if block.timestamp <= sub_8483d76e[stor0[idx]]['cellarDungeonLog']:
                        if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                            revert with 0, 17
                        s = 1
                        t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                        while s < sub_8483d76e[stor0[idx]][0]:
                            if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            if t > !(1000 * 10^18 * s):
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + (1000 * 10^18 * s)
                            continue 
                        mem[0] = sub_3fc9f86e[idx]
                        mem[32] = 3
                        if t > sub_8483d76e[stor0[idx]][0]:
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                            if sub_8483d76e[stor0[idx]][0] != 1:
                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7700 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7788 = mem[_7700]
                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _8060 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 9
                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        mem[0] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _8060 + -mem[64] + 128]
                                    else:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8340 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_8340] > _7788:
                                            _8728 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            emit 0x625faa63: mem[mem[64] len _8728 + -mem[64] + 128]
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _7052 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _7052 + -mem[64] + 128]
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7908 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8064 = mem[_7908]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8432 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8432 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8734 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8734] > _8064:
                                                _9096 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9096 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _7242 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 7
                                mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _7242 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > -2:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0]++
                                if sub_8483d76e[stor0[idx]][0] < t:
                                    revert with 0, 17
                                sub_8483d76e[stor0[idx]][0] -= t
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8735 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8906 = mem[_8735]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _9305 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _9305 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9404 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_9404] > _8906:
                                                _9552 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _9552 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                    else:
                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_3fc9f86e[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3505 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3505]:
                            if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                revert with 0, 17
                            s = 1
                            t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                            while s < sub_8483d76e[stor0[idx]][0]:
                                if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                if t > !(1000 * 10^18 * s):
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + (1000 * 10^18 * s)
                                continue 
                            mem[0] = sub_3fc9f86e[idx]
                            mem[32] = 3
                            if t > sub_8483d76e[stor0[idx]][0]:
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                if sub_8483d76e[stor0[idx]][0] != 1:
                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                        mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7707 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7791 = mem[_7707]
                                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_3fc9f86e[idx]
                                        if not ext_call.success:
                                            _8067 = mem[64]
                                            mem[mem[64]] = 64
                                            mem[mem[64] + 64] = 9
                                            mem[mem[64] + 96] = 'GoldClaim' << 184
                                            mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                            mem[0] = sub_3fc9f86e[idx]
                                            emit 0xfe413165: mem[mem[64] len _8067 + -mem[64] + 128]
                                        else:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8343 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_8343] > _7791:
                                                _8736 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                emit 0x625faa63: mem[mem[64] len _8736 + -mem[64] + 128]
                                                mem[0] = sub_3fc9f86e[idx]
                                                mem[32] = 3
                                                mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_3fc9f86e[idx]
                                if not ext_call.success:
                                    _7060 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0xfe413165: mem[mem[64] len _7060 + -mem[64] + 128]
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7911 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8071 = mem[_7911]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8436 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8436 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8742 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8742] > _8071:
                                                    _9102 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9102 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    _7250 = mem[64]
                                    mem[mem[64]] = 64
                                    mem[mem[64] + 64] = 7
                                    mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                    emit 0x625faa63: mem[mem[64] len _7250 + -mem[64] + 128]
                                    if sub_8483d76e[stor0[idx]][0] > -2:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0]++
                                    if sub_8483d76e[stor0[idx]][0] < t:
                                        revert with 0, 17
                                    sub_8483d76e[stor0[idx]][0] -= t
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8743 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _8913 = mem[_8743]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _9314 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _9314 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9405 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_9405] > _8913:
                                                    _9558 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _9558 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                        else:
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_3fc9f86e[idx]
                            if not ext_call.success:
                                _3810 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0xfe413165: mem[mem[64] len _3810 + -mem[64] + 128]
                                if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                                while s < sub_8483d76e[stor0[idx]][0]:
                                    if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                        revert with 0, 17
                                    if t > !(1000 * 10^18 * s):
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]][0]:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7714 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7794 = mem[_7714]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8074 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8074 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8346 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8346] > _7794:
                                                    _8744 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8744 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _7068 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _7068 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7914 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8078 = mem[_7914]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _8440 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _8440 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _8750 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_8750] > _8078:
                                                        _9108 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9108 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                    else:
                                        _7258 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _7258 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]][0] > -2:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0]++
                                        if sub_8483d76e[stor0[idx]][0] < t:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8751 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8920 = mem[_8751]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _9323 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _9323 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9406 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_9406] > _8920:
                                                        _9564 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9564 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                            else:
                                _3852 = mem[64]
                                mem[mem[64]] = 64
                                mem[mem[64] + 64] = 13
                                mem[mem[64] + 96] = 0x43656c6c617244756e67656f6e00000000000000000000000000000000000000
                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                emit 0x625faa63: mem[mem[64] len _3852 + -mem[64] + 128]
                                if block.timestamp > -86401:
                                    revert with 0, 17
                                mem[mem[64] + 16] = sha3(sub_3fc9f86e[idx], 3)
                                sub_8483d76e[stor0[idx]]['cellarDungeonLog'] = block.timestamp + (24 * 3600)
                                if sub_8483d76e[stor0[idx]][0] > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                    revert with 0, 17
                                s = 1
                                t = 1000 * 10^18 * sub_8483d76e[stor0[idx]][0]
                                while s < sub_8483d76e[stor0[idx]][0]:
                                    if s > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
                                        revert with 0, 17
                                    if t > !(1000 * 10^18 * s):
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t + (1000 * 10^18 * s)
                                    continue 
                                mem[0] = sub_3fc9f86e[idx]
                                mem[32] = 3
                                if t > sub_8483d76e[stor0[idx]][0]:
                                    mem[0] = sub_3fc9f86e[idx]
                                    mem[32] = 3
                                    mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                    if sub_8483d76e[stor0[idx]][0] != 1:
                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                            mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7721 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7797 = mem[_7721]
                                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_3fc9f86e[idx]
                                            if not ext_call.success:
                                                _8081 = mem[64]
                                                mem[mem[64]] = 64
                                                mem[mem[64] + 64] = 9
                                                mem[mem[64] + 96] = 'GoldClaim' << 184
                                                mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                mem[0] = sub_3fc9f86e[idx]
                                                emit 0xfe413165: mem[mem[64] len _8081 + -mem[64] + 128]
                                            else:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8349 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_8349] > _7797:
                                                    _8752 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    emit 0x625faa63: mem[mem[64] len _8752 + -mem[64] + 128]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    mem[32] = 3
                                                    mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                    mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                    sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_3fc9f86e[idx]
                                    if not ext_call.success:
                                        _7076 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0xfe413165: mem[mem[64] len _7076 + -mem[64] + 128]
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7917 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8085 = mem[_7917]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _8444 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _8444 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _8758 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_8758] > _8085:
                                                        _9114 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9114 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
                                    else:
                                        _7266 = mem[64]
                                        mem[mem[64]] = 64
                                        mem[mem[64] + 64] = 7
                                        mem[mem[64] + 96] = 0x4c6576656c557000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                        emit 0x625faa63: mem[mem[64] len _7266 + -mem[64] + 128]
                                        if sub_8483d76e[stor0[idx]][0] > -2:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0]++
                                        if sub_8483d76e[stor0[idx]][0] < t:
                                            revert with 0, 17
                                        sub_8483d76e[stor0[idx]][0] -= t
                                        mem[0] = sub_3fc9f86e[idx]
                                        mem[32] = 3
                                        mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                        if sub_8483d76e[stor0[idx]][0] != 1:
                                            mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                            mem[0] = sub_3fc9f86e[idx]
                                            mem[32] = 3
                                            mem[mem[64]] = 0x6c6576656c000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 5] = sha3(sub_3fc9f86e[idx], 3)
                                            if sub_8483d76e[stor0[idx]][0] > sub_8483d76e[stor0[idx]][1668047209]:
                                                mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8759 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _8927 = mem[_8759]
                                                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_3fc9f86e[idx]
                                                if not ext_call.success:
                                                    _9332 = mem[64]
                                                    mem[mem[64]] = 64
                                                    mem[mem[64] + 64] = 9
                                                    mem[mem[64] + 96] = 'GoldClaim' << 184
                                                    mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                    mem[0] = sub_3fc9f86e[idx]
                                                    emit 0xfe413165: mem[mem[64] len _9332 + -mem[64] + 128]
                                                else:
                                                    mem[mem[64] + 4] = sub_3fc9f86e[idx]
                                                    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                                                    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_3fc9f86e[idx]
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9407 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_9407] > _8927:
                                                        _9570 = mem[64]
                                                        mem[mem[64]] = 64
                                                        mem[mem[64] + 64] = 9
                                                        mem[mem[64] + 96] = 'GoldClaim' << 184
                                                        mem[mem[64] + 32] = sub_3fc9f86e[idx]
                                                        emit 0x625faa63: mem[mem[64] len _9570 + -mem[64] + 128]
                                                        mem[0] = sub_3fc9f86e[idx]
                                                        mem[32] = 3
                                                        mem[mem[64]] = 0x636c61696d6564476f6c6442794c6576656c0000000000000000000000000000
                                                        mem[mem[64] + 18] = sha3(sub_3fc9f86e[idx], 3)
                                                        sub_8483d76e[stor0[idx]][1668047209] = sub_8483d76e[stor0[idx]][0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
