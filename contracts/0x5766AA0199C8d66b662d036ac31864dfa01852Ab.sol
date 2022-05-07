contract main {




// =====================  Runtime code  =====================


address balanceKeeperAddress;
address impactEBAddress;
mapping of uint256 impactById;
uint256 totalShares;
uint256 currentUser;

function shareById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return impactById[arg1]
}

function totalSupply() payable {
    return totalShares
}

function impactEB() payable {
    return impactEBAddress
}

function totalShares() payable {
    return totalShares
}

function currentUser() payable {
    return currentUser
}

function impactById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return impactById[arg1]
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if currentUser > -arg1 - 1:
        revert with 'NH{q', 17
    require ext_code.size(impactEBAddress)
    call impactEBAddress.userCount() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if currentUser + arg1 <= ext_call.return_data[0]:
        idx = currentUser
        while idx < currentUser + arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(impactEBAddress)
            call impactEBAddress.users(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _381 = mem[_379]
            require mem[_379] == mem[_379 + 12 len 20]
            _383 = mem[64]
            mem[mem[64] + 32] = address(mem[_379])
            _385 = mem[64]
            mem[64] = mem[64] + 52
            mem[_383 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_383 + 56] = 64
            mem[_383 + 120] = 3
            mem[_383 + 152] = 'EVM'
            mem[_383 + 88] = 128
            _389 = mem[_385]
            mem[_383 + 184] = mem[_385]
            s = 0
            while s < _389:
                mem[_383 + s + 216] = mem[_385 + s + 32]
                s = s + 32
                continue 
            if ceil32(_389) <= _389:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_383 + 184 len ceil32(_389) + 32]
                mem[_383 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _383 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_383 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_383 + ceil32(return_data.size) + 56] = 64
                    mem[_383 + ceil32(return_data.size) + 120] = 3
                    mem[_383 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_383 + ceil32(return_data.size) + 88] = 128
                    _747 = mem[_385]
                    mem[_383 + ceil32(return_data.size) + 184] = mem[_385]
                    s = 0
                    while s < _747:
                        mem[_383 + ceil32(return_data.size) + s + 216] = mem[_385 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_747) > _747:
                        mem[_383 + ceil32(return_data.size) + _747 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_747) + 32]
                else:
                    mem[_383 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_383 + ceil32(return_data.size) + 56] = 64
                    mem[_383 + ceil32(return_data.size) + 120] = 3
                    mem[_383 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_383 + ceil32(return_data.size) + 88] = 128
                    _748 = mem[_385]
                    mem[_383 + ceil32(return_data.size) + 184] = mem[_385]
                    s = 0
                    while s < _748:
                        mem[_383 + ceil32(return_data.size) + s + 216] = mem[_385 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_748) <= _748:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_748) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_383 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_383 + ceil32(return_data.size) + 56] = 64
                        mem[_383 + ceil32(return_data.size) + 120] = 3
                        mem[_383 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_383 + ceil32(return_data.size) + 88] = 128
                        _1107 = mem[_385]
                        mem[_383 + ceil32(return_data.size) + 184] = mem[_385]
                        s = 0
                        while s < _1107:
                            mem[_383 + ceil32(return_data.size) + s + 216] = mem[_385 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1107) > _1107:
                            mem[_383 + ceil32(return_data.size) + _1107 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_1107) + 32]
                    else:
                        mem[_383 + ceil32(return_data.size) + _748 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_748) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_383 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_383 + ceil32(return_data.size) + 56] = 64
                        mem[_383 + ceil32(return_data.size) + 120] = 3
                        mem[_383 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_383 + ceil32(return_data.size) + 88] = 128
                        _1111 = mem[_385]
                        mem[_383 + ceil32(return_data.size) + 184] = mem[_385]
                        s = 0
                        while s < _1111:
                            mem[_383 + ceil32(return_data.size) + s + 216] = mem[_385 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1111) > _1111:
                            mem[_383 + ceil32(return_data.size) + _1111 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_1111) + 32]
            else:
                mem[_383 + _389 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_383 + 184 len ceil32(_389) + 32]
                mem[_383 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _383 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_383 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_383 + ceil32(return_data.size) + 56] = 64
                    mem[_383 + ceil32(return_data.size) + 120] = 3
                    mem[_383 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_383 + ceil32(return_data.size) + 88] = 128
                    _751 = mem[_385]
                    mem[_383 + ceil32(return_data.size) + 184] = mem[_385]
                    s = 0
                    while s < _751:
                        mem[_383 + ceil32(return_data.size) + s + 216] = mem[_385 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_751) > _751:
                        mem[_383 + ceil32(return_data.size) + _751 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_751) + 32]
                else:
                    mem[_383 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_383 + ceil32(return_data.size) + 56] = 64
                    mem[_383 + ceil32(return_data.size) + 120] = 3
                    mem[_383 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_383 + ceil32(return_data.size) + 88] = 128
                    _752 = mem[_385]
                    mem[_383 + ceil32(return_data.size) + 184] = mem[_385]
                    s = 0
                    while s < _752:
                        mem[_383 + ceil32(return_data.size) + s + 216] = mem[_385 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_752) <= _752:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_752) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_383 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_383 + ceil32(return_data.size) + 56] = 64
                        mem[_383 + ceil32(return_data.size) + 120] = 3
                        mem[_383 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_383 + ceil32(return_data.size) + 88] = 128
                        _1108 = mem[_385]
                        mem[_383 + ceil32(return_data.size) + 184] = mem[_385]
                        s = 0
                        while s < _1108:
                            mem[_383 + ceil32(return_data.size) + s + 216] = mem[_385 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1108) > _1108:
                            mem[_383 + ceil32(return_data.size) + _1108 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_1108) + 32]
                    else:
                        mem[_383 + ceil32(return_data.size) + _752 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_752) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_383 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_383 + ceil32(return_data.size) + 56] = 64
                        mem[_383 + ceil32(return_data.size) + 120] = 3
                        mem[_383 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_383 + ceil32(return_data.size) + 88] = 128
                        _1112 = mem[_385]
                        mem[_383 + ceil32(return_data.size) + 184] = mem[_385]
                        s = 0
                        while s < _1112:
                            mem[_383 + ceil32(return_data.size) + s + 216] = mem[_385 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1112) > _1112:
                            mem[_383 + ceil32(return_data.size) + _1112 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_383 + ceil32(return_data.size) + 184 len ceil32(_1112) + 32]
            mem[_383 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_383 + (2 * ceil32(return_data.size)) + 56] = address(_381)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_381)
            mem[_383 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _383 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
            mem[0] = ext_call.return_data[0]
            mem[32] = 2
            mem[_383 + (4 * ceil32(return_data.size)) + 52] = impactById[ext_call.return_data[0]]
            emit Migrate(impactById[ext_call.return_data[0]], address(_381), ext_call.return_data[0]);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(impactEBAddress)
        call impactEBAddress.0x18160ddd with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_373] == mem[_373]
        totalShares = mem[_373]
        currentUser += arg1
    else:
        require ext_code.size(impactEBAddress)
        call impactEBAddress.userCount() with:
             gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = currentUser
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(impactEBAddress)
            call impactEBAddress.users(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _380 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _382 = mem[_380]
            require mem[_380] == mem[_380 + 12 len 20]
            _384 = mem[64]
            mem[mem[64] + 32] = address(mem[_380])
            _387 = mem[64]
            mem[64] = mem[64] + 52
            mem[_384 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_384 + 56] = 64
            mem[_384 + 120] = 3
            mem[_384 + 152] = 'EVM'
            mem[_384 + 88] = 128
            _390 = mem[_387]
            mem[_384 + 184] = mem[_387]
            s = 0
            while s < _390:
                mem[_384 + s + 216] = mem[_387 + s + 32]
                s = s + 32
                continue 
            if ceil32(_390) <= _390:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_384 + 184 len ceil32(_390) + 32]
                mem[_384 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _384 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_384 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_384 + ceil32(return_data.size) + 56] = 64
                    mem[_384 + ceil32(return_data.size) + 120] = 3
                    mem[_384 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_384 + ceil32(return_data.size) + 88] = 128
                    _749 = mem[_387]
                    mem[_384 + ceil32(return_data.size) + 184] = mem[_387]
                    s = 0
                    while s < _749:
                        mem[_384 + ceil32(return_data.size) + s + 216] = mem[_387 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_749) > _749:
                        mem[_384 + ceil32(return_data.size) + _749 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_749) + 32]
                else:
                    mem[_384 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_384 + ceil32(return_data.size) + 56] = 64
                    mem[_384 + ceil32(return_data.size) + 120] = 3
                    mem[_384 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_384 + ceil32(return_data.size) + 88] = 128
                    _750 = mem[_387]
                    mem[_384 + ceil32(return_data.size) + 184] = mem[_387]
                    s = 0
                    while s < _750:
                        mem[_384 + ceil32(return_data.size) + s + 216] = mem[_387 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_750) <= _750:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_750) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_384 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_384 + ceil32(return_data.size) + 56] = 64
                        mem[_384 + ceil32(return_data.size) + 120] = 3
                        mem[_384 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_384 + ceil32(return_data.size) + 88] = 128
                        _1109 = mem[_387]
                        mem[_384 + ceil32(return_data.size) + 184] = mem[_387]
                        s = 0
                        while s < _1109:
                            mem[_384 + ceil32(return_data.size) + s + 216] = mem[_387 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1109) > _1109:
                            mem[_384 + ceil32(return_data.size) + _1109 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_1109) + 32]
                    else:
                        mem[_384 + ceil32(return_data.size) + _750 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_750) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_384 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_384 + ceil32(return_data.size) + 56] = 64
                        mem[_384 + ceil32(return_data.size) + 120] = 3
                        mem[_384 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_384 + ceil32(return_data.size) + 88] = 128
                        _1113 = mem[_387]
                        mem[_384 + ceil32(return_data.size) + 184] = mem[_387]
                        s = 0
                        while s < _1113:
                            mem[_384 + ceil32(return_data.size) + s + 216] = mem[_387 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1113) > _1113:
                            mem[_384 + ceil32(return_data.size) + _1113 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_1113) + 32]
            else:
                mem[_384 + _390 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_384 + 184 len ceil32(_390) + 32]
                mem[_384 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _384 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_384 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_384 + ceil32(return_data.size) + 56] = 64
                    mem[_384 + ceil32(return_data.size) + 120] = 3
                    mem[_384 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_384 + ceil32(return_data.size) + 88] = 128
                    _753 = mem[_387]
                    mem[_384 + ceil32(return_data.size) + 184] = mem[_387]
                    s = 0
                    while s < _753:
                        mem[_384 + ceil32(return_data.size) + s + 216] = mem[_387 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_753) > _753:
                        mem[_384 + ceil32(return_data.size) + _753 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_753) + 32]
                else:
                    mem[_384 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_384 + ceil32(return_data.size) + 56] = 64
                    mem[_384 + ceil32(return_data.size) + 120] = 3
                    mem[_384 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_384 + ceil32(return_data.size) + 88] = 128
                    _754 = mem[_387]
                    mem[_384 + ceil32(return_data.size) + 184] = mem[_387]
                    s = 0
                    while s < _754:
                        mem[_384 + ceil32(return_data.size) + s + 216] = mem[_387 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_754) <= _754:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_754) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_384 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_384 + ceil32(return_data.size) + 56] = 64
                        mem[_384 + ceil32(return_data.size) + 120] = 3
                        mem[_384 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_384 + ceil32(return_data.size) + 88] = 128
                        _1110 = mem[_387]
                        mem[_384 + ceil32(return_data.size) + 184] = mem[_387]
                        s = 0
                        while s < _1110:
                            mem[_384 + ceil32(return_data.size) + s + 216] = mem[_387 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1110) > _1110:
                            mem[_384 + ceil32(return_data.size) + _1110 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_1110) + 32]
                    else:
                        mem[_384 + ceil32(return_data.size) + _754 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_754) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_384 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_384 + ceil32(return_data.size) + 56] = 64
                        mem[_384 + ceil32(return_data.size) + 120] = 3
                        mem[_384 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_384 + ceil32(return_data.size) + 88] = 128
                        _1114 = mem[_387]
                        mem[_384 + ceil32(return_data.size) + 184] = mem[_387]
                        s = 0
                        while s < _1114:
                            mem[_384 + ceil32(return_data.size) + s + 216] = mem[_387 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1114) > _1114:
                            mem[_384 + ceil32(return_data.size) + _1114 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_384 + ceil32(return_data.size) + 184 len ceil32(_1114) + 32]
            mem[_384 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_384 + (2 * ceil32(return_data.size)) + 56] = address(_382)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_382)
            mem[_384 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _384 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
            mem[0] = ext_call.return_data[0]
            mem[32] = 2
            mem[_384 + (4 * ceil32(return_data.size)) + 52] = impactById[ext_call.return_data[0]]
            emit Migrate(impactById[ext_call.return_data[0]], address(_382), ext_call.return_data[0]);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(impactEBAddress)
        call impactEBAddress.0x18160ddd with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_374] == mem[_374]
        totalShares = mem[_374]
        currentUser = ext_call.return_data[0]
}



}
