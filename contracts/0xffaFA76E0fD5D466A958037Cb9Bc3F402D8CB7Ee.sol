contract main {




// =====================  Runtime code  =====================


address tokenAddress;
mapping of address owners;
array of struct stor2;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return owners[arg1]
}

function token() payable {
    return tokenAddress
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
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function adventure() payable {
    mem[64] = 96
    if var50002 >= var50001:
    mem[32] = 2
    if var56001 >= stor[var56002]:
        revert with 0, 50
    mem[0] = var58002
    mem[96] = 0xeed2502800000000000000000000000000000000000000000000000000000000
    mem[100] = var62001
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.mem[var64003 len 4] with:
            gas gas_remaining wei
           args mem[var64003 + 4 len var64004 - 4]
    mem[var64005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var68002 - var68001 >= 32
    if block.timestamp <= var72001:
        if var76001 == -1:
            revert with 0, 17
        # nil
    else:
        mem[ceil32(return_data.size) + 96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = var74001
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var76004 len 4] with:
             gas gas_remaining wei
            args mem[var76004 + 4 len var76005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96] = 0x94b69ffa00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = var78005
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.mem[var80003 len 4] with:
                gas gas_remaining wei
               args mem[var80003 + 4 len var80004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}

function sub_82484225(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _34 = mem[_33]
        if idx >= mem[96]:
            revert with 0, 50
        _36 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _36
        require ext_code.size(tokenAddress)
        call tokenAddress.summon(uint256 arg1) with:
             gas gas_remaining wei
            args _36
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        owners[_34] = msg.sender
        mem[0] = _34
        mem[32] = sha3(address(msg.sender), 2) + 1
        if not stor2[address(msg.sender)][1][_34].field_0:
            stor2[address(msg.sender)].field_0++
            stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0 = _34
            mem[0] = _34
            mem[32] = sha3(address(msg.sender), 2) + 1
            stor2[address(msg.sender)][1][_34].field_0 = stor2[address(msg.sender)].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function deposit(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + 101] = msg.sender
    mem[ceil32(32 * arg1.length) + 133] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(32 * arg1.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg1.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AdventureParty: Caller hasn't approved AdventureParty as operator.'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _52 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x6352211e with:
                gas gas_remaining wei
               args _52
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == mem[_55 + 12 len 20]
        if mem[_55 + 12 len 20] != msg.sender:
            revert with 0, 'AdventureParty: Token isn't owned by caller.'
        owners[_52] = msg.sender
        mem[0] = _52
        mem[32] = sha3(address(msg.sender), 2) + 1
        if not stor2[address(msg.sender)][1][_52].field_0:
            stor2[address(msg.sender)].field_0++
            stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0 = _52
            mem[0] = _52
            mem[32] = sha3(address(msg.sender), 2) + 1
            stor2[address(msg.sender)][1][_52].field_0 = stor2[address(msg.sender)].field_0
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _52
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _52
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdraw(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _60 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if owners[mem[(32 * idx) + 128]] != msg.sender:
            revert with 0, 'AdventureParty: Caller doesn't own the token.'
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x6352211e with:
                gas gas_remaining wei
               args _60
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_66] == mem[_66 + 12 len 20]
        if mem[_66 + 12 len 20] != this.address:
            revert with 0, 'AdventureParty: Token isn't managed by adventure party.'
        owners[_60] = 0
        mem[0] = _60
        mem[32] = sha3(address(msg.sender), 2) + 1
        if stor2[address(msg.sender)][1][_60].field_0:
            if stor2[address(msg.sender)][1][_60].field_0 < 1:
                revert with 0, 17
            if stor2[address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if stor2[address(msg.sender)].field_0 - 1 != stor2[address(msg.sender)][1][_60].field_0 - 1:
                if stor2[address(msg.sender)].field_0 - 1 >= stor2[address(msg.sender)].field_0:
                    revert with 0, 50
                if stor2[address(msg.sender)][1][_60].field_0 - 1 >= stor2[address(msg.sender)].field_0:
                    revert with 0, 50
                stor2[address(msg.sender)][stor2[address(msg.sender)][1][_60].field_0].field_0 = stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0
                stor2[address(msg.sender)][1][stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0].field_0 = stor2[address(msg.sender)][1][_60].field_0
            if not stor2[address(msg.sender)].field_0:
                revert with 0, 49
            stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0 = 0
            stor2[address(msg.sender)].field_0--
            mem[0] = _60
            mem[32] = sha3(address(msg.sender), 2) + 1
            stor2[address(msg.sender)][1][_60].field_0 = 0
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _60
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, _60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fb6f8243(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2[address(arg1)].field_0 > test266151307():
        revert with 0, 65
    mem[96] = stor2[address(arg1)].field_0
    mem[64] = (32 * stor2[address(arg1)].field_0) + 128
    if not stor2[address(arg1)].field_0:
        if var34002 >= var34001:
            mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
            mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
            mem[(32 * stor2[address(arg1)].field_0) + 192 len 32 * stor2[address(arg1)].field_0] = mem[128 len 32 * stor2[address(arg1)].field_0]
            return memory
              from (32 * stor2[address(arg1)].field_0) + 128
               len (96 * stor2[address(arg1)].field_0) + 64
        mem[32] = 2
        if var40001 >= stor[var40002]:
            revert with 0, 50
        mem[0] = var42002
        if var46002 >= stor2[address(arg1)].field_0:
            revert with 0, 50
        mem[(32 * var46002) + 128] = var46001
        s = var46002
        t = var46001
        idx = var46002
        while idx != -1:
            if idx + 1 >= stor2[address(arg1)].field_0:
                mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
                mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
                u = 0
                s = (32 * stor2[address(arg1)].field_0) + 192
                t = 128
                while u < stor2[address(arg1)].field_0:
                    mem[s] = mem[t]
                    mem[(32 * u + 1) + 128] = s + 32
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor2[address(arg1)].field_0) + 128
                   len (96 * stor2[address(arg1)].field_0) + 64
            mem[32] = 2
            if idx + 1 >= stor2[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 2)
            if idx + 1 >= stor2[address(arg1)].field_0:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor2[address(arg1)][idx].field_512
            s = idx + 1
            t = stor2[address(arg1)][idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor2[address(arg1)].field_0] = call.data[calldata.size len 32 * stor2[address(arg1)].field_0]
        if var35002 >= var35001:
            mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
            mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
            mem[(32 * stor2[address(arg1)].field_0) + 192 len 32 * stor2[address(arg1)].field_0] = call.data[calldata.size len 32 * stor2[address(arg1)].field_0]
            return memory
              from (32 * stor2[address(arg1)].field_0) + 128
               len (96 * stor2[address(arg1)].field_0) + 64
        mem[32] = 2
        if var41001 >= stor[var41002]:
            revert with 0, 50
        mem[0] = var43002
        if var47002 >= stor2[address(arg1)].field_0:
            revert with 0, 50
        mem[(32 * var47002) + 128] = var47001
        s = var47002
        t = var47001
        idx = var47002
        while idx != -1:
            if idx + 1 >= stor2[address(arg1)].field_0:
                mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
                mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
                u = 0
                s = (32 * stor2[address(arg1)].field_0) + 192
                t = 128
                while u < stor2[address(arg1)].field_0:
                    mem[s] = mem[t]
                    mem[(32 * u + 1) + 128] = s + 32
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor2[address(arg1)].field_0) + 128
                   len (96 * stor2[address(arg1)].field_0) + 64
            mem[32] = 2
            if idx + 1 >= stor2[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 2)
            if idx + 1 >= stor2[address(arg1)].field_0:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor2[address(arg1)][idx].field_512
            s = idx + 1
            t = stor2[address(arg1)][idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}



}
