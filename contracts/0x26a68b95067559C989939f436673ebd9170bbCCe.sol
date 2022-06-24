contract main {




// =====================  Runtime code  =====================


#
#  - claim_gold_all()
#
mapping of uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function get_owned_summoners(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if stor1[address(arg1)]:
        mem[128 len 32 * stor1[address(arg1)]] = call.data[calldata.size len 32 * stor1[address(arg1)]]
    idx = 0
    while idx < stor1[address(arg1)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 0)
        if idx >= stor1[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor0[address(msg.sender)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=stor1[address(arg1)], data=mem[128 len 32 * stor1[address(arg1)]])
}

function withdraw_all_summoners() payable {
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[address(msg.sender)] <= 0:
        revert with 0, 'No summoners onwed!'
    if stor1[address(msg.sender)] < 1:
        revert with 'NH{q', 17
    idx = stor[sha3(mem[0 len 64])] - 1
    while idx >= 0:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor0[address(msg.sender)][idx]
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        call 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor0[address(msg.sender)][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0[address(msg.sender)][idx] = 0
        mem[0] = msg.sender
        mem[32] = 1
        if not stor1[address(msg.sender)]:
            revert with 'NH{q', 17
        stor1[address(msg.sender)]--
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    emit LeveledUp(msg.sender, 0);
}

function summon_for_me(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    while idx < arg2:
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        staticcall 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require mem[_13] == mem[_13]
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        call 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0[address(msg.sender)][stor1[address(msg.sender)]] = _14
        mem[0] = msg.sender
        mem[32] = 1
        if stor1[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        stor1[address(msg.sender)]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function adventure_all() payable {
    mem[64] = 96
    if stor1[address(msg.sender)] <= 0:
        revert with 0, 'No summoners onwed!'
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    s = 0
    while idx < stor1[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 0)
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        staticcall 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args stor0[address(msg.sender)][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_23] == mem[_23]
        if block.timestamp <= mem[_23]:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            s = s
            continue 
        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        call 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args stor0[address(msg.sender)][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        s = s + 1
        continue 
    emit Adventure(msg.sender, s);
    return s
}

function transfer_all_mats(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(msg.sender)] <= 0:
        revert with 0, 'No summoners onwed!'
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    s = 0
    t = 0
    while idx < stor1[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 0)
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0x50b7a32312a6b4714c521509e43c1cbc103ae344)
        staticcall 0x50b7a32312a6b4714c521509e43c1cbc103ae344.0x9cc7f708 with:
                gas gas_remaining wei
               args stor0[address(msg.sender)][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_23]
        require mem[_23] == mem[_23]
        if mem[_23] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = _24
        require ext_code.size(0x50b7a32312a6b4714c521509e43c1cbc103ae344)
        call 0x50b7a32312a6b4714c521509e43c1cbc103ae344.0x90dd2627 with:
             gas gas_remaining wei
            args stor0[address(msg.sender)][idx], arg1, _24
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_28] == bool(mem[_28])
        if t > -_24 - 1:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        s = s + 1
        t = t + _24
        continue 
    emit TransferredGold(msg.sender, arg1, s, t);
}

function transfer_all_gold(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(msg.sender)] <= 0:
        revert with 0, 'No summoners onwed!'
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    s = 0
    t = 0
    while idx < stor1[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 0)
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0x50b7a32312a6b4714c521509e43c1cbc103ae344)
        staticcall 0x50b7a32312a6b4714c521509e43c1cbc103ae344.0x9cc7f708 with:
                gas gas_remaining wei
               args stor0[address(msg.sender)][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_25]
        require mem[_25] == mem[_25]
        if mem[_25] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = _26
        require ext_code.size(0x50b7a32312a6b4714c521509e43c1cbc103ae344)
        call 0x50b7a32312a6b4714c521509e43c1cbc103ae344.0x90dd2627 with:
             gas gas_remaining wei
            args stor0[address(msg.sender)][idx], arg1, _26
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_32] == bool(mem[_32])
        if s > -_26 - 1:
            revert with 'NH{q', 17
        if t == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        s = s + _26
        t = t + 1
        continue 
    emit TransferredGold(msg.sender, arg1, t, s);
    return t
}

function cellar_all() payable {
    mem[64] = 96
    if stor1[address(msg.sender)] <= 0:
        revert with 0, 'No summoners onwed!'
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    while idx < stor1[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 0)
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0xa0f99c6075d9d2f526f8b2c2d1cd8b9a25d6eb9d)
        staticcall 0xa0f99c6075d9d2f526f8b2c2d1cd8b9a25d6eb9d.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args stor0[address(msg.sender)][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_27]
        require mem[_27] == mem[_27]
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0xa0f99c6075d9d2f526f8b2c2d1cd8b9a25d6eb9d)
        staticcall 0xa0f99c6075d9d2f526f8b2c2d1cd8b9a25d6eb9d.scout(uint256 arg1) with:
                gas gas_remaining wei
               args stor0[address(msg.sender)][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_34] == mem[_34]
        if block.timestamp > _29:
            if mem[_34] > 0:
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
                require ext_code.size(0xa0f99c6075d9d2f526f8b2c2d1cd8b9a25d6eb9d)
                call 0xa0f99c6075d9d2f526f8b2c2d1cd8b9a25d6eb9d.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor0[address(msg.sender)][idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        continue 
    emit Cellar(msg.sender, 0);
    return 0
}

function sub_be2b514c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _42 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        staticcall 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.0x6352211e with:
                gas gas_remaining wei
               args _42
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_45] == mem[_45 + 12 len 20]
        if mem[_45 + 12 len 20] == this.address:
            revert with 0, 'Invalid summoner!'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _49 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _49
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        call 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _49
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        stor0[address(msg.sender)][stor1[address(msg.sender)]] = mem[(32 * idx) + 128]
        mem[0] = msg.sender
        mem[32] = 1
        if stor1[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        stor1[address(msg.sender)]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function level_up_all() payable {
    mem[64] = 96
    if stor1[address(msg.sender)] <= 0:
        revert with 0, 'No summoners onwed!'
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    s = 0
    while idx < stor1[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 0)
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        staticcall 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.level(uint256 arg1) with:
                gas gas_remaining wei
               args stor0[address(msg.sender)][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _33 = mem[_31]
        require mem[_31] == mem[_31]
        mem[mem[64] + 4] = mem[_31]
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        staticcall 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _33
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _39 = mem[_38]
        require mem[_38] == mem[_38]
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        staticcall 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.xp(uint256 arg1) with:
                gas gas_remaining wei
               args stor0[address(msg.sender)][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_42] == mem[_42]
        if mem[_42] >= _39 != 1:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            s = s
            continue 
        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = stor0[address(msg.sender)][idx]
        require ext_code.size(0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15)
        call 0xb4a44ccb5e342bcb4aa83ff379e826e9b79beb15.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args stor0[address(msg.sender)][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        s = s + 1
        continue 
    emit LeveledUp(msg.sender, s);
    return s
}



}
