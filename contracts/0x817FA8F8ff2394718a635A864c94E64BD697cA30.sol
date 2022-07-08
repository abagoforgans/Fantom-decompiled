contract main {




// =====================  Runtime code  =====================


#
#  - sub_ce9c412e(?)
#
mapping of uint8 stor0;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function operator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[msg.sender]:
        stor0[address(arg1)] = 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[msg.sender]:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a4aa338c(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[128] = cd[4]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if var101002 < ('cd', 36).length - 1:
            if var103001 < ('cd', 36).length:
                require cd[((32 * var103001) + cd[36] + 36)] == address(cd[((32 * var103001) + cd[36] + 36)])
                s = var103001
                idx = var103001
                while idx < ('cd', 68).length:
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if 1 > !idx:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[68] + 36)] == address(cd[((32 * idx + 1) + cd[68] + 36)])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _362 = mem[(32 * idx) + 128]
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                    staticcall address(cd[((32 * s) + cd[36] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_368] == mem[_368 + 18 len 14]
                    require mem[_368 + 32] == mem[_368 + 50 len 14]
                    require mem[_368 + 64] == mem[_368 + 92 len 4]
                    if 10000 < cd[((32 * idx) + cd[100] + 36)]:
                        revert with 'NH{q', 17
                    if _362 and -cd[((32 * idx) + cd[100] + 36)] + 10000 > -1 / _362:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                            if (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362) and mem[_368 + 50 len 14] > -1 / (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362):
                                revert with 'NH{q', 17
                            if mem[_368 + 18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[_368 + 18 len 14] > !((10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362)):
                                revert with 'NH{q', 17
                            if not (10000 * mem[_368 + 18 len 14]) + (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362):
                                revert with 'NH{q', 18
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = (10000 * _362 * mem[_368 + 50 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _362 * mem[_368 + 50 len 14]) / (10000 * mem[_368 + 18 len 14]) + (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
                            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _400 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _416 = mem[64]
                            mem[mem[64]] = mem[_400]
                            mem[mem[64] + 32] = 64
                            _424 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = mem[64] + 96
                            u = 128
                            while idx < _424:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _416 + (32 * _424) + -mem[64] + 96
                        if (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362) and mem[_368 + 18 len 14] > -1 / (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362):
                            revert with 'NH{q', 17
                        if mem[_368 + 50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[_368 + 50 len 14] > !((10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362)):
                            revert with 'NH{q', 17
                        if not (10000 * mem[_368 + 50 len 14]) + (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362):
                            revert with 'NH{q', 18
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = (10000 * _362 * mem[_368 + 18 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _362 * mem[_368 + 18 len 14]) / (10000 * mem[_368 + 50 len 14]) + (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _417 = mem[64]
                        mem[mem[64]] = mem[_401]
                        mem[mem[64] + 32] = 64
                        _425 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = mem[64] + 96
                        u = 128
                        while idx < _425:
                            mem[t] = mem[u]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _417 + (32 * _425) + -mem[64] + 96
                    if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        if (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362) and mem[_368 + 50 len 14] > -1 / (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362):
                            revert with 'NH{q', 17
                        if mem[_368 + 18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[_368 + 18 len 14] > !((10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362)):
                            revert with 'NH{q', 17
                        if not (10000 * mem[_368 + 18 len 14]) + (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362):
                            revert with 'NH{q', 18
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = (10000 * _362 * mem[_368 + 50 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _362 * mem[_368 + 50 len 14]) / (10000 * mem[_368 + 18 len 14]) + (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _418 = mem[64]
                        mem[mem[64]] = mem[_402]
                        mem[mem[64] + 32] = 64
                        _426 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = mem[64] + 96
                        u = 128
                        while idx < _426:
                            mem[t] = mem[u]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _418 + (32 * _426) + -mem[64] + 96
                    if (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362) and mem[_368 + 18 len 14] > -1 / (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362):
                        revert with 'NH{q', 17
                    if mem[_368 + 50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[_368 + 50 len 14] > !((10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362)):
                        revert with 'NH{q', 17
                    if not (10000 * mem[_368 + 50 len 14]) + (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362):
                        revert with 'NH{q', 18
                    if 1 > !idx:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = (10000 * _362 * mem[_368 + 18 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _362 * mem[_368 + 18 len 14]) / (10000 * mem[_368 + 50 len 14]) + (10000 * _362) - (cd[((32 * idx) + cd[100] + 36)] * _362)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _403 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _419 = mem[64]
                    mem[mem[64]] = mem[_403]
                    mem[mem[64] + 32] = 64
                    _427 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = mem[64] + 96
                    u = 128
                    while idx < _427:
                        mem[t] = mem[u]
                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _419 + (32 * _427) + -mem[64] + 96
            revert with 'NH{q', 50
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[128] = cd[4]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if var102002 < ('cd', 36).length - 1:
            if var104001 < ('cd', 36).length:
                require cd[((32 * var104001) + cd[36] + 36)] == address(cd[((32 * var104001) + cd[36] + 36)])
                s = var104001
                idx = var104001
                while idx < ('cd', 68).length:
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if 1 > !idx:
                        revert with 'NH{q', 17
                    if idx + 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + cd[68] + 36)] == address(cd[((32 * idx + 1) + cd[68] + 36)])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _363 = mem[(32 * idx) + 128]
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                    staticcall address(cd[((32 * s) + cd[36] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_369] == mem[_369 + 18 len 14]
                    require mem[_369 + 32] == mem[_369 + 50 len 14]
                    require mem[_369 + 64] == mem[_369 + 92 len 4]
                    if 10000 < cd[((32 * idx) + cd[100] + 36)]:
                        revert with 'NH{q', 17
                    if _363 and -cd[((32 * idx) + cd[100] + 36)] + 10000 > -1 / _363:
                        revert with 'NH{q', 17
                    if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                            if (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363) and mem[_369 + 50 len 14] > -1 / (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363):
                                revert with 'NH{q', 17
                            if mem[_369 + 18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[_369 + 18 len 14] > !((10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363)):
                                revert with 'NH{q', 17
                            if not (10000 * mem[_369 + 18 len 14]) + (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363):
                                revert with 'NH{q', 18
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + 128] = (10000 * _363 * mem[_369 + 50 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _363 * mem[_369 + 50 len 14]) / (10000 * mem[_369 + 18 len 14]) + (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
                            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _404 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _420 = mem[64]
                            mem[mem[64]] = mem[_404]
                            mem[mem[64] + 32] = 64
                            _428 = mem[96]
                            mem[mem[64] + 64] = mem[96]
                            idx = 0
                            t = mem[64] + 96
                            u = 128
                            while idx < _428:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _420 + (32 * _428) + -mem[64] + 96
                        if (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363) and mem[_369 + 18 len 14] > -1 / (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363):
                            revert with 'NH{q', 17
                        if mem[_369 + 50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[_369 + 50 len 14] > !((10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363)):
                            revert with 'NH{q', 17
                        if not (10000 * mem[_369 + 50 len 14]) + (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363):
                            revert with 'NH{q', 18
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = (10000 * _363 * mem[_369 + 18 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _363 * mem[_369 + 18 len 14]) / (10000 * mem[_369 + 50 len 14]) + (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _421 = mem[64]
                        mem[mem[64]] = mem[_405]
                        mem[mem[64] + 32] = 64
                        _429 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = mem[64] + 96
                        u = 128
                        while idx < _429:
                            mem[t] = mem[u]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _421 + (32 * _429) + -mem[64] + 96
                    if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                        if (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363) and mem[_369 + 50 len 14] > -1 / (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363):
                            revert with 'NH{q', 17
                        if mem[_369 + 18 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[_369 + 18 len 14] > !((10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363)):
                            revert with 'NH{q', 17
                        if not (10000 * mem[_369 + 18 len 14]) + (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363):
                            revert with 'NH{q', 18
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + 128] = (10000 * _363 * mem[_369 + 50 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _363 * mem[_369 + 50 len 14]) / (10000 * mem[_369 + 18 len 14]) + (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _422 = mem[64]
                        mem[mem[64]] = mem[_406]
                        mem[mem[64] + 32] = 64
                        _430 = mem[96]
                        mem[mem[64] + 64] = mem[96]
                        idx = 0
                        t = mem[64] + 96
                        u = 128
                        while idx < _430:
                            mem[t] = mem[u]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _422 + (32 * _430) + -mem[64] + 96
                    if (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363) and mem[_369 + 18 len 14] > -1 / (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363):
                        revert with 'NH{q', 17
                    if mem[_369 + 50 len 14] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[_369 + 50 len 14] > !((10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363)):
                        revert with 'NH{q', 17
                    if not (10000 * mem[_369 + 50 len 14]) + (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363):
                        revert with 'NH{q', 18
                    if 1 > !idx:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = (10000 * _363 * mem[_369 + 18 len 14]) - (cd[((32 * idx) + cd[100] + 36)] * _363 * mem[_369 + 18 len 14]) / (10000 * mem[_369 + 50 len 14]) + (10000 * _363) - (cd[((32 * idx) + cd[100] + 36)] * _363)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
                    if ('cd', 36).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _423 = mem[64]
                    mem[mem[64]] = mem[_407]
                    mem[mem[64] + 32] = 64
                    _431 = mem[96]
                    mem[mem[64] + 64] = mem[96]
                    idx = 0
                    t = mem[64] + 96
                    u = 128
                    while idx < _431:
                        mem[t] = mem[u]
                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _423 + (32 * _431) + -mem[64] + 96
            revert with 'NH{q', 50
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)])
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    mem[(32 * ('cd', 36).length) + 132] = address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]))
    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[68] + 36)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = 64
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 192] = ('cd', 36).length
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 224 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    return memory
      from (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
       len (96 * ('cd', 36).length) + 96
}



}
