contract main {




// =====================  Runtime code  =====================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
mapping of uint256 sub_35670d2d;

function sub_35670d2d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_35670d2d[arg1]
}

function _fallback() payable {
    revert
}

function sub_ce458581(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != address(arg1):
        return 0
    return 1
}

function roll(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        revert with 'NH{q', 18
    if sha3(block.timestamp, arg1) % arg2 > -2:
        revert with 'NH{q', 17
    return ((sha3(block.timestamp, arg1) % arg2) + 1)
}

function sub_e819ceb3(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    mem[100] = cd[36]
    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
    staticcall 0x253e55363f9440b532d13c228cb633bac94f3b7c.0xfa978952 with:
            gas gas_remaining wei
           args cd[36]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 100:
        revert with 0, '100 Copper Coins IS REQUIRED'
    if ('cd', 4).length != 6:
        revert with 0, 'Invalid number'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_372] == mem[_372 + 12 len 20]
        if mem[_372 + 12 len 20] != msg.sender:
            revert with 0, 'Not owner'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor1:
        if stor1 <= 0:
            stor3 = cd[36]
            stor5 = msg.sender
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = 2328888
            mem[mem[64] + 68] = 100 * 10^18
            require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
            call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, 2328888, 100 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            _379 = mem[64]
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
                    _762 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_762] == mem[_762]
                    if idx >= mem[_379]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _379 + 32] = mem[_762]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _729 = mem[64]
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
                        _1177 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1177] == mem[_1177]
                        if idx >= mem[_729]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _729 + 32] = mem[_1177]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_729 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                        _1178 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1178] == mem[_1178]
                        if idx >= mem[_729]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _729 + 32] = mem[_1178]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                idx = 0
                s = 0
                while idx < mem[_379]:
                    if idx >= mem[_379]:
                        revert with 'NH{q', 50
                    if idx >= mem[_729]:
                        revert with 'NH{q', 50
                    if s > -11:
                        revert with 'NH{q', 17
                    if s + 10 > -mem[(32 * idx) + _729 + 32] - 1:
                        revert with 'NH{q', 17
                    if idx > 2:
                        if mem[(32 * idx) + _379 + 32] != 2:
                            if mem[(32 * idx) + _379 + 32] != 3:
                                if mem[(32 * idx) + _379 + 32] != 4:
                                    if mem[(32 * idx) + _379 + 32] != 8:
                                        if mem[(32 * idx) + _379 + 32] != 9:
                                            if mem[(32 * idx) + _379 + 32] != 10:
                                                if mem[(32 * idx) + _379 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _729 + 32] + 10
                                                    continue 
                        if s + mem[(32 * idx) + _729 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _729 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _379 + 32] != 1:
                        if mem[(32 * idx) + _379 + 32] != 5:
                            if mem[(32 * idx) + _379 + 32] != 6:
                                if mem[(32 * idx) + _379 + 32] != 7:
                                    if idx <= 2:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _729 + 32] + 10
                                        continue 
                                    if mem[(32 * idx) + _379 + 32] != 2:
                                        if mem[(32 * idx) + _379 + 32] != 3:
                                            if mem[(32 * idx) + _379 + 32] != 4:
                                                if mem[(32 * idx) + _379 + 32] != 8:
                                                    if mem[(32 * idx) + _379 + 32] != 9:
                                                        if mem[(32 * idx) + _379 + 32] != 10:
                                                            if mem[(32 * idx) + _379 + 32] != 11:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                s = s + mem[(32 * idx) + _729 + 32] + 10
                                                                continue 
                                    if s + mem[(32 * idx) + _729 + 32] + 10 > -6:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + mem[(32 * idx) + _729 + 32] + 15
                                    continue 
                    if s + mem[(32 * idx) + _729 + 32] + 10 > -6:
                        revert with 'NH{q', 17
                    if idx <= 2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _729 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _379 + 32] != 2:
                        if mem[(32 * idx) + _379 + 32] != 3:
                            if mem[(32 * idx) + _379 + 32] != 4:
                                if mem[(32 * idx) + _379 + 32] != 8:
                                    if mem[(32 * idx) + _379 + 32] != 9:
                                        if mem[(32 * idx) + _379 + 32] != 10:
                                            if mem[(32 * idx) + _379 + 32] != 11:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = s + mem[(32 * idx) + _729 + 32] + 15
                                                continue 
                    if s + mem[(32 * idx) + _729 + 32] + 15 > -6:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _729 + 32] + 20
                    continue 
            else:
                mem[_379 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                    _764 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_764] == mem[_764]
                    if idx >= mem[_379]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _379 + 32] = mem[_764]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _730 = mem[64]
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
                        _1179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1179] == mem[_1179]
                        if idx >= mem[_730]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _730 + 32] = mem[_1179]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_730 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                        _1180 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1180] == mem[_1180]
                        if idx >= mem[_730]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _730 + 32] = mem[_1180]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                idx = 0
                s = 0
                while idx < mem[_379]:
                    if idx >= mem[_379]:
                        revert with 'NH{q', 50
                    if idx >= mem[_730]:
                        revert with 'NH{q', 50
                    if s > -11:
                        revert with 'NH{q', 17
                    if s + 10 > -mem[(32 * idx) + _730 + 32] - 1:
                        revert with 'NH{q', 17
                    if idx > 2:
                        if mem[(32 * idx) + _379 + 32] != 2:
                            if mem[(32 * idx) + _379 + 32] != 3:
                                if mem[(32 * idx) + _379 + 32] != 4:
                                    if mem[(32 * idx) + _379 + 32] != 8:
                                        if mem[(32 * idx) + _379 + 32] != 9:
                                            if mem[(32 * idx) + _379 + 32] != 10:
                                                if mem[(32 * idx) + _379 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _730 + 32] + 10
                                                    continue 
                        if s + mem[(32 * idx) + _730 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _730 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _379 + 32] != 1:
                        if mem[(32 * idx) + _379 + 32] != 5:
                            if mem[(32 * idx) + _379 + 32] != 6:
                                if mem[(32 * idx) + _379 + 32] != 7:
                                    if idx <= 2:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _730 + 32] + 10
                                        continue 
                                    if mem[(32 * idx) + _379 + 32] != 2:
                                        if mem[(32 * idx) + _379 + 32] != 3:
                                            if mem[(32 * idx) + _379 + 32] != 4:
                                                if mem[(32 * idx) + _379 + 32] != 8:
                                                    if mem[(32 * idx) + _379 + 32] != 9:
                                                        if mem[(32 * idx) + _379 + 32] != 10:
                                                            if mem[(32 * idx) + _379 + 32] != 11:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                s = s + mem[(32 * idx) + _730 + 32] + 10
                                                                continue 
                                    if s + mem[(32 * idx) + _730 + 32] + 10 > -6:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + mem[(32 * idx) + _730 + 32] + 15
                                    continue 
                    if s + mem[(32 * idx) + _730 + 32] + 10 > -6:
                        revert with 'NH{q', 17
                    if idx <= 2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _730 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _379 + 32] != 2:
                        if mem[(32 * idx) + _379 + 32] != 3:
                            if mem[(32 * idx) + _379 + 32] != 4:
                                if mem[(32 * idx) + _379 + 32] != 8:
                                    if mem[(32 * idx) + _379 + 32] != 9:
                                        if mem[(32 * idx) + _379 + 32] != 10:
                                            if mem[(32 * idx) + _379 + 32] != 11:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = s + mem[(32 * idx) + _730 + 32] + 15
                                                continue 
                    if s + mem[(32 * idx) + _730 + 32] + 15 > -6:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _730 + 32] + 20
                    continue 
            stor1 = s
        else:
            stor4 = cd[36]
            stor6 = msg.sender
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = 2328888
            mem[mem[64] + 68] = 100 * 10^18
            require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
            call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor4, 2328888, 100 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            _380 = mem[64]
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
                    _766 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_766] == mem[_766]
                    if idx >= mem[_380]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _380 + 32] = mem[_766]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _731 = mem[64]
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
                        _1181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1181] == mem[_1181]
                        if idx >= mem[_731]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _731 + 32] = mem[_1181]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_380]:
                        if idx >= mem[_380]:
                            revert with 'NH{q', 50
                        if idx >= mem[_731]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _731 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _380 + 32] != 2:
                                if mem[(32 * idx) + _380 + 32] != 3:
                                    if mem[(32 * idx) + _380 + 32] != 4:
                                        if mem[(32 * idx) + _380 + 32] != 8:
                                            if mem[(32 * idx) + _380 + 32] != 9:
                                                if mem[(32 * idx) + _380 + 32] != 10:
                                                    if mem[(32 * idx) + _380 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _731 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _731 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _731 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _380 + 32] != 1:
                            if mem[(32 * idx) + _380 + 32] != 5:
                                if mem[(32 * idx) + _380 + 32] != 6:
                                    if mem[(32 * idx) + _380 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _731 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _380 + 32] != 2:
                                            if mem[(32 * idx) + _380 + 32] != 3:
                                                if mem[(32 * idx) + _380 + 32] != 4:
                                                    if mem[(32 * idx) + _380 + 32] != 8:
                                                        if mem[(32 * idx) + _380 + 32] != 9:
                                                            if mem[(32 * idx) + _380 + 32] != 10:
                                                                if mem[(32 * idx) + _380 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _731 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _731 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _731 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _731 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _731 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _380 + 32] != 2:
                            if mem[(32 * idx) + _380 + 32] != 3:
                                if mem[(32 * idx) + _380 + 32] != 4:
                                    if mem[(32 * idx) + _380 + 32] != 8:
                                        if mem[(32 * idx) + _380 + 32] != 9:
                                            if mem[(32 * idx) + _380 + 32] != 10:
                                                if mem[(32 * idx) + _380 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _731 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _731 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _731 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = 1
                    _1433 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if sha3(mem[_1433 + 32 len mem[_1433]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1433 + 32 len mem[_1433]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp, 0) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp, 0) % 20) - 2:
                        revert with 'NH{q', 17
                    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
                    if stor1 + (sha3(block.timestamp, 0) % 20) <= stor2 + (sha3(mem[_1433 + 32 len mem[_1433]]) % 20):
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor4, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 2
                        sub_35670d2d[stor6] = 1
                    else:
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor3, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 1
                        sub_35670d2d[stor6] = 2
                else:
                    mem[_731 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                        _1182 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1182] == mem[_1182]
                        if idx >= mem[_731]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _731 + 32] = mem[_1182]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_380]:
                        if idx >= mem[_380]:
                            revert with 'NH{q', 50
                        if idx >= mem[_731]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _731 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _380 + 32] != 2:
                                if mem[(32 * idx) + _380 + 32] != 3:
                                    if mem[(32 * idx) + _380 + 32] != 4:
                                        if mem[(32 * idx) + _380 + 32] != 8:
                                            if mem[(32 * idx) + _380 + 32] != 9:
                                                if mem[(32 * idx) + _380 + 32] != 10:
                                                    if mem[(32 * idx) + _380 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _731 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _731 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _731 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _380 + 32] != 1:
                            if mem[(32 * idx) + _380 + 32] != 5:
                                if mem[(32 * idx) + _380 + 32] != 6:
                                    if mem[(32 * idx) + _380 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _731 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _380 + 32] != 2:
                                            if mem[(32 * idx) + _380 + 32] != 3:
                                                if mem[(32 * idx) + _380 + 32] != 4:
                                                    if mem[(32 * idx) + _380 + 32] != 8:
                                                        if mem[(32 * idx) + _380 + 32] != 9:
                                                            if mem[(32 * idx) + _380 + 32] != 10:
                                                                if mem[(32 * idx) + _380 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _731 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _731 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _731 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _731 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _731 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _380 + 32] != 2:
                            if mem[(32 * idx) + _380 + 32] != 3:
                                if mem[(32 * idx) + _380 + 32] != 4:
                                    if mem[(32 * idx) + _380 + 32] != 8:
                                        if mem[(32 * idx) + _380 + 32] != 9:
                                            if mem[(32 * idx) + _380 + 32] != 10:
                                                if mem[(32 * idx) + _380 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _731 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _731 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _731 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = 1
                    _1436 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if sha3(mem[_1436 + 32 len mem[_1436]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1436 + 32 len mem[_1436]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp, 0) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp, 0) % 20) - 2:
                        revert with 'NH{q', 17
                    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
                    if stor1 + (sha3(block.timestamp, 0) % 20) <= stor2 + (sha3(mem[_1436 + 32 len mem[_1436]]) % 20):
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor4, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 2
                        sub_35670d2d[stor6] = 1
                    else:
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor3, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 1
                        sub_35670d2d[stor6] = 2
            else:
                mem[_380 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                    _768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_768] == mem[_768]
                    if idx >= mem[_380]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _380 + 32] = mem[_768]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _732 = mem[64]
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
                        _1183 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1183] == mem[_1183]
                        if idx >= mem[_732]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _732 + 32] = mem[_1183]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_380]:
                        if idx >= mem[_380]:
                            revert with 'NH{q', 50
                        if idx >= mem[_732]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _732 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _380 + 32] != 2:
                                if mem[(32 * idx) + _380 + 32] != 3:
                                    if mem[(32 * idx) + _380 + 32] != 4:
                                        if mem[(32 * idx) + _380 + 32] != 8:
                                            if mem[(32 * idx) + _380 + 32] != 9:
                                                if mem[(32 * idx) + _380 + 32] != 10:
                                                    if mem[(32 * idx) + _380 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _732 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _732 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _732 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _380 + 32] != 1:
                            if mem[(32 * idx) + _380 + 32] != 5:
                                if mem[(32 * idx) + _380 + 32] != 6:
                                    if mem[(32 * idx) + _380 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _732 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _380 + 32] != 2:
                                            if mem[(32 * idx) + _380 + 32] != 3:
                                                if mem[(32 * idx) + _380 + 32] != 4:
                                                    if mem[(32 * idx) + _380 + 32] != 8:
                                                        if mem[(32 * idx) + _380 + 32] != 9:
                                                            if mem[(32 * idx) + _380 + 32] != 10:
                                                                if mem[(32 * idx) + _380 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _732 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _732 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _732 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _732 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _732 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _380 + 32] != 2:
                            if mem[(32 * idx) + _380 + 32] != 3:
                                if mem[(32 * idx) + _380 + 32] != 4:
                                    if mem[(32 * idx) + _380 + 32] != 8:
                                        if mem[(32 * idx) + _380 + 32] != 9:
                                            if mem[(32 * idx) + _380 + 32] != 10:
                                                if mem[(32 * idx) + _380 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _732 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _732 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _732 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = 1
                    _1439 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if sha3(mem[_1439 + 32 len mem[_1439]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1439 + 32 len mem[_1439]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp, 0) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp, 0) % 20) - 2:
                        revert with 'NH{q', 17
                    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
                    if stor1 + (sha3(block.timestamp, 0) % 20) <= stor2 + (sha3(mem[_1439 + 32 len mem[_1439]]) % 20):
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor4, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 2
                        sub_35670d2d[stor6] = 1
                    else:
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor3, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 1
                        sub_35670d2d[stor6] = 2
                else:
                    mem[_732 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                        _1184 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1184] == mem[_1184]
                        if idx >= mem[_732]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _732 + 32] = mem[_1184]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_380]:
                        if idx >= mem[_380]:
                            revert with 'NH{q', 50
                        if idx >= mem[_732]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _732 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _380 + 32] != 2:
                                if mem[(32 * idx) + _380 + 32] != 3:
                                    if mem[(32 * idx) + _380 + 32] != 4:
                                        if mem[(32 * idx) + _380 + 32] != 8:
                                            if mem[(32 * idx) + _380 + 32] != 9:
                                                if mem[(32 * idx) + _380 + 32] != 10:
                                                    if mem[(32 * idx) + _380 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _732 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _732 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _732 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _380 + 32] != 1:
                            if mem[(32 * idx) + _380 + 32] != 5:
                                if mem[(32 * idx) + _380 + 32] != 6:
                                    if mem[(32 * idx) + _380 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _732 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _380 + 32] != 2:
                                            if mem[(32 * idx) + _380 + 32] != 3:
                                                if mem[(32 * idx) + _380 + 32] != 4:
                                                    if mem[(32 * idx) + _380 + 32] != 8:
                                                        if mem[(32 * idx) + _380 + 32] != 9:
                                                            if mem[(32 * idx) + _380 + 32] != 10:
                                                                if mem[(32 * idx) + _380 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _732 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _732 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _732 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _732 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _732 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _380 + 32] != 2:
                            if mem[(32 * idx) + _380 + 32] != 3:
                                if mem[(32 * idx) + _380 + 32] != 4:
                                    if mem[(32 * idx) + _380 + 32] != 8:
                                        if mem[(32 * idx) + _380 + 32] != 9:
                                            if mem[(32 * idx) + _380 + 32] != 10:
                                                if mem[(32 * idx) + _380 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _732 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _732 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _732 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = 1
                    _1442 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if sha3(mem[_1442 + 32 len mem[_1442]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1442 + 32 len mem[_1442]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp, 0) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp, 0) % 20) - 2:
                        revert with 'NH{q', 17
                    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
                    if stor1 + (sha3(block.timestamp, 0) % 20) <= stor2 + (sha3(mem[_1442 + 32 len mem[_1442]]) % 20):
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor4, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 2
                        sub_35670d2d[stor6] = 1
                    else:
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor3, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 1
                        sub_35670d2d[stor6] = 2
            stor1 = 0
            stor2 = 0
            stor3 = 0
            stor4 = 0
            stor5 = 0
            stor6 = 0
    else:
        if stor2:
            revert with 0, 'Waiting for next round'
        if stor1 <= 0:
            stor3 = cd[36]
            stor5 = msg.sender
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = 2328888
            mem[mem[64] + 68] = 100 * 10^18
            require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
            call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, 2328888, 100 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            _381 = mem[64]
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
                    _770 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_770] == mem[_770]
                    if idx >= mem[_381]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _381 + 32] = mem[_770]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _733 = mem[64]
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
                        _1185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1185] == mem[_1185]
                        if idx >= mem[_733]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _733 + 32] = mem[_1185]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_733 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                        _1186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1186] == mem[_1186]
                        if idx >= mem[_733]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _733 + 32] = mem[_1186]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                idx = 0
                s = 0
                while idx < mem[_381]:
                    if idx >= mem[_381]:
                        revert with 'NH{q', 50
                    if idx >= mem[_733]:
                        revert with 'NH{q', 50
                    if s > -11:
                        revert with 'NH{q', 17
                    if s + 10 > -mem[(32 * idx) + _733 + 32] - 1:
                        revert with 'NH{q', 17
                    if idx > 2:
                        if mem[(32 * idx) + _381 + 32] != 2:
                            if mem[(32 * idx) + _381 + 32] != 3:
                                if mem[(32 * idx) + _381 + 32] != 4:
                                    if mem[(32 * idx) + _381 + 32] != 8:
                                        if mem[(32 * idx) + _381 + 32] != 9:
                                            if mem[(32 * idx) + _381 + 32] != 10:
                                                if mem[(32 * idx) + _381 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _733 + 32] + 10
                                                    continue 
                        if s + mem[(32 * idx) + _733 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _733 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _381 + 32] != 1:
                        if mem[(32 * idx) + _381 + 32] != 5:
                            if mem[(32 * idx) + _381 + 32] != 6:
                                if mem[(32 * idx) + _381 + 32] != 7:
                                    if idx <= 2:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _733 + 32] + 10
                                        continue 
                                    if mem[(32 * idx) + _381 + 32] != 2:
                                        if mem[(32 * idx) + _381 + 32] != 3:
                                            if mem[(32 * idx) + _381 + 32] != 4:
                                                if mem[(32 * idx) + _381 + 32] != 8:
                                                    if mem[(32 * idx) + _381 + 32] != 9:
                                                        if mem[(32 * idx) + _381 + 32] != 10:
                                                            if mem[(32 * idx) + _381 + 32] != 11:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                s = s + mem[(32 * idx) + _733 + 32] + 10
                                                                continue 
                                    if s + mem[(32 * idx) + _733 + 32] + 10 > -6:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + mem[(32 * idx) + _733 + 32] + 15
                                    continue 
                    if s + mem[(32 * idx) + _733 + 32] + 10 > -6:
                        revert with 'NH{q', 17
                    if idx <= 2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _733 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _381 + 32] != 2:
                        if mem[(32 * idx) + _381 + 32] != 3:
                            if mem[(32 * idx) + _381 + 32] != 4:
                                if mem[(32 * idx) + _381 + 32] != 8:
                                    if mem[(32 * idx) + _381 + 32] != 9:
                                        if mem[(32 * idx) + _381 + 32] != 10:
                                            if mem[(32 * idx) + _381 + 32] != 11:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = s + mem[(32 * idx) + _733 + 32] + 15
                                                continue 
                    if s + mem[(32 * idx) + _733 + 32] + 15 > -6:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _733 + 32] + 20
                    continue 
            else:
                mem[_381 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                    _772 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_772] == mem[_772]
                    if idx >= mem[_381]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _381 + 32] = mem[_772]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _734 = mem[64]
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
                        _1187 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1187] == mem[_1187]
                        if idx >= mem[_734]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _734 + 32] = mem[_1187]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[_734 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                        _1188 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1188] == mem[_1188]
                        if idx >= mem[_734]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _734 + 32] = mem[_1188]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                idx = 0
                s = 0
                while idx < mem[_381]:
                    if idx >= mem[_381]:
                        revert with 'NH{q', 50
                    if idx >= mem[_734]:
                        revert with 'NH{q', 50
                    if s > -11:
                        revert with 'NH{q', 17
                    if s + 10 > -mem[(32 * idx) + _734 + 32] - 1:
                        revert with 'NH{q', 17
                    if idx > 2:
                        if mem[(32 * idx) + _381 + 32] != 2:
                            if mem[(32 * idx) + _381 + 32] != 3:
                                if mem[(32 * idx) + _381 + 32] != 4:
                                    if mem[(32 * idx) + _381 + 32] != 8:
                                        if mem[(32 * idx) + _381 + 32] != 9:
                                            if mem[(32 * idx) + _381 + 32] != 10:
                                                if mem[(32 * idx) + _381 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _734 + 32] + 10
                                                    continue 
                        if s + mem[(32 * idx) + _734 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _734 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _381 + 32] != 1:
                        if mem[(32 * idx) + _381 + 32] != 5:
                            if mem[(32 * idx) + _381 + 32] != 6:
                                if mem[(32 * idx) + _381 + 32] != 7:
                                    if idx <= 2:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _734 + 32] + 10
                                        continue 
                                    if mem[(32 * idx) + _381 + 32] != 2:
                                        if mem[(32 * idx) + _381 + 32] != 3:
                                            if mem[(32 * idx) + _381 + 32] != 4:
                                                if mem[(32 * idx) + _381 + 32] != 8:
                                                    if mem[(32 * idx) + _381 + 32] != 9:
                                                        if mem[(32 * idx) + _381 + 32] != 10:
                                                            if mem[(32 * idx) + _381 + 32] != 11:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                s = s + mem[(32 * idx) + _734 + 32] + 10
                                                                continue 
                                    if s + mem[(32 * idx) + _734 + 32] + 10 > -6:
                                        revert with 'NH{q', 17
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s + mem[(32 * idx) + _734 + 32] + 15
                                    continue 
                    if s + mem[(32 * idx) + _734 + 32] + 10 > -6:
                        revert with 'NH{q', 17
                    if idx <= 2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _734 + 32] + 15
                        continue 
                    if mem[(32 * idx) + _381 + 32] != 2:
                        if mem[(32 * idx) + _381 + 32] != 3:
                            if mem[(32 * idx) + _381 + 32] != 4:
                                if mem[(32 * idx) + _381 + 32] != 8:
                                    if mem[(32 * idx) + _381 + 32] != 9:
                                        if mem[(32 * idx) + _381 + 32] != 10:
                                            if mem[(32 * idx) + _381 + 32] != 11:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = s + mem[(32 * idx) + _734 + 32] + 15
                                                continue 
                    if s + mem[(32 * idx) + _734 + 32] + 15 > -6:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + _734 + 32] + 20
                    continue 
            stor1 = s
        else:
            stor4 = cd[36]
            stor6 = msg.sender
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = 2328888
            mem[mem[64] + 68] = 100 * 10^18
            require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
            call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor4, 2328888, 100 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            _382 = mem[64]
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
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774]
                    if idx >= mem[_382]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _382 + 32] = mem[_774]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _735 = mem[64]
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
                        _1189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1189] == mem[_1189]
                        if idx >= mem[_735]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _735 + 32] = mem[_1189]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_382]:
                        if idx >= mem[_382]:
                            revert with 'NH{q', 50
                        if idx >= mem[_735]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _735 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _382 + 32] != 2:
                                if mem[(32 * idx) + _382 + 32] != 3:
                                    if mem[(32 * idx) + _382 + 32] != 4:
                                        if mem[(32 * idx) + _382 + 32] != 8:
                                            if mem[(32 * idx) + _382 + 32] != 9:
                                                if mem[(32 * idx) + _382 + 32] != 10:
                                                    if mem[(32 * idx) + _382 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _735 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _735 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _735 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _382 + 32] != 1:
                            if mem[(32 * idx) + _382 + 32] != 5:
                                if mem[(32 * idx) + _382 + 32] != 6:
                                    if mem[(32 * idx) + _382 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _735 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _382 + 32] != 2:
                                            if mem[(32 * idx) + _382 + 32] != 3:
                                                if mem[(32 * idx) + _382 + 32] != 4:
                                                    if mem[(32 * idx) + _382 + 32] != 8:
                                                        if mem[(32 * idx) + _382 + 32] != 9:
                                                            if mem[(32 * idx) + _382 + 32] != 10:
                                                                if mem[(32 * idx) + _382 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _735 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _735 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _735 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _735 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _735 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _382 + 32] != 2:
                            if mem[(32 * idx) + _382 + 32] != 3:
                                if mem[(32 * idx) + _382 + 32] != 4:
                                    if mem[(32 * idx) + _382 + 32] != 8:
                                        if mem[(32 * idx) + _382 + 32] != 9:
                                            if mem[(32 * idx) + _382 + 32] != 10:
                                                if mem[(32 * idx) + _382 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _735 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _735 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _735 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = 1
                    _1445 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if sha3(mem[_1445 + 32 len mem[_1445]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1445 + 32 len mem[_1445]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp, 0) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp, 0) % 20) - 2:
                        revert with 'NH{q', 17
                    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
                    if stor1 + (sha3(block.timestamp, 0) % 20) <= stor2 + (sha3(mem[_1445 + 32 len mem[_1445]]) % 20):
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor4, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 2
                        sub_35670d2d[stor6] = 1
                    else:
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor3, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 1
                        sub_35670d2d[stor6] = 2
                else:
                    mem[_735 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                        _1190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1190] == mem[_1190]
                        if idx >= mem[_735]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _735 + 32] = mem[_1190]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_382]:
                        if idx >= mem[_382]:
                            revert with 'NH{q', 50
                        if idx >= mem[_735]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _735 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _382 + 32] != 2:
                                if mem[(32 * idx) + _382 + 32] != 3:
                                    if mem[(32 * idx) + _382 + 32] != 4:
                                        if mem[(32 * idx) + _382 + 32] != 8:
                                            if mem[(32 * idx) + _382 + 32] != 9:
                                                if mem[(32 * idx) + _382 + 32] != 10:
                                                    if mem[(32 * idx) + _382 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _735 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _735 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _735 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _382 + 32] != 1:
                            if mem[(32 * idx) + _382 + 32] != 5:
                                if mem[(32 * idx) + _382 + 32] != 6:
                                    if mem[(32 * idx) + _382 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _735 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _382 + 32] != 2:
                                            if mem[(32 * idx) + _382 + 32] != 3:
                                                if mem[(32 * idx) + _382 + 32] != 4:
                                                    if mem[(32 * idx) + _382 + 32] != 8:
                                                        if mem[(32 * idx) + _382 + 32] != 9:
                                                            if mem[(32 * idx) + _382 + 32] != 10:
                                                                if mem[(32 * idx) + _382 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _735 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _735 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _735 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _735 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _735 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _382 + 32] != 2:
                            if mem[(32 * idx) + _382 + 32] != 3:
                                if mem[(32 * idx) + _382 + 32] != 4:
                                    if mem[(32 * idx) + _382 + 32] != 8:
                                        if mem[(32 * idx) + _382 + 32] != 9:
                                            if mem[(32 * idx) + _382 + 32] != 10:
                                                if mem[(32 * idx) + _382 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _735 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _735 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _735 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = 1
                    _1448 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if sha3(mem[_1448 + 32 len mem[_1448]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1448 + 32 len mem[_1448]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp, 0) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp, 0) % 20) - 2:
                        revert with 'NH{q', 17
                    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
                    if stor1 + (sha3(block.timestamp, 0) % 20) <= stor2 + (sha3(mem[_1448 + 32 len mem[_1448]]) % 20):
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor4, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 2
                        sub_35670d2d[stor6] = 1
                    else:
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor3, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 1
                        sub_35670d2d[stor6] = 2
            else:
                mem[_382 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                    _776 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_776] == mem[_776]
                    if idx >= mem[_382]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _382 + 32] = mem[_776]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _736 = mem[64]
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
                        _1191 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1191] == mem[_1191]
                        if idx >= mem[_736]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _736 + 32] = mem[_1191]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_382]:
                        if idx >= mem[_382]:
                            revert with 'NH{q', 50
                        if idx >= mem[_736]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _736 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _382 + 32] != 2:
                                if mem[(32 * idx) + _382 + 32] != 3:
                                    if mem[(32 * idx) + _382 + 32] != 4:
                                        if mem[(32 * idx) + _382 + 32] != 8:
                                            if mem[(32 * idx) + _382 + 32] != 9:
                                                if mem[(32 * idx) + _382 + 32] != 10:
                                                    if mem[(32 * idx) + _382 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _736 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _736 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _736 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _382 + 32] != 1:
                            if mem[(32 * idx) + _382 + 32] != 5:
                                if mem[(32 * idx) + _382 + 32] != 6:
                                    if mem[(32 * idx) + _382 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _736 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _382 + 32] != 2:
                                            if mem[(32 * idx) + _382 + 32] != 3:
                                                if mem[(32 * idx) + _382 + 32] != 4:
                                                    if mem[(32 * idx) + _382 + 32] != 8:
                                                        if mem[(32 * idx) + _382 + 32] != 9:
                                                            if mem[(32 * idx) + _382 + 32] != 10:
                                                                if mem[(32 * idx) + _382 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _736 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _736 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _736 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _736 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _736 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _382 + 32] != 2:
                            if mem[(32 * idx) + _382 + 32] != 3:
                                if mem[(32 * idx) + _382 + 32] != 4:
                                    if mem[(32 * idx) + _382 + 32] != 8:
                                        if mem[(32 * idx) + _382 + 32] != 9:
                                            if mem[(32 * idx) + _382 + 32] != 10:
                                                if mem[(32 * idx) + _382 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _736 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _736 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _736 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = 1
                    _1451 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if sha3(mem[_1451 + 32 len mem[_1451]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1451 + 32 len mem[_1451]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp, 0) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp, 0) % 20) - 2:
                        revert with 'NH{q', 17
                    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
                    if stor1 + (sha3(block.timestamp, 0) % 20) <= stor2 + (sha3(mem[_1451 + 32 len mem[_1451]]) % 20):
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor4, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 2
                        sub_35670d2d[stor6] = 1
                    else:
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor3, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 1
                        sub_35670d2d[stor6] = 2
                else:
                    mem[_736 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
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
                        _1192 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1192] == mem[_1192]
                        if idx >= mem[_736]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _736 + 32] = mem[_1192]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 0
                    while idx < mem[_382]:
                        if idx >= mem[_382]:
                            revert with 'NH{q', 50
                        if idx >= mem[_736]:
                            revert with 'NH{q', 50
                        if s > -11:
                            revert with 'NH{q', 17
                        if s + 10 > -mem[(32 * idx) + _736 + 32] - 1:
                            revert with 'NH{q', 17
                        if idx > 2:
                            if mem[(32 * idx) + _382 + 32] != 2:
                                if mem[(32 * idx) + _382 + 32] != 3:
                                    if mem[(32 * idx) + _382 + 32] != 4:
                                        if mem[(32 * idx) + _382 + 32] != 8:
                                            if mem[(32 * idx) + _382 + 32] != 9:
                                                if mem[(32 * idx) + _382 + 32] != 10:
                                                    if mem[(32 * idx) + _382 + 32] != 11:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        s = s + mem[(32 * idx) + _736 + 32] + 10
                                                        continue 
                            if s + mem[(32 * idx) + _736 + 32] + 10 > -6:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _736 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _382 + 32] != 1:
                            if mem[(32 * idx) + _382 + 32] != 5:
                                if mem[(32 * idx) + _382 + 32] != 6:
                                    if mem[(32 * idx) + _382 + 32] != 7:
                                        if idx <= 2:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = s + mem[(32 * idx) + _736 + 32] + 10
                                            continue 
                                        if mem[(32 * idx) + _382 + 32] != 2:
                                            if mem[(32 * idx) + _382 + 32] != 3:
                                                if mem[(32 * idx) + _382 + 32] != 4:
                                                    if mem[(32 * idx) + _382 + 32] != 8:
                                                        if mem[(32 * idx) + _382 + 32] != 9:
                                                            if mem[(32 * idx) + _382 + 32] != 10:
                                                                if mem[(32 * idx) + _382 + 32] != 11:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    s = s + mem[(32 * idx) + _736 + 32] + 10
                                                                    continue 
                                        if s + mem[(32 * idx) + _736 + 32] + 10 > -6:
                                            revert with 'NH{q', 17
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = s + mem[(32 * idx) + _736 + 32] + 15
                                        continue 
                        if s + mem[(32 * idx) + _736 + 32] + 10 > -6:
                            revert with 'NH{q', 17
                        if idx <= 2:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + mem[(32 * idx) + _736 + 32] + 15
                            continue 
                        if mem[(32 * idx) + _382 + 32] != 2:
                            if mem[(32 * idx) + _382 + 32] != 3:
                                if mem[(32 * idx) + _382 + 32] != 4:
                                    if mem[(32 * idx) + _382 + 32] != 8:
                                        if mem[(32 * idx) + _382 + 32] != 9:
                                            if mem[(32 * idx) + _382 + 32] != 10:
                                                if mem[(32 * idx) + _382 + 32] != 11:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = s + mem[(32 * idx) + _736 + 32] + 15
                                                    continue 
                        if s + mem[(32 * idx) + _736 + 32] + 15 > -6:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + mem[(32 * idx) + _736 + 32] + 20
                        continue 
                    stor2 = s
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = 1
                    _1454 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if sha3(mem[_1454 + 32 len mem[_1454]]) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor2 > -(sha3(mem[_1454 + 32 len mem[_1454]]) % 20) - 2:
                        revert with 'NH{q', 17
                    if sha3(block.timestamp, 0) % 20 > -2:
                        revert with 'NH{q', 17
                    if stor1 > -(sha3(block.timestamp, 0) % 20) - 2:
                        revert with 'NH{q', 17
                    require ext_code.size(0x253e55363f9440b532d13c228cb633bac94f3b7c)
                    if stor1 + (sha3(block.timestamp, 0) % 20) <= stor2 + (sha3(mem[_1454 + 32 len mem[_1454]]) % 20):
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor4, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 2
                        sub_35670d2d[stor6] = 1
                    else:
                        call 0x253e55363f9440b532d13c228cb633bac94f3b7c.transfer_to_summoner(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args 2328888, stor3, 190 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_35670d2d[stor5] = 1
                        sub_35670d2d[stor6] = 2
            stor1 = 0
            stor2 = 0
            stor3 = 0
            stor4 = 0
            stor5 = 0
            stor6 = 0
}



}
