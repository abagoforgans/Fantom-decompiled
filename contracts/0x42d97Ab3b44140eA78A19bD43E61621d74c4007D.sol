contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
array of struct sub_b6727da1;

function sub_b6727da1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_b6727da1[arg1].field_0
    return sub_b6727da1[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_e0b75664(?) payable {
    require calldata.size - 4 >= 64
    idx = arg1
    while idx < arg2:
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = idx
        require ext_code.size(stor1)
        call stor1.claim(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_75fc2e1a(?) payable {
    require calldata.size - 4 >= 64
    idx = arg1
    while idx < arg2:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = idx
        require ext_code.size(stor0)
        call stor0.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f712c290(?) payable {
    require calldata.size - 4 >= 64
    idx = arg1
    while idx < arg2:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = idx
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8964d307(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    idx = arg1
    while idx < arg2:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor3)
        call stor3.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ca43d661(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor1)
        call stor1.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7b95901e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_95b88cc5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5b819e57(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor3)
        call stor3.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_9877e19f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_b6727da1[address(arg1)].field_0:
        mem[128] = sub_b6727da1[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_b6727da1[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_b6727da1[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_b6727da1[address(arg1)].field_0, data=mem[128 len 32 * sub_b6727da1[address(arg1)].field_0])
    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 160] = sub_b6727da1[address(arg1)].field_0
    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 192 len 32 * sub_b6727da1[address(arg1)].field_0] = mem[128 len 32 * sub_b6727da1[address(arg1)].field_0]
    return memory
      from (32 * sub_b6727da1[address(arg1)].field_0) + 128
       len (96 * sub_b6727da1[address(arg1)].field_0) + 64
}

function sub_896690ac(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = 0xe58410bb00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(stor0)
        call stor0.spend_xp(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_0d5deecc(?) payable {
    if not sub_b6727da1[0].field_0:
        idx = 0
        while idx < sub_b6727da1[0].field_0:
            if idx >= sub_b6727da1[0].field_0:
                revert with 0, 50
            _10 = mem[(32 * idx) + 128]
            mem[(32 * sub_b6727da1[0].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_b6727da1[0].field_0) + 132] = _10
            require ext_code.size(stor1)
            call stor1.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_b6727da1[0].field_0
        idx = 128
        s = 0
        while (32 * sub_b6727da1[0].field_0) + 96 > idx:
            mem[idx + 32] = sub_b6727da1[0][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_b6727da1[0].field_0:
            if idx >= sub_b6727da1[0].field_0:
                revert with 0, 50
            _19 = mem[(32 * idx) + 128]
            mem[(32 * sub_b6727da1[0].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_b6727da1[0].field_0) + 132] = _19
            require ext_code.size(stor1)
            call stor1.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _19
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_f8547e2a(?) payable {
    if not sub_b6727da1[0].field_0:
        idx = 0
        while idx < sub_b6727da1[0].field_0:
            if idx >= sub_b6727da1[0].field_0:
                revert with 0, 50
            _10 = mem[(32 * idx) + 128]
            mem[(32 * sub_b6727da1[0].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_b6727da1[0].field_0) + 132] = _10
            require ext_code.size(stor0)
            call stor0.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_b6727da1[0].field_0
        idx = 128
        s = 0
        while (32 * sub_b6727da1[0].field_0) + 96 > idx:
            mem[idx + 32] = sub_b6727da1[0][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_b6727da1[0].field_0:
            if idx >= sub_b6727da1[0].field_0:
                revert with 0, 50
            _19 = mem[(32 * idx) + 128]
            mem[(32 * sub_b6727da1[0].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_b6727da1[0].field_0) + 132] = _19
            require ext_code.size(stor0)
            call stor0.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _19
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_28945fab(?) payable {
    mem[64] = (32 * sub_b6727da1[0].field_0) + 128
    mem[96] = sub_b6727da1[0].field_0
    if not sub_b6727da1[0].field_0:
        idx = 0
        while idx < sub_b6727da1[0].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _12 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor3)
            call stor3.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_b6727da1[0].field_0
        idx = 128
        s = 0
        while (32 * sub_b6727da1[0].field_0) + 96 > idx:
            mem[idx + 32] = sub_b6727da1[0][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_b6727da1[0].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _25 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor3)
            call stor3.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _25
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_1799f59f(?) payable {
    if not sub_b6727da1[address(msg.sender)].field_0:
        idx = 0
        while idx < sub_b6727da1[address(msg.sender)].field_0:
            if idx >= sub_b6727da1[address(msg.sender)].field_0:
                revert with 0, 50
            _10 = mem[(32 * idx) + 128]
            mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 132] = _10
            require ext_code.size(stor0)
            call stor0.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_b6727da1[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_b6727da1[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_b6727da1[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_b6727da1[address(msg.sender)].field_0:
            if idx >= sub_b6727da1[address(msg.sender)].field_0:
                revert with 0, 50
            _19 = mem[(32 * idx) + 128]
            mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 132] = _19
            require ext_code.size(stor0)
            call stor0.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _19
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_eae4010b(?) payable {
    require calldata.size - 4 >= 96
    if 1 == arg2:
        idx = 0
        while idx < arg3:
            mem[96] = 0xde99903900000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            require ext_code.size(stor2)
            call stor2.increase_strength(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if 2 == arg2:
            idx = 0
            while idx < arg3:
                mem[96] = 0x5934d9c00000000000000000000000000000000000000000000000000000000
                mem[100] = arg1
                require ext_code.size(stor2)
                call stor2.increase_dexterity(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 3 == arg2:
                idx = 0
                while idx < arg3:
                    mem[96] = 0xe0d92c4a00000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(stor2)
                    call stor2.increase_constitution(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if 4 == arg2:
                    idx = 0
                    while idx < arg3:
                        mem[96] = 0x96cf4c4b00000000000000000000000000000000000000000000000000000000
                        mem[100] = arg1
                        require ext_code.size(stor2)
                        call stor2.increase_intelligence(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if 5 == arg2:
                        idx = 0
                        while idx < arg3:
                            mem[96] = 0xfe6676b300000000000000000000000000000000000000000000000000000000
                            mem[100] = arg1
                            require ext_code.size(stor2)
                            call stor2.increase_wisdom(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if 6 == arg2:
                            idx = 0
                            while idx < arg3:
                                mem[96] = 0xbf2bf89500000000000000000000000000000000000000000000000000000000
                                mem[100] = arg1
                                require ext_code.size(stor2)
                                call stor2.increase_charisma(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
}

function sub_119db0bc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not sub_b6727da1[address(arg1)].field_0:
        if arg2:
            idx = arg2
            while idx < arg3:
                if idx >= sub_b6727da1[address(arg1)].field_0:
                    revert with 0, 50
                _20 = mem[(32 * idx) + 128]
                mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _20
                require ext_code.size(stor1)
                call stor1.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args _20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg3:
                idx = arg2
                while idx < arg3:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _22 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _22
                    require ext_code.size(stor1)
                    call stor1.claim(uint256 arg1) with:
                         gas gas_remaining wei
                        args _22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < sub_b6727da1[address(arg1)].field_0:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _24 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _24
                    require ext_code.size(stor1)
                    call stor1.claim(uint256 arg1) with:
                         gas gas_remaining wei
                        args _24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        mem[128] = sub_b6727da1[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_b6727da1[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_b6727da1[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg2:
            idx = arg2
            while idx < arg3:
                if idx >= sub_b6727da1[address(arg1)].field_0:
                    revert with 0, 50
                _45 = mem[(32 * idx) + 128]
                mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _45
                require ext_code.size(stor1)
                call stor1.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args _45
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg3:
                idx = arg2
                while idx < arg3:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _47 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _47
                    require ext_code.size(stor1)
                    call stor1.claim(uint256 arg1) with:
                         gas gas_remaining wei
                        args _47
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < sub_b6727da1[address(arg1)].field_0:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _49 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _49
                    require ext_code.size(stor1)
                    call stor1.claim(uint256 arg1) with:
                         gas gas_remaining wei
                        args _49
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}

function sub_0a9182c1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not sub_b6727da1[address(arg1)].field_0:
        if arg2:
            idx = arg2
            while idx < arg3:
                if idx >= sub_b6727da1[address(arg1)].field_0:
                    revert with 0, 50
                _20 = mem[(32 * idx) + 128]
                mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _20
                require ext_code.size(stor0)
                call stor0.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args _20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg3:
                idx = arg2
                while idx < arg3:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _22 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _22
                    require ext_code.size(stor0)
                    call stor0.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args _22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < sub_b6727da1[address(arg1)].field_0:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _24 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _24
                    require ext_code.size(stor0)
                    call stor0.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args _24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        mem[128] = sub_b6727da1[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_b6727da1[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_b6727da1[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg2:
            idx = arg2
            while idx < arg3:
                if idx >= sub_b6727da1[address(arg1)].field_0:
                    revert with 0, 50
                _45 = mem[(32 * idx) + 128]
                mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _45
                require ext_code.size(stor0)
                call stor0.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args _45
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg3:
                idx = arg2
                while idx < arg3:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _47 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _47
                    require ext_code.size(stor0)
                    call stor0.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args _47
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < sub_b6727da1[address(arg1)].field_0:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _49 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _49
                    require ext_code.size(stor0)
                    call stor0.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args _49
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}

function sub_b1cd5e87(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[64] = (32 * sub_b6727da1[address(arg1)].field_0) + 128
    mem[96] = sub_b6727da1[address(arg1)].field_0
    if not sub_b6727da1[address(arg1)].field_0:
        if arg2:
            idx = arg2
            while idx < arg3:
                if idx >= mem[96]:
                    revert with 0, 50
                _26 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor3)
                call stor3.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _26
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg3:
                idx = arg2
                while idx < arg3:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _28 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor3)
                    call stor3.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _28
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < sub_b6727da1[address(arg1)].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _30 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor3)
                    call stor3.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _30
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        mem[128] = sub_b6727da1[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_b6727da1[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_b6727da1[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg2:
            idx = arg2
            while idx < arg3:
                if idx >= mem[96]:
                    revert with 0, 50
                _63 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor3)
                call stor3.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _63
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg3:
                idx = arg2
                while idx < arg3:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _65 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor3)
                    call stor3.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _65
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < sub_b6727da1[address(arg1)].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _67 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(stor3)
                    call stor3.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _67
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}

function sub_8429f77b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if address(arg1):
        if not sub_b6727da1[address(arg1)].field_0:
            if arg2:
                idx = arg2
                while idx < arg3:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _39 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _39
                    require ext_code.size(stor0)
                    call stor0.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _39
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if arg3:
                    idx = arg2
                    while idx < arg3:
                        if idx >= sub_b6727da1[address(arg1)].field_0:
                            revert with 0, 50
                        _41 = mem[(32 * idx) + 128]
                        mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _41
                        require ext_code.size(stor0)
                        call stor0.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _41
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    idx = 0
                    while idx < sub_b6727da1[address(arg1)].field_0:
                        if idx >= sub_b6727da1[address(arg1)].field_0:
                            revert with 0, 50
                        _43 = mem[(32 * idx) + 128]
                        mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _43
                        require ext_code.size(stor0)
                        call stor0.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _43
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            mem[128] = sub_b6727da1[address(arg1)].field_0
            idx = 128
            s = 0
            while (32 * sub_b6727da1[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = sub_b6727da1[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if arg2:
                idx = arg2
                while idx < arg3:
                    if idx >= sub_b6727da1[address(arg1)].field_0:
                        revert with 0, 50
                    _89 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _89
                    require ext_code.size(stor0)
                    call stor0.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _89
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if arg3:
                    idx = arg2
                    while idx < arg3:
                        if idx >= sub_b6727da1[address(arg1)].field_0:
                            revert with 0, 50
                        _91 = mem[(32 * idx) + 128]
                        mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _91
                        require ext_code.size(stor0)
                        call stor0.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _91
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    idx = 0
                    while idx < sub_b6727da1[address(arg1)].field_0:
                        if idx >= sub_b6727da1[address(arg1)].field_0:
                            revert with 0, 50
                        _93 = mem[(32 * idx) + 128]
                        mem[(32 * sub_b6727da1[address(arg1)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b6727da1[address(arg1)].field_0) + 132] = _93
                        require ext_code.size(stor0)
                        call stor0.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _93
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    else:
        if not sub_b6727da1[address(msg.sender)].field_0:
            if arg2:
                idx = arg2
                while idx < arg3:
                    if idx >= sub_b6727da1[address(msg.sender)].field_0:
                        revert with 0, 50
                    _45 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 132] = _45
                    require ext_code.size(stor0)
                    call stor0.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _45
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if arg3:
                    idx = arg2
                    while idx < arg3:
                        if idx >= sub_b6727da1[address(msg.sender)].field_0:
                            revert with 0, 50
                        _47 = mem[(32 * idx) + 128]
                        mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 132] = _47
                        require ext_code.size(stor0)
                        call stor0.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _47
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    idx = 0
                    while idx < sub_b6727da1[address(msg.sender)].field_0:
                        if idx >= sub_b6727da1[address(msg.sender)].field_0:
                            revert with 0, 50
                        _49 = mem[(32 * idx) + 128]
                        mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 132] = _49
                        require ext_code.size(stor0)
                        call stor0.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _49
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            mem[128] = sub_b6727da1[address(msg.sender)].field_0
            idx = 128
            s = 0
            while (32 * sub_b6727da1[address(msg.sender)].field_0) + 96 > idx:
                mem[idx + 32] = sub_b6727da1[address(msg.sender)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if arg2:
                idx = arg2
                while idx < arg3:
                    if idx >= sub_b6727da1[address(msg.sender)].field_0:
                        revert with 0, 50
                    _95 = mem[(32 * idx) + 128]
                    mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 132] = _95
                    require ext_code.size(stor0)
                    call stor0.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _95
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if arg3:
                    idx = arg2
                    while idx < arg3:
                        if idx >= sub_b6727da1[address(msg.sender)].field_0:
                            revert with 0, 50
                        _97 = mem[(32 * idx) + 128]
                        mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 132] = _97
                        require ext_code.size(stor0)
                        call stor0.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    idx = 0
                    while idx < sub_b6727da1[address(msg.sender)].field_0:
                        if idx >= sub_b6727da1[address(msg.sender)].field_0:
                            revert with 0, 50
                        _99 = mem[(32 * idx) + 128]
                        mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b6727da1[address(msg.sender)].field_0) + 132] = _99
                        require ext_code.size(stor0)
                        call stor0.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _99
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
}

function sub_5e26cc5c(?) payable {
    require calldata.size - 4 >= 64
    if arg2:
        if 1 == arg2:
            require ext_code.size(stor2)
            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args 0, arg1, 16, 16, 16, 8, 10, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == arg2:
                require ext_code.size(stor2)
                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args 0, arg1, 8, 14, 10, 15, 14, 16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == arg2:
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args 0, arg1, 13, 13, 14, 8, 18, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == arg2:
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args 0, arg1, 8, 12, 16, 9, 18, 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == arg2:
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args 0, arg1, 17, 9, 16, 8, 15, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 6 == arg2:
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args 0, arg1, 8, 18, 15, 8, 15, 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == arg2:
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args 0, arg1, 16, 10, 16, 10, 10, 14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 8 == arg2:
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args 0, arg1, 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == arg2:
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args 0, arg1, 8, 16, 14, 14, 12, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 10 == arg2:
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args 0, arg1, 9, 15, 15, 9, 9, 17
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 11 == arg2:
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args 0, arg1, 8, 14, 15, 17, 13, 8
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor0)
        staticcall stor0.0x3613a9f4 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1 == ext_call.return_data[0]:
            require ext_code.size(stor2)
            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args arg1, 16, 16, 16, 8, 10, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == ext_call.return_data[0]:
                require ext_code.size(stor2)
                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args arg1, 8, 14, 10, 15, 14, 16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args arg1, 13, 13, 14, 8, 18, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args arg1, 8, 12, 16, 9, 18, 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args arg1, 17, 9, 16, 8, 15, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 6 == ext_call.return_data[0]:
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args arg1, 8, 18, 15, 8, 15, 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == ext_call.return_data[0]:
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args arg1, 16, 10, 16, 10, 10, 14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 8 == ext_call.return_data[0]:
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args arg1, 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == ext_call.return_data[0]:
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args arg1, 8, 16, 14, 14, 12, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 10 == ext_call.return_data[0]:
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args arg1, 9, 15, 15, 9, 9, 17
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 11 == ext_call.return_data[0]:
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args arg1, 8, 14, 15, 17, 13, 8
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6ed5ad3d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.0x3613a9f4 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 1 == mem[_29]:
            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = 16
            mem[mem[64] + 68] = 16
            mem[mem[64] + 100] = 16
            mem[mem[64] + 132] = 8
            mem[mem[64] + 164] = 10
            mem[mem[64] + 196] = 8
            require ext_code.size(stor2)
            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 16, 16, 16, 8, 10, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == mem[_29]:
                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 14
                mem[mem[64] + 100] = 10
                mem[mem[64] + 132] = 15
                mem[mem[64] + 164] = 14
                mem[mem[64] + 196] = 16
                require ext_code.size(stor2)
                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)], 8, 14, 10, 15, 14, 16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == mem[_29]:
                    mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 36] = 13
                    mem[mem[64] + 68] = 13
                    mem[mem[64] + 100] = 14
                    mem[mem[64] + 132] = 8
                    mem[mem[64] + 164] = 18
                    mem[mem[64] + 196] = 8
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)], 13, 13, 14, 8, 18, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == mem[_29]:
                        mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 36] = 8
                        mem[mem[64] + 68] = 12
                        mem[mem[64] + 100] = 16
                        mem[mem[64] + 132] = 9
                        mem[mem[64] + 164] = 18
                        mem[mem[64] + 196] = 9
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[4] + 36)], 8, 12, 16, 9, 18, 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == mem[_29]:
                            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 36] = 17
                            mem[mem[64] + 68] = 9
                            mem[mem[64] + 100] = 16
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 15
                            mem[mem[64] + 196] = 8
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)], 17, 9, 16, 8, 15, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 6 == mem[_29]:
                                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 18
                                mem[mem[64] + 100] = 15
                                mem[mem[64] + 132] = 8
                                mem[mem[64] + 164] = 15
                                mem[mem[64] + 196] = 8
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[4] + 36)], 8, 18, 15, 8, 15, 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == mem[_29]:
                                    mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64] + 36] = 16
                                    mem[mem[64] + 68] = 10
                                    mem[mem[64] + 100] = 16
                                    mem[mem[64] + 132] = 10
                                    mem[mem[64] + 164] = 10
                                    mem[mem[64] + 196] = 14
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)], 16, 10, 16, 10, 10, 14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 8 == mem[_29]:
                                        mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 18
                                        mem[mem[64] + 100] = 15
                                        mem[mem[64] + 132] = 8
                                        mem[mem[64] + 164] = 15
                                        mem[mem[64] + 196] = 8
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)], 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == mem[_29]:
                                            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[mem[64] + 36] = 8
                                            mem[mem[64] + 68] = 16
                                            mem[mem[64] + 100] = 14
                                            mem[mem[64] + 132] = 14
                                            mem[mem[64] + 164] = 12
                                            mem[mem[64] + 196] = 14
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * idx) + cd[4] + 36)], 8, 16, 14, 14, 12, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 10 == mem[_29]:
                                                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[mem[64] + 36] = 9
                                                mem[mem[64] + 68] = 15
                                                mem[mem[64] + 100] = 15
                                                mem[mem[64] + 132] = 9
                                                mem[mem[64] + 164] = 9
                                                mem[mem[64] + 196] = 17
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * idx) + cd[4] + 36)], 9, 15, 15, 9, 9, 17
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 11 == mem[_29]:
                                                    mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                                    mem[mem[64] + 36] = 8
                                                    mem[mem[64] + 68] = 14
                                                    mem[mem[64] + 100] = 15
                                                    mem[mem[64] + 132] = 17
                                                    mem[mem[64] + 164] = 13
                                                    mem[mem[64] + 196] = 8
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args cd[((32 * idx) + cd[4] + 36)], 8, 14, 15, 17, 13, 8
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c54b8373(?) payable {
    mem[64] = 96
    idx = 1
    while idx <= 11:
        require ext_code.size(stor0)
        staticcall stor0.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        s = 0
        while s < 10:
            mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            require ext_code.size(stor0)
            call stor0.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if _18 > -11:
            revert with 0, 17
        if var51002 < _18 + 10:
            if idx:
                if 1 == idx:
                    mem[mem[64] + 100] = 16
                    mem[mem[64] + 132] = 8
                    mem[mem[64] + 164] = 10
                    mem[mem[64] + 196] = 8
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args var55002, 16, 16, 16, 8, 10, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 2 == idx:
                        mem[mem[64] + 100] = 10
                        mem[mem[64] + 132] = 15
                        mem[mem[64] + 164] = 14
                        mem[mem[64] + 196] = 16
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args var55002, 8, 14, 10, 15, 14, 16
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 3 == idx:
                            mem[mem[64] + 100] = 14
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 18
                            mem[mem[64] + 196] = 8
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args var55002, 13, 13, 14, 8, 18, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 4 == idx:
                                mem[mem[64] + 100] = 16
                                mem[mem[64] + 132] = 9
                                mem[mem[64] + 164] = 18
                                mem[mem[64] + 196] = 9
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args var55002, 8, 12, 16, 9, 18, 9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 5 == idx:
                                    mem[mem[64] + 100] = 16
                                    mem[mem[64] + 132] = 8
                                    mem[mem[64] + 164] = 15
                                    mem[mem[64] + 196] = 8
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args var55002, 17, 9, 16, 8, 15, 8
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 6 == idx:
                                        mem[mem[64] + 100] = 15
                                        mem[mem[64] + 132] = 8
                                        mem[mem[64] + 164] = 15
                                        mem[mem[64] + 196] = 8
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args var55002, 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == idx:
                                            mem[mem[64] + 100] = 16
                                            mem[mem[64] + 132] = 10
                                            mem[mem[64] + 164] = 10
                                            mem[mem[64] + 196] = 14
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args var55002, 16, 10, 16, 10, 10, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 8 == idx:
                                                mem[mem[64] + 100] = 15
                                                mem[mem[64] + 132] = 8
                                                mem[mem[64] + 164] = 15
                                                mem[mem[64] + 196] = 8
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args var55002, 8, 18, 15, 8, 15, 8
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == idx:
                                                    mem[mem[64] + 100] = 14
                                                    mem[mem[64] + 132] = 14
                                                    mem[mem[64] + 164] = 12
                                                    mem[mem[64] + 196] = 14
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args var55002, 8, 16, 14, 14, 12, 14
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 10 == idx:
                                                        mem[mem[64] + 100] = 15
                                                        mem[mem[64] + 132] = 9
                                                        mem[mem[64] + 164] = 9
                                                        mem[mem[64] + 196] = 17
                                                        require ext_code.size(stor2)
                                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                             gas gas_remaining wei
                                                            args var55002, 9, 15, 15, 9, 9, 17
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 11 == idx:
                                                            mem[mem[64] + 100] = 15
                                                            mem[mem[64] + 132] = 17
                                                            mem[mem[64] + 164] = 13
                                                            mem[mem[64] + 196] = 8
                                                            require ext_code.size(stor2)
                                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                                 gas gas_remaining wei
                                                                args var55002, 8, 14, 15, 17, 13, 8
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 4] = var55002
                require ext_code.size(stor0)
                staticcall stor0.0x3613a9f4 with:
                        gas gas_remaining wei
                       args var55002
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _895 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 1 == mem[_895]:
                    mem[mem[64] + 100] = 16
                    mem[mem[64] + 132] = 8
                    mem[mem[64] + 164] = 10
                    mem[mem[64] + 196] = 8
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args var55002, 16, 16, 16, 8, 10, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 2 == mem[_895]:
                        mem[mem[64] + 100] = 10
                        mem[mem[64] + 132] = 15
                        mem[mem[64] + 164] = 14
                        mem[mem[64] + 196] = 16
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args var55002, 8, 14, 10, 15, 14, 16
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 3 == mem[_895]:
                            mem[mem[64] + 100] = 14
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 18
                            mem[mem[64] + 196] = 8
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args var55002, 13, 13, 14, 8, 18, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 4 == mem[_895]:
                                mem[mem[64] + 100] = 16
                                mem[mem[64] + 132] = 9
                                mem[mem[64] + 164] = 18
                                mem[mem[64] + 196] = 9
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args var55002, 8, 12, 16, 9, 18, 9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 5 == mem[_895]:
                                    mem[mem[64] + 100] = 16
                                    mem[mem[64] + 132] = 8
                                    mem[mem[64] + 164] = 15
                                    mem[mem[64] + 196] = 8
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args var55002, 17, 9, 16, 8, 15, 8
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 6 == mem[_895]:
                                        mem[mem[64] + 100] = 15
                                        mem[mem[64] + 132] = 8
                                        mem[mem[64] + 164] = 15
                                        mem[mem[64] + 196] = 8
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args var55002, 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == mem[_895]:
                                            mem[mem[64] + 100] = 16
                                            mem[mem[64] + 132] = 10
                                            mem[mem[64] + 164] = 10
                                            mem[mem[64] + 196] = 14
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args var55002, 16, 10, 16, 10, 10, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 8 == mem[_895]:
                                                mem[mem[64] + 100] = 15
                                                mem[mem[64] + 132] = 8
                                                mem[mem[64] + 164] = 15
                                                mem[mem[64] + 196] = 8
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args var55002, 8, 18, 15, 8, 15, 8
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == mem[_895]:
                                                    mem[mem[64] + 100] = 14
                                                    mem[mem[64] + 132] = 14
                                                    mem[mem[64] + 164] = 12
                                                    mem[mem[64] + 196] = 14
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args var55002, 8, 16, 14, 14, 12, 14
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 10 == mem[_895]:
                                                        mem[mem[64] + 100] = 15
                                                        mem[mem[64] + 132] = 9
                                                        mem[mem[64] + 164] = 9
                                                        mem[mem[64] + 196] = 17
                                                        require ext_code.size(stor2)
                                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                             gas gas_remaining wei
                                                            args var55002, 9, 15, 15, 9, 9, 17
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 11 == mem[_895]:
                                                            mem[mem[64] + 100] = 15
                                                            mem[mem[64] + 132] = 17
                                                            mem[mem[64] + 164] = 13
                                                            mem[mem[64] + 196] = 8
                                                            require ext_code.size(stor2)
                                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                                 gas gas_remaining wei
                                                                args var55002, 8, 14, 15, 17, 13, 8
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
            mem[32] = 4
            sub_b6727da1[msg.sender].field_0++
            mem[0] = sha3(msg.sender, 4)
            sub_b6727da1[msg.sender][sub_b6727da1[msg.sender].field_0].field_0 = var55004
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = var55004
            require ext_code.size(stor0)
            call stor0.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, var55004
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var55004 == -1:
                revert with 0, 17
            if _18 > -11:
                revert with 0, 17
            if var55004 + 1 < _18 + 10:
                var55002 = var55004 + 1
                var55004 = var55004 + 1
                continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_0e198440(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < arg2:
        mem[ceil32(return_data.size) + 96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(stor0)
        call stor0.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    if var49002 >= ext_call.return_data[0] + arg2:
    if arg1:
        if 1 == arg1:
            mem[ceil32(return_data.size) + 196] = 16
            mem[ceil32(return_data.size) + 228] = 8
            mem[ceil32(return_data.size) + 260] = 10
            mem[ceil32(return_data.size) + 292] = 8
            require ext_code.size(stor2)
            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args var53002, 16, 16, 16, 8, 10, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == arg1:
                mem[ceil32(return_data.size) + 196] = 10
                mem[ceil32(return_data.size) + 228] = 15
                mem[ceil32(return_data.size) + 260] = 14
                mem[ceil32(return_data.size) + 292] = 16
                require ext_code.size(stor2)
                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args var53002, 8, 14, 10, 15, 14, 16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == arg1:
                    mem[ceil32(return_data.size) + 196] = 14
                    mem[ceil32(return_data.size) + 228] = 8
                    mem[ceil32(return_data.size) + 260] = 18
                    mem[ceil32(return_data.size) + 292] = 8
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args var53002, 13, 13, 14, 8, 18, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == arg1:
                        mem[ceil32(return_data.size) + 196] = 16
                        mem[ceil32(return_data.size) + 228] = 9
                        mem[ceil32(return_data.size) + 260] = 18
                        mem[ceil32(return_data.size) + 292] = 9
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args var53002, 8, 12, 16, 9, 18, 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == arg1:
                            mem[ceil32(return_data.size) + 196] = 16
                            mem[ceil32(return_data.size) + 228] = 8
                            mem[ceil32(return_data.size) + 260] = 15
                            mem[ceil32(return_data.size) + 292] = 8
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args var53002, 17, 9, 16, 8, 15, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 6 == arg1:
                                mem[ceil32(return_data.size) + 196] = 15
                                mem[ceil32(return_data.size) + 228] = 8
                                mem[ceil32(return_data.size) + 260] = 15
                                mem[ceil32(return_data.size) + 292] = 8
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args var53002, 8, 18, 15, 8, 15, 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == arg1:
                                    mem[ceil32(return_data.size) + 196] = 16
                                    mem[ceil32(return_data.size) + 228] = 10
                                    mem[ceil32(return_data.size) + 260] = 10
                                    mem[ceil32(return_data.size) + 292] = 14
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args var53002, 16, 10, 16, 10, 10, 14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 8 == arg1:
                                        mem[ceil32(return_data.size) + 196] = 15
                                        mem[ceil32(return_data.size) + 228] = 8
                                        mem[ceil32(return_data.size) + 260] = 15
                                        mem[ceil32(return_data.size) + 292] = 8
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args var53002, 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == arg1:
                                            mem[ceil32(return_data.size) + 196] = 14
                                            mem[ceil32(return_data.size) + 228] = 14
                                            mem[ceil32(return_data.size) + 260] = 12
                                            mem[ceil32(return_data.size) + 292] = 14
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args var53002, 8, 16, 14, 14, 12, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 10 == arg1:
                                                mem[ceil32(return_data.size) + 196] = 15
                                                mem[ceil32(return_data.size) + 228] = 9
                                                mem[ceil32(return_data.size) + 260] = 9
                                                mem[ceil32(return_data.size) + 292] = 17
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args var53002, 9, 15, 15, 9, 9, 17
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 11 == arg1:
                                                    mem[ceil32(return_data.size) + 196] = 15
                                                    mem[ceil32(return_data.size) + 228] = 17
                                                    mem[ceil32(return_data.size) + 260] = 13
                                                    mem[ceil32(return_data.size) + 292] = 8
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args var53002, 8, 14, 15, 17, 13, 8
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 4
        sub_b6727da1[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 4)
        sub_b6727da1[msg.sender][sub_b6727da1[msg.sender].field_0].field_0 = var53004
        mem[ceil32(return_data.size) + 96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = var53004
    else:
        mem[ceil32(return_data.size) + 100] = var53002
        require ext_code.size(stor0)
        staticcall stor0.0x3613a9f4 with:
                gas gas_remaining wei
               args var53002
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if 1 == ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 196] = 16
            mem[(2 * ceil32(return_data.size)) + 228] = 8
            mem[(2 * ceil32(return_data.size)) + 260] = 10
            mem[(2 * ceil32(return_data.size)) + 292] = 8
            require ext_code.size(stor2)
            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args var53002, 16, 16, 16, 8, 10, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 2 == ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 196] = 10
                mem[(2 * ceil32(return_data.size)) + 228] = 15
                mem[(2 * ceil32(return_data.size)) + 260] = 14
                mem[(2 * ceil32(return_data.size)) + 292] = 16
                require ext_code.size(stor2)
                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args var53002, 8, 14, 10, 15, 14, 16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 196] = 14
                    mem[(2 * ceil32(return_data.size)) + 228] = 8
                    mem[(2 * ceil32(return_data.size)) + 260] = 18
                    mem[(2 * ceil32(return_data.size)) + 292] = 8
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args var53002, 13, 13, 14, 8, 18, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 4 == ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + 196] = 16
                        mem[(2 * ceil32(return_data.size)) + 228] = 9
                        mem[(2 * ceil32(return_data.size)) + 260] = 18
                        mem[(2 * ceil32(return_data.size)) + 292] = 9
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args var53002, 8, 12, 16, 9, 18, 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 5 == ext_call.return_data[0]:
                            mem[(2 * ceil32(return_data.size)) + 196] = 16
                            mem[(2 * ceil32(return_data.size)) + 228] = 8
                            mem[(2 * ceil32(return_data.size)) + 260] = 15
                            mem[(2 * ceil32(return_data.size)) + 292] = 8
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args var53002, 17, 9, 16, 8, 15, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 6 == ext_call.return_data[0]:
                                mem[(2 * ceil32(return_data.size)) + 196] = 15
                                mem[(2 * ceil32(return_data.size)) + 228] = 8
                                mem[(2 * ceil32(return_data.size)) + 260] = 15
                                mem[(2 * ceil32(return_data.size)) + 292] = 8
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args var53002, 8, 18, 15, 8, 15, 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 196] = 16
                                    mem[(2 * ceil32(return_data.size)) + 228] = 10
                                    mem[(2 * ceil32(return_data.size)) + 260] = 10
                                    mem[(2 * ceil32(return_data.size)) + 292] = 14
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args var53002, 16, 10, 16, 10, 10, 14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 8 == ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 196] = 15
                                        mem[(2 * ceil32(return_data.size)) + 228] = 8
                                        mem[(2 * ceil32(return_data.size)) + 260] = 15
                                        mem[(2 * ceil32(return_data.size)) + 292] = 8
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args var53002, 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == ext_call.return_data[0]:
                                            mem[(2 * ceil32(return_data.size)) + 196] = 14
                                            mem[(2 * ceil32(return_data.size)) + 228] = 14
                                            mem[(2 * ceil32(return_data.size)) + 260] = 12
                                            mem[(2 * ceil32(return_data.size)) + 292] = 14
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args var53002, 8, 16, 14, 14, 12, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 10 == ext_call.return_data[0]:
                                                mem[(2 * ceil32(return_data.size)) + 196] = 15
                                                mem[(2 * ceil32(return_data.size)) + 228] = 9
                                                mem[(2 * ceil32(return_data.size)) + 260] = 9
                                                mem[(2 * ceil32(return_data.size)) + 292] = 17
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args var53002, 9, 15, 15, 9, 9, 17
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 11 == ext_call.return_data[0]:
                                                    mem[(2 * ceil32(return_data.size)) + 196] = 15
                                                    mem[(2 * ceil32(return_data.size)) + 228] = 17
                                                    mem[(2 * ceil32(return_data.size)) + 260] = 13
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 8
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args var53002, 8, 14, 15, 17, 13, 8
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 4
        sub_b6727da1[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 4)
        sub_b6727da1[msg.sender][sub_b6727da1[msg.sender].field_0].field_0 = var53004
        mem[(2 * ceil32(return_data.size)) + 96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = var53004
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, var53004
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if var53004 == -1:
        revert with 0, 17
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    if var53004 + 1 >= ext_call.return_data[0] + arg2:
    var53002 = var53004 + 1
    var53004 = var53004 + 1
    continue 
}

function sub_5c52fc16(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 1
    while idx <= 11:
        require ext_code.size(stor0)
        staticcall stor0.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        s = 0
        while s < arg1:
            mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            require ext_code.size(stor0)
            call stor0.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if _16 > !arg1:
            revert with 0, 17
        if var53002 < _16 + arg1:
            if idx:
                if 1 == idx:
                    mem[mem[64] + 100] = 16
                    mem[mem[64] + 132] = 8
                    mem[mem[64] + 164] = 10
                    mem[mem[64] + 196] = 8
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args var57002, 16, 16, 16, 8, 10, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 2 == idx:
                        mem[mem[64] + 100] = 10
                        mem[mem[64] + 132] = 15
                        mem[mem[64] + 164] = 14
                        mem[mem[64] + 196] = 16
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args var57002, 8, 14, 10, 15, 14, 16
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 3 == idx:
                            mem[mem[64] + 100] = 14
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 18
                            mem[mem[64] + 196] = 8
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args var57002, 13, 13, 14, 8, 18, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 4 == idx:
                                mem[mem[64] + 100] = 16
                                mem[mem[64] + 132] = 9
                                mem[mem[64] + 164] = 18
                                mem[mem[64] + 196] = 9
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args var57002, 8, 12, 16, 9, 18, 9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 5 == idx:
                                    mem[mem[64] + 100] = 16
                                    mem[mem[64] + 132] = 8
                                    mem[mem[64] + 164] = 15
                                    mem[mem[64] + 196] = 8
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args var57002, 17, 9, 16, 8, 15, 8
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 6 == idx:
                                        mem[mem[64] + 100] = 15
                                        mem[mem[64] + 132] = 8
                                        mem[mem[64] + 164] = 15
                                        mem[mem[64] + 196] = 8
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args var57002, 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == idx:
                                            mem[mem[64] + 100] = 16
                                            mem[mem[64] + 132] = 10
                                            mem[mem[64] + 164] = 10
                                            mem[mem[64] + 196] = 14
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args var57002, 16, 10, 16, 10, 10, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 8 == idx:
                                                mem[mem[64] + 100] = 15
                                                mem[mem[64] + 132] = 8
                                                mem[mem[64] + 164] = 15
                                                mem[mem[64] + 196] = 8
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args var57002, 8, 18, 15, 8, 15, 8
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == idx:
                                                    mem[mem[64] + 100] = 14
                                                    mem[mem[64] + 132] = 14
                                                    mem[mem[64] + 164] = 12
                                                    mem[mem[64] + 196] = 14
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args var57002, 8, 16, 14, 14, 12, 14
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 10 == idx:
                                                        mem[mem[64] + 100] = 15
                                                        mem[mem[64] + 132] = 9
                                                        mem[mem[64] + 164] = 9
                                                        mem[mem[64] + 196] = 17
                                                        require ext_code.size(stor2)
                                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                             gas gas_remaining wei
                                                            args var57002, 9, 15, 15, 9, 9, 17
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 11 == idx:
                                                            mem[mem[64] + 100] = 15
                                                            mem[mem[64] + 132] = 17
                                                            mem[mem[64] + 164] = 13
                                                            mem[mem[64] + 196] = 8
                                                            require ext_code.size(stor2)
                                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                                 gas gas_remaining wei
                                                                args var57002, 8, 14, 15, 17, 13, 8
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 4] = var57002
                require ext_code.size(stor0)
                staticcall stor0.0x3613a9f4 with:
                        gas gas_remaining wei
                       args var57002
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1037 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 1 == mem[_1037]:
                    mem[mem[64] + 100] = 16
                    mem[mem[64] + 132] = 8
                    mem[mem[64] + 164] = 10
                    mem[mem[64] + 196] = 8
                    require ext_code.size(stor2)
                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args var57002, 16, 16, 16, 8, 10, 8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 2 == mem[_1037]:
                        mem[mem[64] + 100] = 10
                        mem[mem[64] + 132] = 15
                        mem[mem[64] + 164] = 14
                        mem[mem[64] + 196] = 16
                        require ext_code.size(stor2)
                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args var57002, 8, 14, 10, 15, 14, 16
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 3 == mem[_1037]:
                            mem[mem[64] + 100] = 14
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 18
                            mem[mem[64] + 196] = 8
                            require ext_code.size(stor2)
                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args var57002, 13, 13, 14, 8, 18, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 4 == mem[_1037]:
                                mem[mem[64] + 100] = 16
                                mem[mem[64] + 132] = 9
                                mem[mem[64] + 164] = 18
                                mem[mem[64] + 196] = 9
                                require ext_code.size(stor2)
                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args var57002, 8, 12, 16, 9, 18, 9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 5 == mem[_1037]:
                                    mem[mem[64] + 100] = 16
                                    mem[mem[64] + 132] = 8
                                    mem[mem[64] + 164] = 15
                                    mem[mem[64] + 196] = 8
                                    require ext_code.size(stor2)
                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args var57002, 17, 9, 16, 8, 15, 8
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 6 == mem[_1037]:
                                        mem[mem[64] + 100] = 15
                                        mem[mem[64] + 132] = 8
                                        mem[mem[64] + 164] = 15
                                        mem[mem[64] + 196] = 8
                                        require ext_code.size(stor2)
                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args var57002, 8, 18, 15, 8, 15, 8
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == mem[_1037]:
                                            mem[mem[64] + 100] = 16
                                            mem[mem[64] + 132] = 10
                                            mem[mem[64] + 164] = 10
                                            mem[mem[64] + 196] = 14
                                            require ext_code.size(stor2)
                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args var57002, 16, 10, 16, 10, 10, 14
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 8 == mem[_1037]:
                                                mem[mem[64] + 100] = 15
                                                mem[mem[64] + 132] = 8
                                                mem[mem[64] + 164] = 15
                                                mem[mem[64] + 196] = 8
                                                require ext_code.size(stor2)
                                                call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args var57002, 8, 18, 15, 8, 15, 8
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == mem[_1037]:
                                                    mem[mem[64] + 100] = 14
                                                    mem[mem[64] + 132] = 14
                                                    mem[mem[64] + 164] = 12
                                                    mem[mem[64] + 196] = 14
                                                    require ext_code.size(stor2)
                                                    call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                         gas gas_remaining wei
                                                        args var57002, 8, 16, 14, 14, 12, 14
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 10 == mem[_1037]:
                                                        mem[mem[64] + 100] = 15
                                                        mem[mem[64] + 132] = 9
                                                        mem[mem[64] + 164] = 9
                                                        mem[mem[64] + 196] = 17
                                                        require ext_code.size(stor2)
                                                        call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                             gas gas_remaining wei
                                                            args var57002, 9, 15, 15, 9, 9, 17
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 11 == mem[_1037]:
                                                            mem[mem[64] + 100] = 15
                                                            mem[mem[64] + 132] = 17
                                                            mem[mem[64] + 164] = 13
                                                            mem[mem[64] + 196] = 8
                                                            require ext_code.size(stor2)
                                                            call stor2.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                                 gas gas_remaining wei
                                                                args var57002, 8, 14, 15, 17, 13, 8
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
            mem[32] = 4
            sub_b6727da1[msg.sender].field_0++
            mem[0] = sha3(msg.sender, 4)
            sub_b6727da1[msg.sender][sub_b6727da1[msg.sender].field_0].field_0 = var57004
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = var57004
            require ext_code.size(stor0)
            call stor0.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, var57004
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var57004 == -1:
                revert with 0, 17
            if _16 > !arg1:
                revert with 0, 17
            if var57004 + 1 < _16 + arg1:
                var57002 = var57004 + 1
                var57004 = var57004 + 1
                continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
