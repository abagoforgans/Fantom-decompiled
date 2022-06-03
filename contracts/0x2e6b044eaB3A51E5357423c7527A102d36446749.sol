contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct sub_d0290656;
array of struct sub_ef3c4a05;
array of struct sub_0551f733;
array of struct sub_8c54baf0;
array of struct sub_0f4c5ccf;

function sub_0551f733(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_0551f733[arg1].field_0
    return sub_0551f733[arg1][arg2].field_0, 
           sub_0551f733[arg1][arg2].field_256,
           sub_0551f733[arg1][arg2].field_512,
           sub_0551f733[arg1][arg2].field_768,
           sub_0551f733[arg1][arg2].field_1024,
           sub_0551f733[arg1][arg2].field_1280,
           sub_0551f733[arg1][arg2].field_1536
}

function sub_0f4c5ccf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_0f4c5ccf[arg1].field_0
    return sub_0f4c5ccf[arg1][arg2].field_0, 
           sub_0f4c5ccf[arg1][arg2].field_256,
           sub_0f4c5ccf[arg1][arg2].field_512,
           sub_0f4c5ccf[arg1][arg2].field_768,
           sub_0f4c5ccf[arg1][arg2].field_1024,
           sub_0f4c5ccf[arg1][arg2].field_1280,
           sub_0f4c5ccf[arg1][arg2].field_1536
}

function sub_8c54baf0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_8c54baf0[arg1].field_0
    return sub_8c54baf0[arg1][arg2].field_0, 
           sub_8c54baf0[arg1][arg2].field_256,
           sub_8c54baf0[arg1][arg2].field_512,
           sub_8c54baf0[arg1][arg2].field_768,
           sub_8c54baf0[arg1][arg2].field_1024,
           sub_8c54baf0[arg1][arg2].field_1280,
           sub_8c54baf0[arg1][arg2].field_1536
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function sub_d0290656(?) payable {
    require calldata.size - 4 >= 32
    return sub_d0290656[arg1].field_0, 
           sub_d0290656[arg1].field_256,
           sub_d0290656[arg1].field_512,
           sub_d0290656[arg1].field_768,
           sub_d0290656[arg1].field_1024,
           sub_d0290656[arg1].field_1280,
           sub_d0290656[arg1].field_1536
}

function sub_ef3c4a05(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_ef3c4a05[arg1].field_0
    return sub_ef3c4a05[arg1][arg2].field_0, 
           sub_ef3c4a05[arg1][arg2].field_256,
           sub_ef3c4a05[arg1][arg2].field_512,
           sub_ef3c4a05[arg1][arg2].field_768,
           sub_ef3c4a05[arg1][arg2].field_1024,
           sub_ef3c4a05[arg1][arg2].field_1280,
           sub_ef3c4a05[arg1][arg2].field_1536
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function sub_72d520c7(?) payable {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_256:
        return 0
    sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_0 = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_256 = arg1
    sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_512 = address(arg2)
    sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_768 = address(arg3)
    sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_1024 = address(arg4)
    sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_1280 = address(arg5)
    sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_1536 = arg6
    sub_ef3c4a05[address(arg2)].field_0++
    sub_ef3c4a05[address(arg2)][sub_ef3c4a05[address(arg2)].field_0].field_0 = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    sub_ef3c4a05[address(arg2)][sub_ef3c4a05[address(arg2)].field_0].field_256 = arg1
    sub_ef3c4a05[address(arg2)][sub_ef3c4a05[address(arg2)].field_0].field_512 = address(arg2)
    sub_ef3c4a05[address(arg2)][sub_ef3c4a05[address(arg2)].field_0].field_768 = address(arg3)
    sub_ef3c4a05[address(arg2)][sub_ef3c4a05[address(arg2)].field_0].field_1024 = address(arg4)
    sub_ef3c4a05[address(arg2)][sub_ef3c4a05[address(arg2)].field_0].field_1280 = address(arg5)
    sub_ef3c4a05[address(arg2)][sub_ef3c4a05[address(arg2)].field_0].field_1536 = arg6
    sub_0551f733[address(arg3)].field_0++
    sub_0551f733[address(arg3)][sub_0551f733[address(arg3)].field_0].field_0 = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    sub_0551f733[address(arg3)][sub_0551f733[address(arg3)].field_0].field_256 = arg1
    sub_0551f733[address(arg3)][sub_0551f733[address(arg3)].field_0].field_512 = address(arg2)
    sub_0551f733[address(arg3)][sub_0551f733[address(arg3)].field_0].field_768 = address(arg3)
    sub_0551f733[address(arg3)][sub_0551f733[address(arg3)].field_0].field_1024 = address(arg4)
    sub_0551f733[address(arg3)][sub_0551f733[address(arg3)].field_0].field_1280 = address(arg5)
    sub_0551f733[address(arg3)][sub_0551f733[address(arg3)].field_0].field_1536 = arg6
    sub_8c54baf0[address(arg4)].field_0++
    sub_8c54baf0[address(arg4)][sub_8c54baf0[address(arg4)].field_0].field_0 = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    sub_8c54baf0[address(arg4)][sub_8c54baf0[address(arg4)].field_0].field_256 = arg1
    sub_8c54baf0[address(arg4)][sub_8c54baf0[address(arg4)].field_0].field_512 = address(arg2)
    sub_8c54baf0[address(arg4)][sub_8c54baf0[address(arg4)].field_0].field_768 = address(arg3)
    sub_8c54baf0[address(arg4)][sub_8c54baf0[address(arg4)].field_0].field_1024 = address(arg4)
    sub_8c54baf0[address(arg4)][sub_8c54baf0[address(arg4)].field_0].field_1280 = address(arg5)
    sub_8c54baf0[address(arg4)][sub_8c54baf0[address(arg4)].field_0].field_1536 = arg6
    sub_0f4c5ccf[address(arg5)].field_0++
    sub_0f4c5ccf[address(arg5)][sub_0f4c5ccf[address(arg5)].field_0].field_0 = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    sub_0f4c5ccf[address(arg5)][sub_0f4c5ccf[address(arg5)].field_0].field_256 = arg1
    sub_0f4c5ccf[address(arg5)][sub_0f4c5ccf[address(arg5)].field_0].field_512 = address(arg2)
    sub_0f4c5ccf[address(arg5)][sub_0f4c5ccf[address(arg5)].field_0].field_768 = address(arg3)
    sub_0f4c5ccf[address(arg5)][sub_0f4c5ccf[address(arg5)].field_0].field_1024 = address(arg4)
    sub_0f4c5ccf[address(arg5)][sub_0f4c5ccf[address(arg5)].field_0].field_1280 = address(arg5)
    sub_0f4c5ccf[address(arg5)][sub_0f4c5ccf[address(arg5)].field_0].field_1536 = arg6
    emit 0x3abf67e6: arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6, sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6), arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6, sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    return 1
}

function sub_677808aa(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allTokenHashesLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 * arg5 > ext_call.return_data[0]:
        revert with 0, 'OUT_OF_RANGE'
    if arg5 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = arg5
    mem[64] = ceil32(return_data.size) + (32 * arg5) + 128
    if not arg5:
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if var84002 >= (arg4 * arg5) + arg5:
            mem[ceil32(return_data.size) + (32 * arg5) + 128] = 32
            mem[ceil32(return_data.size) + (32 * arg5) + 160] = arg5
            mem[ceil32(return_data.size) + (32 * arg5) + 192 len 32 * arg5] = mem[ceil32(return_data.size) + 128 len 32 * arg5]
            return memory
              from ceil32(return_data.size) + (32 * arg5) + 128
               len (96 * arg5) + 64
        idx = var84002
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _408 = mem[_404]
            mem[mem[64] + 4] = mem[_404]
            require ext_code.size(address(arg1))
            staticcall address(arg1).tokenType(uint256 arg1) with:
                    gas gas_remaining wei
                   args _408
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _418 = mem[_416]
            require mem[_416] < 3
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _408
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg3), _408
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _418 > 2:
                revert with 0, 33
            if _418 != 2:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _430 = mem[64]
                mem[mem[64]] = 32
                _432 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 128
                while idx < _432:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _430 + (32 * _432) + -mem[64] + 64
            if not mem[_424]:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _433 = mem[64]
                mem[mem[64]] = 32
                _436 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 128
                while idx < _436:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _433 + (32 * _436) + -mem[64] + 64
            if not _408:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _437 = mem[64]
                mem[mem[64]] = 32
                _441 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 128
                while idx < _441:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _437 + (32 * _441) + -mem[64] + 64
            if 1 == _408:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _442 = mem[64]
                mem[mem[64]] = 32
                _448 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 128
                while idx < _448:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _442 + (32 * _448) + -mem[64] + 64
            if _418 > 2:
                revert with 0, 33
            if _418 != 2:
                if idx == -1:
                    revert with 0, 17
                if arg4 and arg5 > -1 / arg4:
                    revert with 0, 17
                if arg4 * arg5 > !arg5:
                    revert with 0, 17
                if idx + 1 < (arg4 * arg5) + arg5:
                    idx = idx + 1
                    continue 
                _454 = mem[64]
                mem[mem[64]] = 32
                _459 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 128
                while idx < _459:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _454 + (32 * _459) + -mem[64] + 64
            if 0 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[ceil32(return_data.size) + 128] = _408
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _470 = mem[64]
            mem[mem[64]] = 32
            _472 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _472:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _470 + (32 * _472) + -mem[64] + 64
        mem[mem[64]] = 32
        _402 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _402] = mem[ceil32(return_data.size) + 128 len 32 * _402]
        return 32, mem[mem[64] + 32 len (32 * _402) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 * arg5 > !arg5:
        revert with 0, 17
    if var85002 >= (arg4 * arg5) + arg5:
        mem[ceil32(return_data.size) + (32 * arg5) + 128] = 32
        mem[ceil32(return_data.size) + (32 * arg5) + 160] = arg5
        mem[ceil32(return_data.size) + (32 * arg5) + 192 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
        return memory
          from ceil32(return_data.size) + (32 * arg5) + 128
           len (96 * arg5) + 64
    idx = var85002
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allTokenHashes(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _405 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _410 = mem[_405]
        mem[mem[64] + 4] = mem[_405]
        require ext_code.size(address(arg1))
        staticcall address(arg1).tokenType(uint256 arg1) with:
                gas gas_remaining wei
               args _410
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _417 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _419 = mem[_417]
        require mem[_417] < 3
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = _410
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg3), _410
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _425 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if _419 > 2:
            revert with 0, 33
        if _419 != 2:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _431 = mem[64]
            mem[mem[64]] = 32
            _434 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _434:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _431 + (32 * _434) + -mem[64] + 64
        if not mem[_425]:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _435 = mem[64]
            mem[mem[64]] = 32
            _438 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _438:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _435 + (32 * _438) + -mem[64] + 64
        if not _410:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _439 = mem[64]
            mem[mem[64]] = 32
            _444 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _444:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _439 + (32 * _444) + -mem[64] + 64
        if 1 == _410:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _445 = mem[64]
            mem[mem[64]] = 32
            _451 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _451:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _445 + (32 * _451) + -mem[64] + 64
        if _419 > 2:
            revert with 0, 33
        if _419 != 2:
            if idx == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if arg4 * arg5 > !arg5:
                revert with 0, 17
            if idx + 1 < (arg4 * arg5) + arg5:
                idx = idx + 1
                continue 
            _457 = mem[64]
            mem[mem[64]] = 32
            _462 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _462:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _457 + (32 * _462) + -mem[64] + 64
        if 0 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[ceil32(return_data.size) + 128] = _410
        if idx == -1:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if idx + 1 < (arg4 * arg5) + arg5:
            idx = idx + 1
            continue 
        _471 = mem[64]
        mem[mem[64]] = 32
        _473 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _473:
            mem[s] = mem[t]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _471 + (32 * _473) + -mem[64] + 64
    mem[mem[64]] = 32
    _403 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _403] = mem[ceil32(return_data.size) + 128 len 32 * _403]
    return 32, mem[mem[64] + 32 len (32 * _403) + 32]
}



}
