contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
mapping of uint256 sub_35670d2d;

function sub_35670d2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_35670d2d[arg1]
}

function _fallback() payable {
    revert
}

function sub_ce458581(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != address(arg1):
        return 0
    return 1
}

function withdraw() {
    if stor0 != msg.sender:
        revert with 0, 'Only Owner'
    call stor0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function roll(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 'NH{q', 18
    if sha3(block.timestamp) % arg1 > -2:
        revert with 'NH{q', 17
    return ((sha3(block.timestamp) % arg1) + 1)
}

function sub_3da9a9c6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if 10^18 != msg.value:
        revert with 0, '1FTM IS REQUIRED'
    if ('cd', 4).length != 6:
        revert with 0, 'Invalid number'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == mem[_360 + 12 len 20]
        if mem[_360 + 12 len 20] != msg.sender:
            revert with 0, 'Not owner'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor1:
        if stor1 <= 0:
            stor3 = msg.sender
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            _356 = mem[64]
            mem[mem[64]] = ('cd', 4).length
            mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _742 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_742] == mem[_742]
                    if idx >= mem[_356]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _356 + 32] = mem[_742]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _709 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1157] == mem[_1157]
                        if idx >= mem[_709]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _709 + 32] = mem[_1157]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_709 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1158] == mem[_1158]
                        if idx >= mem[_709]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _709 + 32] = mem[_1158]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                idx = 0
                s = 0
                while idx < mem[_356]:
                    if idx >= mem[_356]:
                        revert with 'NH{q', 50
                    if idx >= mem[_709]:
                        revert with 'NH{q', 50
                    if s > -11:
                        revert with 'NH{q', 17
                    if s + 10 > -mem[(32 * idx) + _709 + 32] - 1:
                        revert with 'NH{q', 17
                    if idx > 2:
                        if mem[(32 * idx) + _356 + 32] != 2:
                            if mem[(32 * idx) + _356 + 32] != 3:
                                if mem[(32 * idx) + _356 + 32] != 4:
                                    if mem[(32 * idx) + _356 + 32] != 8:
                                        if mem[(32 * idx) + _356 + 32] != 9:
                                            if mem[(32 * idx) + _356 + 32] != 10:
                                                if mem[(32 * idx) + _356 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _709 + 32] + 10
                                                    continue 
                        if s + mem[(32 * idx) + _709 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _709 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _356 + 32] != 1:
                        if mem[(32 * idx) + _356 + 32] != 5:
                            if mem[(32 * idx) + _356 + 32] != 6:
                                if mem[(32 * idx) + _356 + 32] != 7:
                                    if idx <= 2:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _709 + 32] + 10
                                        continue 
                                    if mem[(32 * idx) + _356 + 32] != 2:
                                        if mem[(32 * idx) + _356 + 32] != 3:
                                            if mem[(32 * idx) + _356 + 32] != 4:
                                                if mem[(32 * idx) + _356 + 32] != 8:
                                                    if mem[(32 * idx) + _356 + 32] != 9:
                                                        if mem[(32 * idx) + _356 + 32] != 10:
                                                            if mem[(32 * idx) + _356 + 32] != 11:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                s = s + mem[(32 * idx) + _709 + 32] + 10
                                                                continue 
                                    if s + mem[(32 * idx) + _709 + 32] + 10 > -6:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + mem[(32 * idx) + _709 + 32] + 15
                                    continue 
                    if s + mem[(32 * idx) + _709 + 32] + 10 > -6:
                        revert with 'NH{q', 17
                    if idx <= 2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _709 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _356 + 32] != 2:
                        if mem[(32 * idx) + _356 + 32] != 3:
                            if mem[(32 * idx) + _356 + 32] != 4:
                                if mem[(32 * idx) + _356 + 32] != 8:
                                    if mem[(32 * idx) + _356 + 32] != 9:
                                        if mem[(32 * idx) + _356 + 32] != 10:
                                            if mem[(32 * idx) + _356 + 32] != 11:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = s + mem[(32 * idx) + _709 + 32] + 15
                                                continue 
                    if s + mem[(32 * idx) + _709 + 32] + 15 > -6:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _709 + 32] + 20
                    continue 
            else:
                mem[_356 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_744] == mem[_744]
                    if idx >= mem[_356]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _356 + 32] = mem[_744]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _710 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1159] == mem[_1159]
                        if idx >= mem[_710]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _710 + 32] = mem[_1159]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_710 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1160 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1160] == mem[_1160]
                        if idx >= mem[_710]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _710 + 32] = mem[_1160]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                idx = 0
                s = 0
                while idx < mem[_356]:
                    if idx >= mem[_356]:
                        revert with 'NH{q', 50
                    if idx >= mem[_710]:
                        revert with 'NH{q', 50
                    if s > -11:
                        revert with 'NH{q', 17
                    if s + 10 > -mem[(32 * idx) + _710 + 32] - 1:
                        revert with 'NH{q', 17
                    if idx > 2:
                        if mem[(32 * idx) + _356 + 32] != 2:
                            if mem[(32 * idx) + _356 + 32] != 3:
                                if mem[(32 * idx) + _356 + 32] != 4:
                                    if mem[(32 * idx) + _356 + 32] != 8:
                                        if mem[(32 * idx) + _356 + 32] != 9:
                                            if mem[(32 * idx) + _356 + 32] != 10:
                                                if mem[(32 * idx) + _356 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _710 + 32] + 10
                                                    continue 
                        if s + mem[(32 * idx) + _710 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _710 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _356 + 32] != 1:
                        if mem[(32 * idx) + _356 + 32] != 5:
                            if mem[(32 * idx) + _356 + 32] != 6:
                                if mem[(32 * idx) + _356 + 32] != 7:
                                    if idx <= 2:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _710 + 32] + 10
                                        continue 
                                    if mem[(32 * idx) + _356 + 32] != 2:
                                        if mem[(32 * idx) + _356 + 32] != 3:
                                            if mem[(32 * idx) + _356 + 32] != 4:
                                                if mem[(32 * idx) + _356 + 32] != 8:
                                                    if mem[(32 * idx) + _356 + 32] != 9:
                                                        if mem[(32 * idx) + _356 + 32] != 10:
                                                            if mem[(32 * idx) + _356 + 32] != 11:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                s = s + mem[(32 * idx) + _710 + 32] + 10
                                                                continue 
                                    if s + mem[(32 * idx) + _710 + 32] + 10 > -6:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + mem[(32 * idx) + _710 + 32] + 15
                                    continue 
                    if s + mem[(32 * idx) + _710 + 32] + 10 > -6:
                        revert with 'NH{q', 17
                    if idx <= 2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _710 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _356 + 32] != 2:
                        if mem[(32 * idx) + _356 + 32] != 3:
                            if mem[(32 * idx) + _356 + 32] != 4:
                                if mem[(32 * idx) + _356 + 32] != 8:
                                    if mem[(32 * idx) + _356 + 32] != 9:
                                        if mem[(32 * idx) + _356 + 32] != 10:
                                            if mem[(32 * idx) + _356 + 32] != 11:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = s + mem[(32 * idx) + _710 + 32] + 15
                                                continue 
                    if s + mem[(32 * idx) + _710 + 32] + 15 > -6:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _710 + 32] + 20
                    continue 
            stor1 = s
        else:
            stor4 = msg.sender
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            _357 = mem[64]
            mem[mem[64]] = ('cd', 4).length
            mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _746 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_746] == mem[_746]
                    if idx >= mem[_357]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _357 + 32] = mem[_746]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _711 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1161] == mem[_1161]
                        if idx >= mem[_711]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _711 + 32] = mem[_1161]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_357]:
                        if idx >= mem[_357]:
                            revert with 'NH{q', 50
                        if idx >= mem[_711]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _711 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _357 + 32] != 2:
                                if mem[(32 * idx) + _357 + 32] != 3:
                                    if mem[(32 * idx) + _357 + 32] != 4:
                                        if mem[(32 * idx) + _357 + 32] != 8:
                                            if mem[(32 * idx) + _357 + 32] != 9:
                                                if mem[(32 * idx) + _357 + 32] != 10:
                                                    if mem[(32 * idx) + _357 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _711 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _711 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _711 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _357 + 32] != 1:
                            if mem[(32 * idx) + _357 + 32] != 5:
                                if mem[(32 * idx) + _357 + 32] != 6:
                                    if mem[(32 * idx) + _357 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _711 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _357 + 32] != 2:
                                            if mem[(32 * idx) + _357 + 32] != 3:
                                                if mem[(32 * idx) + _357 + 32] != 4:
                                                    if mem[(32 * idx) + _357 + 32] != 8:
                                                        if mem[(32 * idx) + _357 + 32] != 9:
                                                            if mem[(32 * idx) + _357 + 32] != 10:
                                                                if mem[(32 * idx) + _357 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _711 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _711 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _711 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _711 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _711 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _357 + 32] != 2:
                            if mem[(32 * idx) + _357 + 32] != 3:
                                if mem[(32 * idx) + _357 + 32] != 4:
                                    if mem[(32 * idx) + _357 + 32] != 8:
                                        if mem[(32 * idx) + _357 + 32] != 9:
                                            if mem[(32 * idx) + _357 + 32] != 10:
                                                if mem[(32 * idx) + _357 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _711 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _711 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _711 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    _1413 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if sha3(mem[_1413 + 32 len mem[_1413]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1413 + 32 len mem[_1413]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp) % 20) - 2:
                        revert with 'NH{q', 17
                    if stor1 + (sha3(block.timestamp) % 20) <= stor2 + (sha3(mem[_1413 + 32 len mem[_1413]]) % 20):
                        call stor4 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 0
                        sub_35670d2d[stor4] = 1
                    else:
                        call stor3 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 1
                        sub_35670d2d[stor4] = 0
                else:
                    mem[_711 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1162] == mem[_1162]
                        if idx >= mem[_711]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _711 + 32] = mem[_1162]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_357]:
                        if idx >= mem[_357]:
                            revert with 'NH{q', 50
                        if idx >= mem[_711]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _711 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _357 + 32] != 2:
                                if mem[(32 * idx) + _357 + 32] != 3:
                                    if mem[(32 * idx) + _357 + 32] != 4:
                                        if mem[(32 * idx) + _357 + 32] != 8:
                                            if mem[(32 * idx) + _357 + 32] != 9:
                                                if mem[(32 * idx) + _357 + 32] != 10:
                                                    if mem[(32 * idx) + _357 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _711 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _711 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _711 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _357 + 32] != 1:
                            if mem[(32 * idx) + _357 + 32] != 5:
                                if mem[(32 * idx) + _357 + 32] != 6:
                                    if mem[(32 * idx) + _357 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _711 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _357 + 32] != 2:
                                            if mem[(32 * idx) + _357 + 32] != 3:
                                                if mem[(32 * idx) + _357 + 32] != 4:
                                                    if mem[(32 * idx) + _357 + 32] != 8:
                                                        if mem[(32 * idx) + _357 + 32] != 9:
                                                            if mem[(32 * idx) + _357 + 32] != 10:
                                                                if mem[(32 * idx) + _357 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _711 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _711 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _711 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _711 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _711 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _357 + 32] != 2:
                            if mem[(32 * idx) + _357 + 32] != 3:
                                if mem[(32 * idx) + _357 + 32] != 4:
                                    if mem[(32 * idx) + _357 + 32] != 8:
                                        if mem[(32 * idx) + _357 + 32] != 9:
                                            if mem[(32 * idx) + _357 + 32] != 10:
                                                if mem[(32 * idx) + _357 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _711 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _711 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _711 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    _1416 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if sha3(mem[_1416 + 32 len mem[_1416]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1416 + 32 len mem[_1416]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp) % 20) - 2:
                        revert with 'NH{q', 17
                    if stor1 + (sha3(block.timestamp) % 20) <= stor2 + (sha3(mem[_1416 + 32 len mem[_1416]]) % 20):
                        call stor4 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 0
                        sub_35670d2d[stor4] = 1
                    else:
                        call stor3 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 1
                        sub_35670d2d[stor4] = 0
            else:
                mem[_357 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_748] == mem[_748]
                    if idx >= mem[_357]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _357 + 32] = mem[_748]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _712 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1163] == mem[_1163]
                        if idx >= mem[_712]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _712 + 32] = mem[_1163]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_357]:
                        if idx >= mem[_357]:
                            revert with 'NH{q', 50
                        if idx >= mem[_712]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _712 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _357 + 32] != 2:
                                if mem[(32 * idx) + _357 + 32] != 3:
                                    if mem[(32 * idx) + _357 + 32] != 4:
                                        if mem[(32 * idx) + _357 + 32] != 8:
                                            if mem[(32 * idx) + _357 + 32] != 9:
                                                if mem[(32 * idx) + _357 + 32] != 10:
                                                    if mem[(32 * idx) + _357 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _712 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _712 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _712 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _357 + 32] != 1:
                            if mem[(32 * idx) + _357 + 32] != 5:
                                if mem[(32 * idx) + _357 + 32] != 6:
                                    if mem[(32 * idx) + _357 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _712 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _357 + 32] != 2:
                                            if mem[(32 * idx) + _357 + 32] != 3:
                                                if mem[(32 * idx) + _357 + 32] != 4:
                                                    if mem[(32 * idx) + _357 + 32] != 8:
                                                        if mem[(32 * idx) + _357 + 32] != 9:
                                                            if mem[(32 * idx) + _357 + 32] != 10:
                                                                if mem[(32 * idx) + _357 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _712 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _712 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _712 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _712 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _712 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _357 + 32] != 2:
                            if mem[(32 * idx) + _357 + 32] != 3:
                                if mem[(32 * idx) + _357 + 32] != 4:
                                    if mem[(32 * idx) + _357 + 32] != 8:
                                        if mem[(32 * idx) + _357 + 32] != 9:
                                            if mem[(32 * idx) + _357 + 32] != 10:
                                                if mem[(32 * idx) + _357 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _712 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _712 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _712 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    _1419 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if sha3(mem[_1419 + 32 len mem[_1419]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1419 + 32 len mem[_1419]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp) % 20) - 2:
                        revert with 'NH{q', 17
                    if stor1 + (sha3(block.timestamp) % 20) <= stor2 + (sha3(mem[_1419 + 32 len mem[_1419]]) % 20):
                        call stor4 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 0
                        sub_35670d2d[stor4] = 1
                    else:
                        call stor3 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 1
                        sub_35670d2d[stor4] = 0
                else:
                    mem[_712 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1164] == mem[_1164]
                        if idx >= mem[_712]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _712 + 32] = mem[_1164]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_357]:
                        if idx >= mem[_357]:
                            revert with 'NH{q', 50
                        if idx >= mem[_712]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _712 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _357 + 32] != 2:
                                if mem[(32 * idx) + _357 + 32] != 3:
                                    if mem[(32 * idx) + _357 + 32] != 4:
                                        if mem[(32 * idx) + _357 + 32] != 8:
                                            if mem[(32 * idx) + _357 + 32] != 9:
                                                if mem[(32 * idx) + _357 + 32] != 10:
                                                    if mem[(32 * idx) + _357 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _712 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _712 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _712 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _357 + 32] != 1:
                            if mem[(32 * idx) + _357 + 32] != 5:
                                if mem[(32 * idx) + _357 + 32] != 6:
                                    if mem[(32 * idx) + _357 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _712 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _357 + 32] != 2:
                                            if mem[(32 * idx) + _357 + 32] != 3:
                                                if mem[(32 * idx) + _357 + 32] != 4:
                                                    if mem[(32 * idx) + _357 + 32] != 8:
                                                        if mem[(32 * idx) + _357 + 32] != 9:
                                                            if mem[(32 * idx) + _357 + 32] != 10:
                                                                if mem[(32 * idx) + _357 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _712 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _712 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _712 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _712 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _712 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _357 + 32] != 2:
                            if mem[(32 * idx) + _357 + 32] != 3:
                                if mem[(32 * idx) + _357 + 32] != 4:
                                    if mem[(32 * idx) + _357 + 32] != 8:
                                        if mem[(32 * idx) + _357 + 32] != 9:
                                            if mem[(32 * idx) + _357 + 32] != 10:
                                                if mem[(32 * idx) + _357 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _712 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _712 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _712 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    _1422 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if sha3(mem[_1422 + 32 len mem[_1422]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1422 + 32 len mem[_1422]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp) % 20) - 2:
                        revert with 'NH{q', 17
                    if stor1 + (sha3(block.timestamp) % 20) <= stor2 + (sha3(mem[_1422 + 32 len mem[_1422]]) % 20):
                        call stor4 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 0
                        sub_35670d2d[stor4] = 1
                    else:
                        call stor3 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 1
                        sub_35670d2d[stor4] = 0
            stor1 = 0
            stor2 = 0
            stor3 = 0
            stor4 = 0
    else:
        if stor2:
            revert with 0, 'Waiting for next round'
        if stor1 <= 0:
            stor3 = msg.sender
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            _358 = mem[64]
            mem[mem[64]] = ('cd', 4).length
            mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _750 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_750] == mem[_750]
                    if idx >= mem[_358]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _358 + 32] = mem[_750]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _713 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1165] == mem[_1165]
                        if idx >= mem[_713]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _713 + 32] = mem[_1165]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_713 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1166 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1166] == mem[_1166]
                        if idx >= mem[_713]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _713 + 32] = mem[_1166]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                idx = 0
                s = 0
                while idx < mem[_358]:
                    if idx >= mem[_358]:
                        revert with 'NH{q', 50
                    if idx >= mem[_713]:
                        revert with 'NH{q', 50
                    if s > -11:
                        revert with 'NH{q', 17
                    if s + 10 > -mem[(32 * idx) + _713 + 32] - 1:
                        revert with 'NH{q', 17
                    if idx > 2:
                        if mem[(32 * idx) + _358 + 32] != 2:
                            if mem[(32 * idx) + _358 + 32] != 3:
                                if mem[(32 * idx) + _358 + 32] != 4:
                                    if mem[(32 * idx) + _358 + 32] != 8:
                                        if mem[(32 * idx) + _358 + 32] != 9:
                                            if mem[(32 * idx) + _358 + 32] != 10:
                                                if mem[(32 * idx) + _358 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _713 + 32] + 10
                                                    continue 
                        if s + mem[(32 * idx) + _713 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _713 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _358 + 32] != 1:
                        if mem[(32 * idx) + _358 + 32] != 5:
                            if mem[(32 * idx) + _358 + 32] != 6:
                                if mem[(32 * idx) + _358 + 32] != 7:
                                    if idx <= 2:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _713 + 32] + 10
                                        continue 
                                    if mem[(32 * idx) + _358 + 32] != 2:
                                        if mem[(32 * idx) + _358 + 32] != 3:
                                            if mem[(32 * idx) + _358 + 32] != 4:
                                                if mem[(32 * idx) + _358 + 32] != 8:
                                                    if mem[(32 * idx) + _358 + 32] != 9:
                                                        if mem[(32 * idx) + _358 + 32] != 10:
                                                            if mem[(32 * idx) + _358 + 32] != 11:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                s = s + mem[(32 * idx) + _713 + 32] + 10
                                                                continue 
                                    if s + mem[(32 * idx) + _713 + 32] + 10 > -6:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + mem[(32 * idx) + _713 + 32] + 15
                                    continue 
                    if s + mem[(32 * idx) + _713 + 32] + 10 > -6:
                        revert with 'NH{q', 17
                    if idx <= 2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _713 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _358 + 32] != 2:
                        if mem[(32 * idx) + _358 + 32] != 3:
                            if mem[(32 * idx) + _358 + 32] != 4:
                                if mem[(32 * idx) + _358 + 32] != 8:
                                    if mem[(32 * idx) + _358 + 32] != 9:
                                        if mem[(32 * idx) + _358 + 32] != 10:
                                            if mem[(32 * idx) + _358 + 32] != 11:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = s + mem[(32 * idx) + _713 + 32] + 15
                                                continue 
                    if s + mem[(32 * idx) + _713 + 32] + 15 > -6:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _713 + 32] + 20
                    continue 
            else:
                mem[_358 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _752 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_752] == mem[_752]
                    if idx >= mem[_358]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _358 + 32] = mem[_752]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _714 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1167] == mem[_1167]
                        if idx >= mem[_714]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _714 + 32] = mem[_1167]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_714 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1168] == mem[_1168]
                        if idx >= mem[_714]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _714 + 32] = mem[_1168]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                idx = 0
                s = 0
                while idx < mem[_358]:
                    if idx >= mem[_358]:
                        revert with 'NH{q', 50
                    if idx >= mem[_714]:
                        revert with 'NH{q', 50
                    if s > -11:
                        revert with 'NH{q', 17
                    if s + 10 > -mem[(32 * idx) + _714 + 32] - 1:
                        revert with 'NH{q', 17
                    if idx > 2:
                        if mem[(32 * idx) + _358 + 32] != 2:
                            if mem[(32 * idx) + _358 + 32] != 3:
                                if mem[(32 * idx) + _358 + 32] != 4:
                                    if mem[(32 * idx) + _358 + 32] != 8:
                                        if mem[(32 * idx) + _358 + 32] != 9:
                                            if mem[(32 * idx) + _358 + 32] != 10:
                                                if mem[(32 * idx) + _358 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _714 + 32] + 10
                                                    continue 
                        if s + mem[(32 * idx) + _714 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _714 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _358 + 32] != 1:
                        if mem[(32 * idx) + _358 + 32] != 5:
                            if mem[(32 * idx) + _358 + 32] != 6:
                                if mem[(32 * idx) + _358 + 32] != 7:
                                    if idx <= 2:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _714 + 32] + 10
                                        continue 
                                    if mem[(32 * idx) + _358 + 32] != 2:
                                        if mem[(32 * idx) + _358 + 32] != 3:
                                            if mem[(32 * idx) + _358 + 32] != 4:
                                                if mem[(32 * idx) + _358 + 32] != 8:
                                                    if mem[(32 * idx) + _358 + 32] != 9:
                                                        if mem[(32 * idx) + _358 + 32] != 10:
                                                            if mem[(32 * idx) + _358 + 32] != 11:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                s = s + mem[(32 * idx) + _714 + 32] + 10
                                                                continue 
                                    if s + mem[(32 * idx) + _714 + 32] + 10 > -6:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + mem[(32 * idx) + _714 + 32] + 15
                                    continue 
                    if s + mem[(32 * idx) + _714 + 32] + 10 > -6:
                        revert with 'NH{q', 17
                    if idx <= 2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _714 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _358 + 32] != 2:
                        if mem[(32 * idx) + _358 + 32] != 3:
                            if mem[(32 * idx) + _358 + 32] != 4:
                                if mem[(32 * idx) + _358 + 32] != 8:
                                    if mem[(32 * idx) + _358 + 32] != 9:
                                        if mem[(32 * idx) + _358 + 32] != 10:
                                            if mem[(32 * idx) + _358 + 32] != 11:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = s + mem[(32 * idx) + _714 + 32] + 15
                                                continue 
                    if s + mem[(32 * idx) + _714 + 32] + 15 > -6:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _714 + 32] + 20
                    continue 
            stor1 = s
        else:
            stor4 = msg.sender
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            _359 = mem[64]
            mem[mem[64]] = ('cd', 4).length
            mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_754] == mem[_754]
                    if idx >= mem[_359]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _359 + 32] = mem[_754]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _715 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1169 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1169] == mem[_1169]
                        if idx >= mem[_715]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _715 + 32] = mem[_1169]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_359]:
                        if idx >= mem[_359]:
                            revert with 'NH{q', 50
                        if idx >= mem[_715]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _715 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _359 + 32] != 2:
                                if mem[(32 * idx) + _359 + 32] != 3:
                                    if mem[(32 * idx) + _359 + 32] != 4:
                                        if mem[(32 * idx) + _359 + 32] != 8:
                                            if mem[(32 * idx) + _359 + 32] != 9:
                                                if mem[(32 * idx) + _359 + 32] != 10:
                                                    if mem[(32 * idx) + _359 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _715 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _715 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _715 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _359 + 32] != 1:
                            if mem[(32 * idx) + _359 + 32] != 5:
                                if mem[(32 * idx) + _359 + 32] != 6:
                                    if mem[(32 * idx) + _359 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _715 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _359 + 32] != 2:
                                            if mem[(32 * idx) + _359 + 32] != 3:
                                                if mem[(32 * idx) + _359 + 32] != 4:
                                                    if mem[(32 * idx) + _359 + 32] != 8:
                                                        if mem[(32 * idx) + _359 + 32] != 9:
                                                            if mem[(32 * idx) + _359 + 32] != 10:
                                                                if mem[(32 * idx) + _359 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _715 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _715 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _715 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _715 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _715 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _359 + 32] != 2:
                            if mem[(32 * idx) + _359 + 32] != 3:
                                if mem[(32 * idx) + _359 + 32] != 4:
                                    if mem[(32 * idx) + _359 + 32] != 8:
                                        if mem[(32 * idx) + _359 + 32] != 9:
                                            if mem[(32 * idx) + _359 + 32] != 10:
                                                if mem[(32 * idx) + _359 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _715 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _715 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _715 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    _1425 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if sha3(mem[_1425 + 32 len mem[_1425]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1425 + 32 len mem[_1425]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp) % 20) - 2:
                        revert with 'NH{q', 17
                    if stor1 + (sha3(block.timestamp) % 20) <= stor2 + (sha3(mem[_1425 + 32 len mem[_1425]]) % 20):
                        call stor4 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 0
                        sub_35670d2d[stor4] = 1
                    else:
                        call stor3 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 1
                        sub_35670d2d[stor4] = 0
                else:
                    mem[_715 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1170 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1170] == mem[_1170]
                        if idx >= mem[_715]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _715 + 32] = mem[_1170]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_359]:
                        if idx >= mem[_359]:
                            revert with 'NH{q', 50
                        if idx >= mem[_715]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _715 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _359 + 32] != 2:
                                if mem[(32 * idx) + _359 + 32] != 3:
                                    if mem[(32 * idx) + _359 + 32] != 4:
                                        if mem[(32 * idx) + _359 + 32] != 8:
                                            if mem[(32 * idx) + _359 + 32] != 9:
                                                if mem[(32 * idx) + _359 + 32] != 10:
                                                    if mem[(32 * idx) + _359 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _715 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _715 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _715 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _359 + 32] != 1:
                            if mem[(32 * idx) + _359 + 32] != 5:
                                if mem[(32 * idx) + _359 + 32] != 6:
                                    if mem[(32 * idx) + _359 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _715 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _359 + 32] != 2:
                                            if mem[(32 * idx) + _359 + 32] != 3:
                                                if mem[(32 * idx) + _359 + 32] != 4:
                                                    if mem[(32 * idx) + _359 + 32] != 8:
                                                        if mem[(32 * idx) + _359 + 32] != 9:
                                                            if mem[(32 * idx) + _359 + 32] != 10:
                                                                if mem[(32 * idx) + _359 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _715 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _715 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _715 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _715 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _715 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _359 + 32] != 2:
                            if mem[(32 * idx) + _359 + 32] != 3:
                                if mem[(32 * idx) + _359 + 32] != 4:
                                    if mem[(32 * idx) + _359 + 32] != 8:
                                        if mem[(32 * idx) + _359 + 32] != 9:
                                            if mem[(32 * idx) + _359 + 32] != 10:
                                                if mem[(32 * idx) + _359 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _715 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _715 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _715 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    _1428 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if sha3(mem[_1428 + 32 len mem[_1428]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1428 + 32 len mem[_1428]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp) % 20) - 2:
                        revert with 'NH{q', 17
                    if stor1 + (sha3(block.timestamp) % 20) <= stor2 + (sha3(mem[_1428 + 32 len mem[_1428]]) % 20):
                        call stor4 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 0
                        sub_35670d2d[stor4] = 1
                    else:
                        call stor3 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 1
                        sub_35670d2d[stor4] = 0
            else:
                mem[_359 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _756 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_756] == mem[_756]
                    if idx >= mem[_359]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _359 + 32] = mem[_756]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _716 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1171 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1171] == mem[_1171]
                        if idx >= mem[_716]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _716 + 32] = mem[_1171]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_359]:
                        if idx >= mem[_359]:
                            revert with 'NH{q', 50
                        if idx >= mem[_716]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _716 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _359 + 32] != 2:
                                if mem[(32 * idx) + _359 + 32] != 3:
                                    if mem[(32 * idx) + _359 + 32] != 4:
                                        if mem[(32 * idx) + _359 + 32] != 8:
                                            if mem[(32 * idx) + _359 + 32] != 9:
                                                if mem[(32 * idx) + _359 + 32] != 10:
                                                    if mem[(32 * idx) + _359 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _716 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _716 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _716 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _359 + 32] != 1:
                            if mem[(32 * idx) + _359 + 32] != 5:
                                if mem[(32 * idx) + _359 + 32] != 6:
                                    if mem[(32 * idx) + _359 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _716 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _359 + 32] != 2:
                                            if mem[(32 * idx) + _359 + 32] != 3:
                                                if mem[(32 * idx) + _359 + 32] != 4:
                                                    if mem[(32 * idx) + _359 + 32] != 8:
                                                        if mem[(32 * idx) + _359 + 32] != 9:
                                                            if mem[(32 * idx) + _359 + 32] != 10:
                                                                if mem[(32 * idx) + _359 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _716 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _716 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _716 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _716 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _716 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _359 + 32] != 2:
                            if mem[(32 * idx) + _359 + 32] != 3:
                                if mem[(32 * idx) + _359 + 32] != 4:
                                    if mem[(32 * idx) + _359 + 32] != 8:
                                        if mem[(32 * idx) + _359 + 32] != 9:
                                            if mem[(32 * idx) + _359 + 32] != 10:
                                                if mem[(32 * idx) + _359 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _716 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _716 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _716 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    _1431 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if sha3(mem[_1431 + 32 len mem[_1431]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1431 + 32 len mem[_1431]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp) % 20) - 2:
                        revert with 'NH{q', 17
                    if stor1 + (sha3(block.timestamp) % 20) <= stor2 + (sha3(mem[_1431 + 32 len mem[_1431]]) % 20):
                        call stor4 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 0
                        sub_35670d2d[stor4] = 1
                    else:
                        call stor3 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 1
                        sub_35670d2d[stor4] = 0
                else:
                    mem[_716 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1172] == mem[_1172]
                        if idx >= mem[_716]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _716 + 32] = mem[_1172]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_359]:
                        if idx >= mem[_359]:
                            revert with 'NH{q', 50
                        if idx >= mem[_716]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _716 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _359 + 32] != 2:
                                if mem[(32 * idx) + _359 + 32] != 3:
                                    if mem[(32 * idx) + _359 + 32] != 4:
                                        if mem[(32 * idx) + _359 + 32] != 8:
                                            if mem[(32 * idx) + _359 + 32] != 9:
                                                if mem[(32 * idx) + _359 + 32] != 10:
                                                    if mem[(32 * idx) + _359 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _716 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _716 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _716 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _359 + 32] != 1:
                            if mem[(32 * idx) + _359 + 32] != 5:
                                if mem[(32 * idx) + _359 + 32] != 6:
                                    if mem[(32 * idx) + _359 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _716 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _359 + 32] != 2:
                                            if mem[(32 * idx) + _359 + 32] != 3:
                                                if mem[(32 * idx) + _359 + 32] != 4:
                                                    if mem[(32 * idx) + _359 + 32] != 8:
                                                        if mem[(32 * idx) + _359 + 32] != 9:
                                                            if mem[(32 * idx) + _359 + 32] != 10:
                                                                if mem[(32 * idx) + _359 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _716 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _716 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _716 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _716 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _716 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _359 + 32] != 2:
                            if mem[(32 * idx) + _359 + 32] != 3:
                                if mem[(32 * idx) + _359 + 32] != 4:
                                    if mem[(32 * idx) + _359 + 32] != 8:
                                        if mem[(32 * idx) + _359 + 32] != 9:
                                            if mem[(32 * idx) + _359 + 32] != 10:
                                                if mem[(32 * idx) + _359 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _716 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _716 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _716 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    _1434 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if sha3(mem[_1434 + 32 len mem[_1434]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1434 + 32 len mem[_1434]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp) % 20) - 2:
                        revert with 'NH{q', 17
                    if stor1 + (sha3(block.timestamp) % 20) <= stor2 + (sha3(mem[_1434 + 32 len mem[_1434]]) % 20):
                        call stor4 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 0
                        sub_35670d2d[stor4] = 1
                    else:
                        call stor3 with:
                           value 19 * 10^17 wei
                             gas 0 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor3] = 1
                        sub_35670d2d[stor4] = 0
            stor1 = 0
            stor2 = 0
            stor3 = 0
            stor4 = 0
}



}
