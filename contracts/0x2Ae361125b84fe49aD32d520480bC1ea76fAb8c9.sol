contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address pendingGovernanceAddress;
array of struct stor2;
mapping of address feeds;

function feeds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return feeds[arg1]
}

function governance() payable {
    return governanceAddress
}

function pendingGovernance() payable {
    return pendingGovernanceAddress
}

function _fallback() payable {
    revert
}

function acceptGovernance() payable {
    if pendingGovernanceAddress != msg.sender:
        revert with 0, '!pG'
    governanceAddress = pendingGovernanceAddress
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!G'
    pendingGovernanceAddress = arg1
}

function cache(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(feeds[address(arg1)])
    call feeds[address(arg1)].0x17bf72c6 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function workForFree(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(feeds[address(arg1)])
    call feeds[address(arg1)].update() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function byteCode(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[7552 len 7328] = code.data[5986 len 7312], mem[7440 len 16]
    mem[14864] = arg1
    mem[14896] = 32
    mem[14928] = mem[7520]
    mem[14960 len ceil32(mem[7520])] = mem[7552 len ceil32(mem[7520])]
    if ceil32(mem[7520]) > mem[7520]:
        mem[mem[7520] + 14960] = 0
    return Array(len=mem[7520], data=mem[14960 len ceil32(mem[7520])])
}

function update(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(feeds[address(arg1)])
    call feeds[address(arg1)].update() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function workable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(feeds[address(arg1)])
    staticcall feeds[address(arg1)].updateable() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function deploy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!G'
    if feeds[address(arg1)]:
        revert with 0, 'PE'
    create2 contract with 0 wei
                    salt: sha3(arg1)
                    code: code.data[5986 len 7312], mem[7440 len 16] >> 58240, arg1
    require ext_code.size(create2.new_address)
    feeds[address(arg1)] = address(create2.new_address)
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    return address(create2.new_address)
}

function current(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require ext_code.size(feeds[address(arg1)])
    staticcall feeds[address(arg1)].current(address rg1, uint256 rg2, address rg3) with:
            gas gas_remaining wei
           args address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function quote(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require ext_code.size(feeds[address(arg1)])
    staticcall feeds[address(arg1)].quote(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
            gas gas_remaining wei
           args 0, 0, arg3, address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function cache(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 3
        mem[96] = 0x17bf72c600000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(feeds[stor2[idx].field_0])
        call feeds[stor2[idx].field_0].0x17bf72c6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function workForFree() payable {
    mem[64] = 96
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 3
        require ext_code.size(feeds[stor2[idx].field_0])
        call feeds[stor2[idx].field_0].update() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == bool(mem[_11])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function workable() payable {
    mem[64] = 96
    idx = 0
    s = 1
    while idx < stor2.length:
        mem[0] = stor2[idx].field_0
        mem[32] = 3
        require ext_code.size(feeds[stor2[idx].field_0])
        staticcall feeds[stor2[idx].field_0].updateable() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        if idx == -1:
            revert with 0, 17
        if mem[_15]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    return bool(s)
}

function pairs() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = (32 * stor2.length) + 192
        t = 128
        while idx < stor2.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sample(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    mem[0] = arg1
    mem[32] = 3
    mem[96] = 0xa79339800000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = arg3
    mem[164] = arg4
    mem[196] = arg5
    mem[228] = arg6
    require ext_code.size(feeds[address(arg1)])
    staticcall feeds[address(arg1)].sample(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
            gas gas_remaining wei
           args 0, 0, arg3, address(arg4), arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _5 = mem[96 len 4], address(arg2) << 64
    require mem[96 len 4], address(arg2) << 64 <= test266151307()
    require mem[96 len 4], address(arg2) << 64 + 127 < return_data.size + 96
    _6 = mem[mem[96 len 4], address(arg2) << 64 + 96]
    if mem[mem[96 len 4], address(arg2) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg2) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg2) << 64 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg2) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require return_data.size >= _5 + (32 * _6) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _6] = mem[_5 + 128 len 32 * _6]
    _16 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = _6
    mem[mem[64] + 96 len 32 * _6] = mem[ceil32(return_data.size) + 128 len 32 * _6]
    mem[mem[64] + 32] = 0, Mask(224, 32, arg3) >> 32
    return memory
      from mem[64]
       len _16 + (32 * _6) + -mem[64] + 96
}

function current(address arg1, uint256 arg2, address arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    require arg4 == arg4
    if arg4:
        if arg1 < arg3:
            require ext_code.size(feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, arg3
        else:
            require ext_code.size(feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, arg3
    else:
        if arg1 < arg3:
            require ext_code.size(feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))])
            staticcall feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))].current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, arg3
        else:
            require ext_code.size(feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))])
            staticcall feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))].current(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function quote(address arg1, uint256 arg2, address arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 == arg3
    require arg5 == arg5
    if arg5:
        if arg1 < arg3:
            require ext_code.size(feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].quote(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, address(arg3), arg4
        else:
            require ext_code.size(feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].quote(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, address(arg3), arg4
    else:
        if arg1 < arg3:
            require ext_code.size(feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))])
            staticcall feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))].quote(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, address(arg3), arg4
        else:
            require ext_code.size(feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))])
            staticcall feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))].quote(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sample(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg3 == arg3
    require arg6 == arg6
    if arg6:
        if arg1 < arg3:
            mem[128] = address(arg1)
            mem[148] = address(arg3)
            mem[96] = 40
            mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[201] = 0xc35dadb65012ec5796536bd9864ed8773abc74c4000000000000000000000000
            mem[221] = sha3(arg1, arg3)
            mem[253] = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303
            mem[168] = 85
            mem[0] = address(sha3(0, 14077599008769109079, sha3(arg1, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
            mem[32] = 3
            mem[285] = 0xa79339800000000000000000000000000000000000000000000000000000000
            mem[289] = arg1
            mem[321] = arg2
            mem[353] = arg3
            mem[385] = arg4
            mem[417] = arg5
            require ext_code.size(feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].sample(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, address(arg3), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[285 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 285
            require return_data.size >= 64
            _45 = mem[285 len 4], address(arg1) << 64
            require mem[285 len 4], address(arg1) << 64 <= test266151307()
            require mem[285 len 4], address(arg1) << 64 + 316 < return_data.size + 285
            _49 = mem[mem[285 len 4], address(arg1) << 64 + 285]
            if mem[mem[285 len 4], address(arg1) << 64 + 285] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286 > test266151307() or floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 1 < 0:
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286
            mem[ceil32(return_data.size) + 285] = mem[mem[285 len 4], address(arg1) << 64 + 285]
            require return_data.size >= _45 + (32 * _49) + 32
            mem[ceil32(return_data.size) + 317 len 32 * _49] = mem[_45 + 317 len 32 * _49]
            _89 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = _49
            mem[mem[64] + 96 len 32 * _49] = mem[ceil32(return_data.size) + 317 len 32 * _49]
            mem[mem[64] + 32] = 0, Mask(224, 32, arg2) >> 32
            return memory
              from mem[64]
               len _89 + (32 * _49) + -mem[64] + 96
        mem[128] = address(arg3)
        mem[148] = address(arg1)
        mem[96] = 40
        mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[201] = 0xc35dadb65012ec5796536bd9864ed8773abc74c4000000000000000000000000
        mem[221] = sha3(arg3, arg1)
        mem[253] = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303
        mem[168] = 85
        mem[0] = address(sha3(0, 14077599008769109079, sha3(arg3, arg1), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
        mem[32] = 3
        mem[285] = 0xa79339800000000000000000000000000000000000000000000000000000000
        mem[289] = arg1
        mem[321] = arg2
        mem[353] = arg3
        mem[385] = arg4
        mem[417] = arg5
        require ext_code.size(feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
        staticcall feeds[address(sha3(0, 14077599008769109079, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].sample(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(arg1), arg2, address(arg3), arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[285 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 285
        require return_data.size >= 64
        _46 = mem[285 len 4], address(arg1) << 64
        require mem[285 len 4], address(arg1) << 64 <= test266151307()
        require mem[285 len 4], address(arg1) << 64 + 316 < return_data.size + 285
        _50 = mem[mem[285 len 4], address(arg1) << 64 + 285]
        if mem[mem[285 len 4], address(arg1) << 64 + 285] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286 > test266151307() or floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286
        mem[ceil32(return_data.size) + 285] = mem[mem[285 len 4], address(arg1) << 64 + 285]
        require return_data.size >= _46 + (32 * _50) + 32
        mem[ceil32(return_data.size) + 317 len 32 * _50] = mem[_46 + 317 len 32 * _50]
        _90 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = _50
        mem[mem[64] + 96 len 32 * _50] = mem[ceil32(return_data.size) + 317 len 32 * _50]
        mem[mem[64] + 32] = 0, Mask(224, 32, arg2) >> 32
        return memory
          from mem[64]
           len _90 + (32 * _50) + -mem[64] + 96
    if arg1 < arg3:
        mem[128] = address(arg1)
        mem[148] = address(arg3)
        mem[96] = 40
        mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[201] = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f000000000000000000000000
        mem[221] = sha3(arg1, arg3)
        mem[253] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
        mem[168] = 85
        mem[0] = address(sha3(0, 6659063423423185226, sha3(arg1, arg3), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))
        mem[32] = 3
        mem[285] = 0xa79339800000000000000000000000000000000000000000000000000000000
        mem[289] = arg1
        mem[321] = arg2
        mem[353] = arg3
        mem[385] = arg4
        mem[417] = arg5
        require ext_code.size(feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))])
        staticcall feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))].sample(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(arg1), arg2, address(arg3), arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[285 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 285
        require return_data.size >= 64
        _47 = mem[285 len 4], address(arg1) << 64
        require mem[285 len 4], address(arg1) << 64 <= test266151307()
        require mem[285 len 4], address(arg1) << 64 + 316 < return_data.size + 285
        _53 = mem[mem[285 len 4], address(arg1) << 64 + 285]
        if mem[mem[285 len 4], address(arg1) << 64 + 285] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286 > test266151307() or floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286
        mem[ceil32(return_data.size) + 285] = mem[mem[285 len 4], address(arg1) << 64 + 285]
        require return_data.size >= _47 + (32 * _53) + 32
        mem[ceil32(return_data.size) + 317 len 32 * _53] = mem[_47 + 317 len 32 * _53]
        _91 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = _53
        mem[mem[64] + 96 len 32 * _53] = mem[ceil32(return_data.size) + 317 len 32 * _53]
        mem[mem[64] + 32] = 0, Mask(224, 32, arg2) >> 32
        return memory
          from mem[64]
           len _91 + (32 * _53) + -mem[64] + 96
    mem[128] = address(arg3)
    mem[148] = address(arg1)
    mem[96] = 40
    mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[201] = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f000000000000000000000000
    mem[221] = sha3(arg3, arg1)
    mem[253] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
    mem[168] = 85
    mem[0] = address(sha3(0, 6659063423423185226, sha3(arg3, arg1), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))
    mem[32] = 3
    mem[285] = 0xa79339800000000000000000000000000000000000000000000000000000000
    mem[289] = arg1
    mem[321] = arg2
    mem[353] = arg3
    mem[385] = arg4
    mem[417] = arg5
    require ext_code.size(feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))])
    staticcall feeds[address(sha3(0, 6659063423423185226, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))].sample(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
            gas gas_remaining wei
           args address(arg1), arg2, address(arg3), arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[285 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 285
    require return_data.size >= 64
    _48 = mem[285 len 4], address(arg1) << 64
    require mem[285 len 4], address(arg1) << 64 <= test266151307()
    require mem[285 len 4], address(arg1) << 64 + 316 < return_data.size + 285
    _54 = mem[mem[285 len 4], address(arg1) << 64 + 285]
    if mem[mem[285 len 4], address(arg1) << 64 + 285] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286 > test266151307() or floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286
    mem[ceil32(return_data.size) + 285] = mem[mem[285 len 4], address(arg1) << 64 + 285]
    require return_data.size >= _48 + (32 * _54) + 32
    mem[ceil32(return_data.size) + 317 len 32 * _54] = mem[_48 + 317 len 32 * _54]
    _92 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = _54
    mem[mem[64] + 96 len 32 * _54] = mem[ceil32(return_data.size) + 317 len 32 * _54]
    mem[mem[64] + 32] = 0, Mask(224, 32, arg2) >> 32
    return memory
      from mem[64]
       len _92 + (32 * _54) + -mem[64] + 96
}



}
