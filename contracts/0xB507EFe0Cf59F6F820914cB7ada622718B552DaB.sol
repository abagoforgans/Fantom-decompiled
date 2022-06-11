contract main {




// =====================  Runtime code  =====================


address rmAddress;
array of struct sub_da09b8a1;
array of struct sub_05381a6f;

function sub_05381a6f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_05381a6f[arg1].field_0
    return sub_05381a6f[arg1][arg2].field_0
}

function rm() payable {
    return rmAddress
}

function sub_da09b8a1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_da09b8a1[arg1].field_0
    return sub_da09b8a1[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_d728bda9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[164 len 64] = summon(uint256 arg1), arg2, mem[164 len 28]
    delegate address(arg1).mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
}

function summon(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(rmAddress)
    call rmAddress.summon(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_7573d2c7(?) payable {
    idx = 0
    while idx < sub_da09b8a1[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        if sub_da09b8a1[address(msg.sender)][idx].field_0:
            mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[100] = sub_da09b8a1[address(msg.sender)][idx].field_0
            require ext_code.size(rmAddress)
            call rmAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_da09b8a1[address(msg.sender)][idx].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_af2cb89d(?) payable {
    idx = 0
    while idx < sub_05381a6f[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 2)
        if sub_05381a6f[address(msg.sender)][idx].field_0:
            mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[100] = sub_05381a6f[address(msg.sender)][idx].field_0
            require ext_code.size(rmAddress)
            call rmAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_05381a6f[address(msg.sender)][idx].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getTokenIds() payable {
    if sub_da09b8a1[address(msg.sender)].field_0:
        mem[128] = sub_da09b8a1[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_da09b8a1[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_da09b8a1[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_da09b8a1[address(msg.sender)].field_0, data=mem[128 len 32 * sub_da09b8a1[address(msg.sender)].field_0])
    mem[(32 * sub_da09b8a1[address(msg.sender)].field_0) + 128] = 32
    mem[(32 * sub_da09b8a1[address(msg.sender)].field_0) + 160] = sub_da09b8a1[address(msg.sender)].field_0
    mem[(32 * sub_da09b8a1[address(msg.sender)].field_0) + 192 len 32 * sub_da09b8a1[address(msg.sender)].field_0] = mem[128 len 32 * sub_da09b8a1[address(msg.sender)].field_0]
    return memory
      from (32 * sub_da09b8a1[address(msg.sender)].field_0) + 128
       len (96 * sub_da09b8a1[address(msg.sender)].field_0) + 64
}

function sub_972d41f1(?) payable {
    if sub_05381a6f[address(msg.sender)].field_0:
        mem[128] = sub_05381a6f[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_05381a6f[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_05381a6f[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_05381a6f[address(msg.sender)].field_0, data=mem[128 len 32 * sub_05381a6f[address(msg.sender)].field_0])
    mem[(32 * sub_05381a6f[address(msg.sender)].field_0) + 128] = 32
    mem[(32 * sub_05381a6f[address(msg.sender)].field_0) + 160] = sub_05381a6f[address(msg.sender)].field_0
    mem[(32 * sub_05381a6f[address(msg.sender)].field_0) + 192 len 32 * sub_05381a6f[address(msg.sender)].field_0] = mem[128 len 32 * sub_05381a6f[address(msg.sender)].field_0]
    return memory
      from (32 * sub_05381a6f[address(msg.sender)].field_0) + 128
       len (96 * sub_05381a6f[address(msg.sender)].field_0) + 64
}

function sub_d41bc0c5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_05381a6f[address(msg.sender)].field_0++
        mem[0] = sha3(address(msg.sender), 2)
        sub_05381a6f[address(msg.sender)][sub_05381a6f[address(msg.sender)].field_0].field_0 = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawAll() payable {
    idx = 0
    while idx < sub_da09b8a1[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        if sub_da09b8a1[address(msg.sender)][idx].field_0:
            mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = msg.sender
            mem[164] = sub_da09b8a1[address(msg.sender)][idx].field_0
            require ext_code.size(rmAddress)
            call rmAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, sub_da09b8a1[address(msg.sender)][idx].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= sub_da09b8a1[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 1)
            sub_da09b8a1[address(msg.sender)][idx].field_0 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_25024e15(?) payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = 1
    idx = 1
    while idx <= 11:
        require ext_code.size(rmAddress)
        staticcall rmAddress.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        require mem[_11] == mem[_11]
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(rmAddress)
        call rmAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_da09b8a1[address(msg.sender)].field_0++
        mem[0] = sha3(address(msg.sender), 1)
        sub_da09b8a1[address(msg.sender)][sub_da09b8a1[address(msg.sender)].field_0].field_0 = _12
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_da09b8a1[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        if not sub_da09b8a1[address(msg.sender)][idx].field_0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if sub_da09b8a1[address(msg.sender)][idx].field_0 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_da09b8a1[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_da09b8a1[address(msg.sender)][idx].field_0 = 0
        require ext_code.size(rmAddress)
        call rmAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rmAddress)
    call rmAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_99f64b97(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 1
    while idx <= 11:
        _11 = mem[64]
        mem[mem[64] + 36] = idx
        _12 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_12 + 32] = mem[_12 + 36 len 28] or 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        _15 = mem[_12]
        s = 0
        while s < _15:
            mem[_11 + s + 68] = mem[_12 + s + 32]
            s = s + 32
            continue 
        if ceil32(_15) <= _15:
            delegate address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11 + _15 + -mem[64] + 64]
            if return_data.size:
                _23 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_23] = return_data.size
                mem[_23 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_11 + _15 + 68] = 0
            delegate address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11 + _15 + -mem[64] + 64]
            if return_data.size:
                _25 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_25] = return_data.size
                mem[_25 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
