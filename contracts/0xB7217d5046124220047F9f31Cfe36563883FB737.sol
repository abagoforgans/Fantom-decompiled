contract main {




// =====================  Runtime code  =====================


array of struct sub_3d287686;
address stor1;
address stor2;
address stor3;
address stor4;

function sub_3d287686(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_3d287686[arg1].field_0
    return sub_3d287686[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_c2496565(?) payable {
    sub_3d287686[address(msg.sender)].field_0 = 0
    idx = 0
    while sub_3d287686[address(msg.sender)].field_0 > idx:
        sub_3d287686[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_3303b4f2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[32] = 0
        sub_3d287686[address(msg.sender)].field_0++
        mem[0] = sha3(address(msg.sender), 0)
        sub_3d287686[address(msg.sender)][sub_3d287686[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fa288f8f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint32(cd[36])
    require cd[68] == uint32(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    require cd[164] == uint32(cd[164])
    require cd[196] == uint32(cd[196])
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor1)
        staticcall stor1.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == mem[_9 + 12 len 20]
        if mem[_9 + 12 len 20] == msg.sender:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint32(cd[36])
            mem[mem[64] + 68] = uint32(cd[68])
            mem[mem[64] + 100] = uint32(cd[100])
            mem[mem[64] + 132] = uint32(cd[132])
            mem[mem[64] + 164] = uint32(cd[164])
            mem[mem[64] + 196] = uint32(cd[196])
            require ext_code.size(stor2)
            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], cd[36] << 224, cd[68] << 224, cd[100] << 224, cd[132] << 224, cd[164] << 224, uint32(cd[196])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function claimGold() payable {
    mem[0] = msg.sender
    mem[32] = 0
    mem[64] = (32 * sub_3d287686[address(msg.sender)].field_0) + 128
    mem[96] = sub_3d287686[address(msg.sender)].field_0
    if not sub_3d287686[address(msg.sender)].field_0:
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _17 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor4)
            staticcall stor4.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args _17
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_20] == mem[_20]
            if mem[_20] > 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _23 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _23
                require ext_code.size(stor4)
                call stor4.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args _23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(address(msg.sender), 0)
        mem[128] = sub_3d287686[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _39 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor4)
            staticcall stor4.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args _39
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_42] == mem[_42]
            if mem[_42] > 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _45 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _45
                require ext_code.size(stor4)
                call stor4.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args _45
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function adventure() payable {
    mem[0] = msg.sender
    mem[32] = 0
    mem[64] = (32 * sub_3d287686[address(msg.sender)].field_0) + 128
    mem[96] = sub_3d287686[address(msg.sender)].field_0
    if not sub_3d287686[address(msg.sender)].field_0:
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _17 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _17
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_20] == mem[_20]
            if block.timestamp > mem[_20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _23 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _23
                require ext_code.size(stor1)
                call stor1.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(address(msg.sender), 0)
        mem[128] = sub_3d287686[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _39 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _39
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_42] == mem[_42]
            if block.timestamp > mem[_42]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _45 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _45
                require ext_code.size(stor1)
                call stor1.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _45
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_e1023537(?) payable {
    mem[0] = msg.sender
    mem[32] = 0
    mem[64] = (32 * sub_3d287686[address(msg.sender)].field_0) + 128
    mem[96] = sub_3d287686[address(msg.sender)].field_0
    if not sub_3d287686[address(msg.sender)].field_0:
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _19 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor3)
            staticcall stor3.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _19
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_22] == mem[_22]
            if block.timestamp > mem[_22]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _25 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor3)
                call stor3.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _25
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_28] == mem[_28]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(address(msg.sender), 0)
        mem[128] = sub_3d287686[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _45 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor3)
            staticcall stor3.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _45
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_48] == mem[_48]
            if block.timestamp > mem[_48]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _51 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor3)
                call stor3.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _51
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _54 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_54] == mem[_54]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function levelUp() payable {
    mem[0] = msg.sender
    mem[32] = 0
    mem[64] = (32 * sub_3d287686[address(msg.sender)].field_0) + 128
    mem[96] = sub_3d287686[address(msg.sender)].field_0
    if not sub_3d287686[address(msg.sender)].field_0:
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _27 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _27
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _31 = mem[_30]
            require mem[_30] == mem[_30]
            mem[mem[64] + 4] = mem[_30]
            require ext_code.size(stor1)
            staticcall stor1.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _31
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _34 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _35 = mem[_34]
            require mem[_34] == mem[_34]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _37 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _37
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_40] == mem[_40]
            if mem[_40] >= _35:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _43 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _43
                require ext_code.size(stor1)
                call stor1.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args _43
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(address(msg.sender), 0)
        mem[128] = sub_3d287686[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _69 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _69
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _73 = mem[_72]
            require mem[_72] == mem[_72]
            mem[mem[64] + 4] = mem[_72]
            require ext_code.size(stor1)
            staticcall stor1.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _73
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _77 = mem[_76]
            require mem[_76] == mem[_76]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _79 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _79
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_82] == mem[_82]
            if mem[_82] >= _77:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _85 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _85
                require ext_code.size(stor1)
                call stor1.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args _85
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
