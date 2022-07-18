contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
array of struct stor2;
mapping of address feeds;

function pendingAdmin() payable {
    return pendingAdminAddress
}

function feeds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return feeds[arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function acceptAdmin() payable {
    if pendingAdminAddress != msg.sender:
        revert with 0, '!pG'
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, '!G'
    pendingAdminAddress = arg1
}

function sub_35c793ab(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return 32, 8445, code.data[5769 len 8381], mem[8509 len 3] >> 66792, address(arg1), address(arg2), 0 >> 67304, 0
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

function update(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require tx.origin == msg.sender
    require ext_code.size(feeds[address(arg1)])
    call feeds[address(arg1)].update() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function current(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require ext_code.size(feeds[address(arg1)])
    staticcall feeds[address(arg1)].current(address arg1, uint256 arg2, address arg3) with:
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
    staticcall feeds[address(arg1)].quote(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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

function deploy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, '!G'
    if feeds[address(arg1)]:
        revert with 0, 'PE'
    mem[8640 len 8384] = code.data[5769 len 8381], mem[8509 len 3]
    mem[17021 len 64] = address(arg1), arg2
    mem[17117] = address(arg1)
    mem[17085] = 20
    create2 contract with 0 wei
                    salt: sha3(arg1)
                    code: mem[8640 len mem[8608]]
    require ext_code.size(create2.new_address)
    feeds[address(arg1)] = address(create2.new_address)
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    return address(create2.new_address)
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
    staticcall feeds[address(arg1)].sample(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
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
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg2) << 64 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], address(arg2) << 64 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg2) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require (32 * _6) + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _6)] = mem[_5 + 128 len ceil32(32 * _6)]
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
            require ext_code.size(feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].current(address arg1, uint256 arg2, address arg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, arg3
        else:
            require ext_code.size(feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].current(address arg1, uint256 arg2, address arg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, arg3
    else:
        if arg1 < arg3:
            require ext_code.size(feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
            staticcall feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].current(address arg1, uint256 arg2, address arg3) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, arg3
        else:
            require ext_code.size(feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
            staticcall feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].current(address arg1, uint256 arg2, address arg3) with:
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
            require ext_code.size(feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].quote(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, address(arg3), arg4
        else:
            require ext_code.size(feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].quote(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, address(arg3), arg4
    else:
        if arg1 < arg3:
            require ext_code.size(feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
            staticcall feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].quote(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args address(arg1), arg2, address(arg3), arg4
        else:
            require ext_code.size(feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
            staticcall feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].quote(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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
            mem[201] = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3000000000000000000000000
            mem[221] = sha3(arg1, arg3)
            mem[253] = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303
            mem[168] = 85
            mem[0] = address(sha3(0, 1526410864014554874, sha3(arg1, arg3), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
            mem[32] = 3
            mem[285] = 0xa79339800000000000000000000000000000000000000000000000000000000
            mem[289] = arg1
            mem[321] = arg2
            mem[353] = arg3
            mem[385] = arg4
            mem[417] = arg5
            require ext_code.size(feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
            staticcall feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg1'), ('param', 'arg3')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].sample(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
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
            if ceil32(return_data.size) + ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286 > test266151307() or ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 1 < 0:
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286
            mem[ceil32(return_data.size) + 285] = mem[mem[285 len 4], address(arg1) << 64 + 285]
            require (32 * _49) + _45 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 317 len ceil32(32 * _49)] = mem[_45 + 317 len ceil32(32 * _49)]
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
        mem[201] = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3000000000000000000000000
        mem[221] = sha3(arg3, arg1)
        mem[253] = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303
        mem[168] = 85
        mem[0] = address(sha3(0, 1526410864014554874, sha3(arg3, arg1), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))
        mem[32] = 3
        mem[285] = 0xa79339800000000000000000000000000000000000000000000000000000000
        mem[289] = arg1
        mem[321] = arg2
        mem[353] = arg3
        mem[385] = arg4
        mem[417] = arg5
        require ext_code.size(feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))])
        staticcall feeds[address(sha3(0, 1526410864014554874, ('map', ('param', 'arg3'), ('param', 'arg1')), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303))].sample(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
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
        if ceil32(return_data.size) + ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286 > test266151307() or ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286
        mem[ceil32(return_data.size) + 285] = mem[mem[285 len 4], address(arg1) << 64 + 285]
        require (32 * _50) + _46 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 317 len ceil32(32 * _50)] = mem[_46 + 317 len ceil32(32 * _50)]
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
        mem[201] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
        mem[221] = sha3(arg1, arg3)
        mem[253] = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f
        mem[168] = 85
        mem[0] = address(sha3(0, 17241416772799840749, sha3(arg1, arg3), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
        mem[32] = 3
        mem[285] = 0xa79339800000000000000000000000000000000000000000000000000000000
        mem[289] = arg1
        mem[321] = arg2
        mem[353] = arg3
        mem[385] = arg4
        mem[417] = arg5
        require ext_code.size(feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
        staticcall feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg1'), ('param', 'arg3')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].sample(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
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
        if ceil32(return_data.size) + ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286 > test266151307() or ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286
        mem[ceil32(return_data.size) + 285] = mem[mem[285 len 4], address(arg1) << 64 + 285]
        require (32 * _53) + _47 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 317 len ceil32(32 * _53)] = mem[_47 + 317 len ceil32(32 * _53)]
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
    mem[201] = 0xef45d134b73241eda7703fa787148d9c9f4950b0000000000000000000000000
    mem[221] = sha3(arg3, arg1)
    mem[253] = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f
    mem[168] = 85
    mem[0] = address(sha3(0, 17241416772799840749, sha3(arg3, arg1), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))
    mem[32] = 3
    mem[285] = 0xa79339800000000000000000000000000000000000000000000000000000000
    mem[289] = arg1
    mem[321] = arg2
    mem[353] = arg3
    mem[385] = arg4
    mem[417] = arg5
    require ext_code.size(feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))])
    staticcall feeds[address(sha3(0, 17241416772799840749, ('map', ('param', 'arg3'), ('param', 'arg1')), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f))].sample(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) with:
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
    if ceil32(return_data.size) + ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286 > test266151307() or ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[285 len 4], address(arg1) << 64 + 285]) + 286
    mem[ceil32(return_data.size) + 285] = mem[mem[285 len 4], address(arg1) << 64 + 285]
    require (32 * _54) + _48 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 317 len ceil32(32 * _54)] = mem[_48 + 317 len ceil32(32 * _54)]
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
