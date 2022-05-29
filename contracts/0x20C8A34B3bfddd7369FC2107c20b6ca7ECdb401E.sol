contract main {




// =====================  Runtime code  =====================


address sub_d4384dbeAddress;
address sub_50d7d613Address;
address sub_8ed8ea7eAddress;
address devAddress;

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function dev() payable {
    return devAddress
}

function sub_d4384dbe(?) payable {
    return sub_d4384dbeAddress
}

function _fallback() payable {
    revert
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == devAddress:
        devAddress = arg1
}

function sub_5310ba01(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if arg3:
        require not arg4
    require ext_code.size(sub_d4384dbeAddress)
    staticcall sub_d4384dbeAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 9, 'not empty', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg2:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = sub_50d7d613Address
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_50d7d613Address, arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_8ed8ea7eAddress)
                staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _942 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _958 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _942 + (32 * _958) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _958] = mem[(4 * ceil32(return_data.size)) + _942 + 224 len 32 * _958]
                    if 0 >= _958:
                        revert with 0, 50
                    _1694 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1694
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1694, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2366 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2382 = mem[_2366]
                    require mem[_2366] <= test266151307()
                    require _2366 + mem[_2366] + 31 < _2366 + return_data.size
                    _2398 = mem[_2366 + mem[_2366]]
                    if mem[_2366 + mem[_2366]] > test266151307():
                        revert with 0, 65
                    if _2366 + ceil32(return_data.size) + ceil32(32 * mem[_2366 + mem[_2366]]) + 1 > test266151307() or ceil32(32 * mem[_2366 + mem[_2366]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2366 + ceil32(return_data.size) + ceil32(32 * mem[_2366 + mem[_2366]]) + 1
                    mem[_2366 + ceil32(return_data.size)] = _2398
                    require return_data.size >= _2382 + (32 * _2398) + 32
                    mem[_2366 + ceil32(return_data.size) + 32 len 32 * _2398] = mem[_2366 + _2382 + 32 len 32 * _2398]
                    if 1 >= _2398:
                        revert with 0, 50
                    _2958 = mem[_2366 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1694
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1694
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3038 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3038] == bool(mem[_3038])
                        if not mem[_3038]:
                            revert with 0, 'return transfer failed'
                        if _2958 < _1694:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2958 - _1694
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2958 - _1694
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3230] == bool(mem[_3230])
                        if not mem[_3230]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3039 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3039] == bool(mem[_3039])
                        if not mem[_3039]:
                            revert with 0, 'return transfer failed'
                        if _2958 < _1694:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2958 - _1694
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2958 - _1694
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3231 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3231] == bool(mem[_3231])
                        if not mem[_3231]:
                            revert with 0, 'dev transfer failed'
                else:
                    _943 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _959 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _943 + (32 * _959) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _959] = mem[(4 * ceil32(return_data.size)) + _943 + 224 len 32 * _959]
                    if 0 >= _959:
                        revert with 0, 50
                    _1696 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1696
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1696, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2367 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2383 = mem[_2367]
                    require mem[_2367] <= test266151307()
                    require _2367 + mem[_2367] + 31 < _2367 + return_data.size
                    _2399 = mem[_2367 + mem[_2367]]
                    if mem[_2367 + mem[_2367]] > test266151307():
                        revert with 0, 65
                    if _2367 + ceil32(return_data.size) + ceil32(32 * mem[_2367 + mem[_2367]]) + 1 > test266151307() or ceil32(32 * mem[_2367 + mem[_2367]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2367 + ceil32(return_data.size) + ceil32(32 * mem[_2367 + mem[_2367]]) + 1
                    mem[_2367 + ceil32(return_data.size)] = _2399
                    require return_data.size >= _2383 + (32 * _2399) + 32
                    mem[_2367 + ceil32(return_data.size) + 32 len 32 * _2399] = mem[_2367 + _2383 + 32 len 32 * _2399]
                    if 1 >= _2399:
                        revert with 0, 50
                    _2959 = mem[_2367 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1696
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1696
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3040 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3040] == bool(mem[_3040])
                        if not mem[_3040]:
                            revert with 0, 'return transfer failed'
                        if _2959 < _1696:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2959 - _1696
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2959 - _1696
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3232 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3232] == bool(mem[_3232])
                        if not mem[_3232]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3041] == bool(mem[_3041])
                        if not mem[_3041]:
                            revert with 0, 'return transfer failed'
                        if _2959 < _1696:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2959 - _1696
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2959 - _1696
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3233 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3233] == bool(mem[_3233])
                        if not mem[_3233]:
                            revert with 0, 'dev transfer failed'
            else:
                mem[160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = sub_50d7d613Address
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_50d7d613Address, arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_8ed8ea7eAddress)
                staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _944 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _960 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _944 + (32 * _960) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _960] = mem[(4 * ceil32(return_data.size)) + _944 + 224 len 32 * _960]
                    if 0 >= _960:
                        revert with 0, 50
                    _1698 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1698
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1698, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2368 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2384 = mem[_2368]
                    require mem[_2368] <= test266151307()
                    require _2368 + mem[_2368] + 31 < _2368 + return_data.size
                    _2400 = mem[_2368 + mem[_2368]]
                    if mem[_2368 + mem[_2368]] > test266151307():
                        revert with 0, 65
                    if _2368 + ceil32(return_data.size) + ceil32(32 * mem[_2368 + mem[_2368]]) + 1 > test266151307() or ceil32(32 * mem[_2368 + mem[_2368]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2368 + ceil32(return_data.size) + ceil32(32 * mem[_2368 + mem[_2368]]) + 1
                    mem[_2368 + ceil32(return_data.size)] = _2400
                    require return_data.size >= _2384 + (32 * _2400) + 32
                    mem[_2368 + ceil32(return_data.size) + 32 len 32 * _2400] = mem[_2368 + _2384 + 32 len 32 * _2400]
                    if 1 >= _2400:
                        revert with 0, 50
                    _2960 = mem[_2368 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1698
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1698
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3042 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3042] == bool(mem[_3042])
                        if not mem[_3042]:
                            revert with 0, 'return transfer failed'
                        if _2960 < _1698:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2960 - _1698
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2960 - _1698
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3234 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3234] == bool(mem[_3234])
                        if not mem[_3234]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3043 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3043] == bool(mem[_3043])
                        if not mem[_3043]:
                            revert with 0, 'return transfer failed'
                        if _2960 < _1698:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2960 - _1698
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2960 - _1698
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3235] == bool(mem[_3235])
                        if not mem[_3235]:
                            revert with 0, 'dev transfer failed'
                else:
                    _945 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _961 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _945 + (32 * _961) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _961] = mem[(4 * ceil32(return_data.size)) + _945 + 224 len 32 * _961]
                    if 0 >= _961:
                        revert with 0, 50
                    _1700 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1700
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1700, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2369 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2385 = mem[_2369]
                    require mem[_2369] <= test266151307()
                    require _2369 + mem[_2369] + 31 < _2369 + return_data.size
                    _2401 = mem[_2369 + mem[_2369]]
                    if mem[_2369 + mem[_2369]] > test266151307():
                        revert with 0, 65
                    if _2369 + ceil32(return_data.size) + ceil32(32 * mem[_2369 + mem[_2369]]) + 1 > test266151307() or ceil32(32 * mem[_2369 + mem[_2369]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2369 + ceil32(return_data.size) + ceil32(32 * mem[_2369 + mem[_2369]]) + 1
                    mem[_2369 + ceil32(return_data.size)] = _2401
                    require return_data.size >= _2385 + (32 * _2401) + 32
                    mem[_2369 + ceil32(return_data.size) + 32 len 32 * _2401] = mem[_2369 + _2385 + 32 len 32 * _2401]
                    if 1 >= _2401:
                        revert with 0, 50
                    _2961 = mem[_2369 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1700
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1700
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3044 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3044] == bool(mem[_3044])
                        if not mem[_3044]:
                            revert with 0, 'return transfer failed'
                        if _2961 < _1700:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2961 - _1700
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2961 - _1700
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3236] == bool(mem[_3236])
                        if not mem[_3236]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3045 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3045] == bool(mem[_3045])
                        if not mem[_3045]:
                            revert with 0, 'return transfer failed'
                        if _2961 < _1700:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2961 - _1700
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2961 - _1700
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3237 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3237] == bool(mem[_3237])
                        if not mem[_3237]:
                            revert with 0, 'dev transfer failed'
        else:
            mem[128] = address(ext_call.return_data[0])
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = sub_50d7d613Address
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_50d7d613Address, arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_8ed8ea7eAddress)
                staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _946 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _962 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _946 + (32 * _962) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _962] = mem[(4 * ceil32(return_data.size)) + _946 + 224 len 32 * _962]
                    if 0 >= _962:
                        revert with 0, 50
                    _1702 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1702
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1702, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2370 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2386 = mem[_2370]
                    require mem[_2370] <= test266151307()
                    require _2370 + mem[_2370] + 31 < _2370 + return_data.size
                    _2402 = mem[_2370 + mem[_2370]]
                    if mem[_2370 + mem[_2370]] > test266151307():
                        revert with 0, 65
                    if _2370 + ceil32(return_data.size) + ceil32(32 * mem[_2370 + mem[_2370]]) + 1 > test266151307() or ceil32(32 * mem[_2370 + mem[_2370]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2370 + ceil32(return_data.size) + ceil32(32 * mem[_2370 + mem[_2370]]) + 1
                    mem[_2370 + ceil32(return_data.size)] = _2402
                    require return_data.size >= _2386 + (32 * _2402) + 32
                    mem[_2370 + ceil32(return_data.size) + 32 len 32 * _2402] = mem[_2370 + _2386 + 32 len 32 * _2402]
                    if 1 >= _2402:
                        revert with 0, 50
                    _2962 = mem[_2370 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1702
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1702
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3046 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3046] == bool(mem[_3046])
                        if not mem[_3046]:
                            revert with 0, 'return transfer failed'
                        if _2962 < _1702:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2962 - _1702
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2962 - _1702
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3238 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3238] == bool(mem[_3238])
                        if not mem[_3238]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3047] == bool(mem[_3047])
                        if not mem[_3047]:
                            revert with 0, 'return transfer failed'
                        if _2962 < _1702:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2962 - _1702
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2962 - _1702
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3239 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3239] == bool(mem[_3239])
                        if not mem[_3239]:
                            revert with 0, 'dev transfer failed'
                else:
                    _947 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _963 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _947 + (32 * _963) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _963] = mem[(4 * ceil32(return_data.size)) + _947 + 224 len 32 * _963]
                    if 0 >= _963:
                        revert with 0, 50
                    _1704 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1704
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1704, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2371 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2387 = mem[_2371]
                    require mem[_2371] <= test266151307()
                    require _2371 + mem[_2371] + 31 < _2371 + return_data.size
                    _2403 = mem[_2371 + mem[_2371]]
                    if mem[_2371 + mem[_2371]] > test266151307():
                        revert with 0, 65
                    if _2371 + ceil32(return_data.size) + ceil32(32 * mem[_2371 + mem[_2371]]) + 1 > test266151307() or ceil32(32 * mem[_2371 + mem[_2371]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2371 + ceil32(return_data.size) + ceil32(32 * mem[_2371 + mem[_2371]]) + 1
                    mem[_2371 + ceil32(return_data.size)] = _2403
                    require return_data.size >= _2387 + (32 * _2403) + 32
                    mem[_2371 + ceil32(return_data.size) + 32 len 32 * _2403] = mem[_2371 + _2387 + 32 len 32 * _2403]
                    if 1 >= _2403:
                        revert with 0, 50
                    _2963 = mem[_2371 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1704
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1704
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3048] == bool(mem[_3048])
                        if not mem[_3048]:
                            revert with 0, 'return transfer failed'
                        if _2963 < _1704:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2963 - _1704
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2963 - _1704
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3240 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3240] == bool(mem[_3240])
                        if not mem[_3240]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3049] == bool(mem[_3049])
                        if not mem[_3049]:
                            revert with 0, 'return transfer failed'
                        if _2963 < _1704:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2963 - _1704
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2963 - _1704
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3241 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3241] == bool(mem[_3241])
                        if not mem[_3241]:
                            revert with 0, 'dev transfer failed'
            else:
                mem[160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = sub_50d7d613Address
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_50d7d613Address, arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_8ed8ea7eAddress)
                staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _948 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _964 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _948 + (32 * _964) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _964] = mem[(4 * ceil32(return_data.size)) + _948 + 224 len 32 * _964]
                    if 0 >= _964:
                        revert with 0, 50
                    _1706 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1706
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1706, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2372 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2388 = mem[_2372]
                    require mem[_2372] <= test266151307()
                    require _2372 + mem[_2372] + 31 < _2372 + return_data.size
                    _2404 = mem[_2372 + mem[_2372]]
                    if mem[_2372 + mem[_2372]] > test266151307():
                        revert with 0, 65
                    if _2372 + ceil32(return_data.size) + ceil32(32 * mem[_2372 + mem[_2372]]) + 1 > test266151307() or ceil32(32 * mem[_2372 + mem[_2372]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2372 + ceil32(return_data.size) + ceil32(32 * mem[_2372 + mem[_2372]]) + 1
                    mem[_2372 + ceil32(return_data.size)] = _2404
                    require return_data.size >= _2388 + (32 * _2404) + 32
                    mem[_2372 + ceil32(return_data.size) + 32 len 32 * _2404] = mem[_2372 + _2388 + 32 len 32 * _2404]
                    if 1 >= _2404:
                        revert with 0, 50
                    _2964 = mem[_2372 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1706
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1706
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3050 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3050] == bool(mem[_3050])
                        if not mem[_3050]:
                            revert with 0, 'return transfer failed'
                        if _2964 < _1706:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2964 - _1706
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2964 - _1706
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3242] == bool(mem[_3242])
                        if not mem[_3242]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3051] == bool(mem[_3051])
                        if not mem[_3051]:
                            revert with 0, 'return transfer failed'
                        if _2964 < _1706:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2964 - _1706
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2964 - _1706
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3243 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3243] == bool(mem[_3243])
                        if not mem[_3243]:
                            revert with 0, 'dev transfer failed'
                else:
                    _949 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _965 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _949 + (32 * _965) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _965] = mem[(4 * ceil32(return_data.size)) + _949 + 224 len 32 * _965]
                    if 0 >= _965:
                        revert with 0, 50
                    _1708 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1708
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1708, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2373 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2389 = mem[_2373]
                    require mem[_2373] <= test266151307()
                    require _2373 + mem[_2373] + 31 < _2373 + return_data.size
                    _2405 = mem[_2373 + mem[_2373]]
                    if mem[_2373 + mem[_2373]] > test266151307():
                        revert with 0, 65
                    if _2373 + ceil32(return_data.size) + ceil32(32 * mem[_2373 + mem[_2373]]) + 1 > test266151307() or ceil32(32 * mem[_2373 + mem[_2373]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2373 + ceil32(return_data.size) + ceil32(32 * mem[_2373 + mem[_2373]]) + 1
                    mem[_2373 + ceil32(return_data.size)] = _2405
                    require return_data.size >= _2389 + (32 * _2405) + 32
                    mem[_2373 + ceil32(return_data.size) + 32 len 32 * _2405] = mem[_2373 + _2389 + 32 len 32 * _2405]
                    if 1 >= _2405:
                        revert with 0, 50
                    _2965 = mem[_2373 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1708
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1708
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3052 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3052] == bool(mem[_3052])
                        if not mem[_3052]:
                            revert with 0, 'return transfer failed'
                        if _2965 < _1708:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2965 - _1708
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2965 - _1708
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3244] == bool(mem[_3244])
                        if not mem[_3244]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3053 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3053] == bool(mem[_3053])
                        if not mem[_3053]:
                            revert with 0, 'return transfer failed'
                        if _2965 < _1708:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2965 - _1708
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2965 - _1708
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3245] == bool(mem[_3245])
                        if not mem[_3245]:
                            revert with 0, 'dev transfer failed'
    else:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = sub_50d7d613Address
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_50d7d613Address, arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_8ed8ea7eAddress)
                staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _950 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _966 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _950 + (32 * _966) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _966] = mem[(4 * ceil32(return_data.size)) + _950 + 224 len 32 * _966]
                    if 0 >= _966:
                        revert with 0, 50
                    _1710 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1710
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1710, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2374 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2390 = mem[_2374]
                    require mem[_2374] <= test266151307()
                    require _2374 + mem[_2374] + 31 < _2374 + return_data.size
                    _2406 = mem[_2374 + mem[_2374]]
                    if mem[_2374 + mem[_2374]] > test266151307():
                        revert with 0, 65
                    if _2374 + ceil32(return_data.size) + ceil32(32 * mem[_2374 + mem[_2374]]) + 1 > test266151307() or ceil32(32 * mem[_2374 + mem[_2374]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2374 + ceil32(return_data.size) + ceil32(32 * mem[_2374 + mem[_2374]]) + 1
                    mem[_2374 + ceil32(return_data.size)] = _2406
                    require return_data.size >= _2390 + (32 * _2406) + 32
                    mem[_2374 + ceil32(return_data.size) + 32 len 32 * _2406] = mem[_2374 + _2390 + 32 len 32 * _2406]
                    if 1 >= _2406:
                        revert with 0, 50
                    _2966 = mem[_2374 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1710
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1710
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3054 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3054] == bool(mem[_3054])
                        if not mem[_3054]:
                            revert with 0, 'return transfer failed'
                        if _2966 < _1710:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2966 - _1710
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2966 - _1710
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3246] == bool(mem[_3246])
                        if not mem[_3246]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3055 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3055] == bool(mem[_3055])
                        if not mem[_3055]:
                            revert with 0, 'return transfer failed'
                        if _2966 < _1710:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2966 - _1710
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2966 - _1710
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3247 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3247] == bool(mem[_3247])
                        if not mem[_3247]:
                            revert with 0, 'dev transfer failed'
                else:
                    _951 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _967 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _951 + (32 * _967) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _967] = mem[(4 * ceil32(return_data.size)) + _951 + 224 len 32 * _967]
                    if 0 >= _967:
                        revert with 0, 50
                    _1712 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1712
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1712, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2375 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2391 = mem[_2375]
                    require mem[_2375] <= test266151307()
                    require _2375 + mem[_2375] + 31 < _2375 + return_data.size
                    _2407 = mem[_2375 + mem[_2375]]
                    if mem[_2375 + mem[_2375]] > test266151307():
                        revert with 0, 65
                    if _2375 + ceil32(return_data.size) + ceil32(32 * mem[_2375 + mem[_2375]]) + 1 > test266151307() or ceil32(32 * mem[_2375 + mem[_2375]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2375 + ceil32(return_data.size) + ceil32(32 * mem[_2375 + mem[_2375]]) + 1
                    mem[_2375 + ceil32(return_data.size)] = _2407
                    require return_data.size >= _2391 + (32 * _2407) + 32
                    mem[_2375 + ceil32(return_data.size) + 32 len 32 * _2407] = mem[_2375 + _2391 + 32 len 32 * _2407]
                    if 1 >= _2407:
                        revert with 0, 50
                    _2967 = mem[_2375 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1712
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1712
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3056 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3056] == bool(mem[_3056])
                        if not mem[_3056]:
                            revert with 0, 'return transfer failed'
                        if _2967 < _1712:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2967 - _1712
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2967 - _1712
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3248] == bool(mem[_3248])
                        if not mem[_3248]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3057 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3057] == bool(mem[_3057])
                        if not mem[_3057]:
                            revert with 0, 'return transfer failed'
                        if _2967 < _1712:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2967 - _1712
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2967 - _1712
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3249] == bool(mem[_3249])
                        if not mem[_3249]:
                            revert with 0, 'dev transfer failed'
            else:
                mem[160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = sub_50d7d613Address
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_50d7d613Address, arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_8ed8ea7eAddress)
                staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _952 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _968 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _952 + (32 * _968) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _968] = mem[(4 * ceil32(return_data.size)) + _952 + 224 len 32 * _968]
                    if 0 >= _968:
                        revert with 0, 50
                    _1714 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1714
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1714, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2376 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2392 = mem[_2376]
                    require mem[_2376] <= test266151307()
                    require _2376 + mem[_2376] + 31 < _2376 + return_data.size
                    _2408 = mem[_2376 + mem[_2376]]
                    if mem[_2376 + mem[_2376]] > test266151307():
                        revert with 0, 65
                    if _2376 + ceil32(return_data.size) + ceil32(32 * mem[_2376 + mem[_2376]]) + 1 > test266151307() or ceil32(32 * mem[_2376 + mem[_2376]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2376 + ceil32(return_data.size) + ceil32(32 * mem[_2376 + mem[_2376]]) + 1
                    mem[_2376 + ceil32(return_data.size)] = _2408
                    require return_data.size >= _2392 + (32 * _2408) + 32
                    mem[_2376 + ceil32(return_data.size) + 32 len 32 * _2408] = mem[_2376 + _2392 + 32 len 32 * _2408]
                    if 1 >= _2408:
                        revert with 0, 50
                    _2968 = mem[_2376 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1714
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1714
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3058 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3058] == bool(mem[_3058])
                        if not mem[_3058]:
                            revert with 0, 'return transfer failed'
                        if _2968 < _1714:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2968 - _1714
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2968 - _1714
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3250] == bool(mem[_3250])
                        if not mem[_3250]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3059 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3059] == bool(mem[_3059])
                        if not mem[_3059]:
                            revert with 0, 'return transfer failed'
                        if _2968 < _1714:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2968 - _1714
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2968 - _1714
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3251 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3251] == bool(mem[_3251])
                        if not mem[_3251]:
                            revert with 0, 'dev transfer failed'
                else:
                    _953 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _969 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _953 + (32 * _969) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _969] = mem[(4 * ceil32(return_data.size)) + _953 + 224 len 32 * _969]
                    if 0 >= _969:
                        revert with 0, 50
                    _1716 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1716
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1716, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2377 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2393 = mem[_2377]
                    require mem[_2377] <= test266151307()
                    require _2377 + mem[_2377] + 31 < _2377 + return_data.size
                    _2409 = mem[_2377 + mem[_2377]]
                    if mem[_2377 + mem[_2377]] > test266151307():
                        revert with 0, 65
                    if _2377 + ceil32(return_data.size) + ceil32(32 * mem[_2377 + mem[_2377]]) + 1 > test266151307() or ceil32(32 * mem[_2377 + mem[_2377]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2377 + ceil32(return_data.size) + ceil32(32 * mem[_2377 + mem[_2377]]) + 1
                    mem[_2377 + ceil32(return_data.size)] = _2409
                    require return_data.size >= _2393 + (32 * _2409) + 32
                    mem[_2377 + ceil32(return_data.size) + 32 len 32 * _2409] = mem[_2377 + _2393 + 32 len 32 * _2409]
                    if 1 >= _2409:
                        revert with 0, 50
                    _2969 = mem[_2377 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1716
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1716
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3060 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3060] == bool(mem[_3060])
                        if not mem[_3060]:
                            revert with 0, 'return transfer failed'
                        if _2969 < _1716:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2969 - _1716
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2969 - _1716
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3252] == bool(mem[_3252])
                        if not mem[_3252]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3061 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3061] == bool(mem[_3061])
                        if not mem[_3061]:
                            revert with 0, 'return transfer failed'
                        if _2969 < _1716:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2969 - _1716
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2969 - _1716
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3253] == bool(mem[_3253])
                        if not mem[_3253]:
                            revert with 0, 'dev transfer failed'
        else:
            mem[128] = address(ext_call.return_data[0])
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = sub_50d7d613Address
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_50d7d613Address, arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_8ed8ea7eAddress)
                staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _954 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _970 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _954 + (32 * _970) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _970] = mem[(4 * ceil32(return_data.size)) + _954 + 224 len 32 * _970]
                    if 0 >= _970:
                        revert with 0, 50
                    _1718 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1718
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1718, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2378 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2394 = mem[_2378]
                    require mem[_2378] <= test266151307()
                    require _2378 + mem[_2378] + 31 < _2378 + return_data.size
                    _2410 = mem[_2378 + mem[_2378]]
                    if mem[_2378 + mem[_2378]] > test266151307():
                        revert with 0, 65
                    if _2378 + ceil32(return_data.size) + ceil32(32 * mem[_2378 + mem[_2378]]) + 1 > test266151307() or ceil32(32 * mem[_2378 + mem[_2378]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2378 + ceil32(return_data.size) + ceil32(32 * mem[_2378 + mem[_2378]]) + 1
                    mem[_2378 + ceil32(return_data.size)] = _2410
                    require return_data.size >= _2394 + (32 * _2410) + 32
                    mem[_2378 + ceil32(return_data.size) + 32 len 32 * _2410] = mem[_2378 + _2394 + 32 len 32 * _2410]
                    if 1 >= _2410:
                        revert with 0, 50
                    _2970 = mem[_2378 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1718
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1718
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3062 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3062] == bool(mem[_3062])
                        if not mem[_3062]:
                            revert with 0, 'return transfer failed'
                        if _2970 < _1718:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2970 - _1718
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2970 - _1718
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3254] == bool(mem[_3254])
                        if not mem[_3254]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3063 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3063] == bool(mem[_3063])
                        if not mem[_3063]:
                            revert with 0, 'return transfer failed'
                        if _2970 < _1718:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2970 - _1718
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2970 - _1718
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3255] == bool(mem[_3255])
                        if not mem[_3255]:
                            revert with 0, 'dev transfer failed'
                else:
                    _955 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _971 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _955 + (32 * _971) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _971] = mem[(4 * ceil32(return_data.size)) + _955 + 224 len 32 * _971]
                    if 0 >= _971:
                        revert with 0, 50
                    _1720 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1720
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1720, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2379 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2395 = mem[_2379]
                    require mem[_2379] <= test266151307()
                    require _2379 + mem[_2379] + 31 < _2379 + return_data.size
                    _2411 = mem[_2379 + mem[_2379]]
                    if mem[_2379 + mem[_2379]] > test266151307():
                        revert with 0, 65
                    if _2379 + ceil32(return_data.size) + ceil32(32 * mem[_2379 + mem[_2379]]) + 1 > test266151307() or ceil32(32 * mem[_2379 + mem[_2379]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2379 + ceil32(return_data.size) + ceil32(32 * mem[_2379 + mem[_2379]]) + 1
                    mem[_2379 + ceil32(return_data.size)] = _2411
                    require return_data.size >= _2395 + (32 * _2411) + 32
                    mem[_2379 + ceil32(return_data.size) + 32 len 32 * _2411] = mem[_2379 + _2395 + 32 len 32 * _2411]
                    if 1 >= _2411:
                        revert with 0, 50
                    _2971 = mem[_2379 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1720
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1720
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3064 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3064] == bool(mem[_3064])
                        if not mem[_3064]:
                            revert with 0, 'return transfer failed'
                        if _2971 < _1720:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2971 - _1720
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2971 - _1720
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3256 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3256] == bool(mem[_3256])
                        if not mem[_3256]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3065 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3065] == bool(mem[_3065])
                        if not mem[_3065]:
                            revert with 0, 'return transfer failed'
                        if _2971 < _1720:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2971 - _1720
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2971 - _1720
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3257] == bool(mem[_3257])
                        if not mem[_3257]:
                            revert with 0, 'dev transfer failed'
            else:
                mem[160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = sub_50d7d613Address
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_50d7d613Address, arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_8ed8ea7eAddress)
                staticcall sub_8ed8ea7eAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _956 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _972 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _956 + (32 * _972) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _972] = mem[(4 * ceil32(return_data.size)) + _956 + 224 len 32 * _972]
                    if 0 >= _972:
                        revert with 0, 50
                    _1722 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1722
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1722, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2380 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2396 = mem[_2380]
                    require mem[_2380] <= test266151307()
                    require _2380 + mem[_2380] + 31 < _2380 + return_data.size
                    _2412 = mem[_2380 + mem[_2380]]
                    if mem[_2380 + mem[_2380]] > test266151307():
                        revert with 0, 65
                    if _2380 + ceil32(return_data.size) + ceil32(32 * mem[_2380 + mem[_2380]]) + 1 > test266151307() or ceil32(32 * mem[_2380 + mem[_2380]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2380 + ceil32(return_data.size) + ceil32(32 * mem[_2380 + mem[_2380]]) + 1
                    mem[_2380 + ceil32(return_data.size)] = _2412
                    require return_data.size >= _2396 + (32 * _2412) + 32
                    mem[_2380 + ceil32(return_data.size) + 32 len 32 * _2412] = mem[_2380 + _2396 + 32 len 32 * _2412]
                    if 1 >= _2412:
                        revert with 0, 50
                    _2972 = mem[_2380 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1722
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1722
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3066 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3066] == bool(mem[_3066])
                        if not mem[_3066]:
                            revert with 0, 'return transfer failed'
                        if _2972 < _1722:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2972 - _1722
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2972 - _1722
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3258 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3258] == bool(mem[_3258])
                        if not mem[_3258]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3067] == bool(mem[_3067])
                        if not mem[_3067]:
                            revert with 0, 'return transfer failed'
                        if _2972 < _1722:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2972 - _1722
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2972 - _1722
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3259] == bool(mem[_3259])
                        if not mem[_3259]:
                            revert with 0, 'dev transfer failed'
                else:
                    _957 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _973 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _957 + (32 * _973) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _973] = mem[(4 * ceil32(return_data.size)) + _957 + 224 len 32 * _973]
                    if 0 >= _973:
                        revert with 0, 50
                    _1724 = mem[(6 * ceil32(return_data.size)) + 224]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1724
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(sub_50d7d613Address)
                    call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1724, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2381 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2397 = mem[_2381]
                    require mem[_2381] <= test266151307()
                    require _2381 + mem[_2381] + 31 < _2381 + return_data.size
                    _2413 = mem[_2381 + mem[_2381]]
                    if mem[_2381 + mem[_2381]] > test266151307():
                        revert with 0, 65
                    if _2381 + ceil32(return_data.size) + ceil32(32 * mem[_2381 + mem[_2381]]) + 1 > test266151307() or ceil32(32 * mem[_2381 + mem[_2381]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2381 + ceil32(return_data.size) + ceil32(32 * mem[_2381 + mem[_2381]]) + 1
                    mem[_2381 + ceil32(return_data.size)] = _2413
                    require return_data.size >= _2397 + (32 * _2413) + 32
                    mem[_2381 + ceil32(return_data.size) + 32 len 32 * _2413] = mem[_2381 + _2397 + 32 len 32 * _2413]
                    if 1 >= _2413:
                        revert with 0, 50
                    _2973 = mem[_2381 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1724
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1724
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 == arg2:
                        _3068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3068] == bool(mem[_3068])
                        if not mem[_3068]:
                            revert with 0, 'return transfer failed'
                        if _2973 < _1724:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2973 - _1724
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2973 - _1724
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3260] == bool(mem[_3260])
                        if not mem[_3260]:
                            revert with 0, 'dev transfer failed'
                    else:
                        _3069 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3069] == bool(mem[_3069])
                        if not mem[_3069]:
                            revert with 0, 'return transfer failed'
                        if _2973 < _1724:
                            revert with 0, 17
                        mem[mem[64] + 4] = devAddress
                        mem[mem[64] + 36] = _2973 - _1724
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, _2973 - _1724
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3261] == bool(mem[_3261])
                        if not mem[_3261]:
                            revert with 0, 'dev transfer failed'
    emit 0x9d2ba4e8: address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all])
}



}
