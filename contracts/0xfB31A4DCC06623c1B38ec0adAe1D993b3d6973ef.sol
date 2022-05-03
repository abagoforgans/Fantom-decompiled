contract main {




// =====================  Runtime code  =====================


mapping of uint256 impactById;
uint256 totalShares;
uint256 lastUser;
address balanceKeeperAddress;
address impactEBAddress;

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

function lastUser() payable {
    return lastUser
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
    if lastUser > -arg1 - 1:
        revert with 'NH{q', 17
    require ext_code.size(balanceKeeperAddress)
    call balanceKeeperAddress.totalUsers() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if lastUser + arg1 <= ext_call.return_data[0]:
        idx = lastUser
        while idx < lastUser + arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(impactEBAddress)
            call impactEBAddress.users(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _309 = mem[_307]
            require mem[_307] == mem[_307 + 12 len 20]
            _311 = mem[64]
            mem[mem[64] + 32] = address(mem[_307])
            _313 = mem[64]
            mem[64] = mem[64] + 52
            mem[_311 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_311 + 56] = 64
            mem[_311 + 120] = 3
            mem[_311 + 152] = 'EVM'
            mem[_311 + 88] = 128
            _317 = mem[_313]
            mem[_311 + 184] = mem[_313]
            s = 0
            while s < _317:
                mem[_311 + s + 216] = mem[_313 + s + 32]
                s = s + 32
                continue 
            if ceil32(_317) <= _317:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_311 + 184 len ceil32(_317) + 32]
                mem[_311 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _311 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_311 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_311 + ceil32(return_data.size) + 56] = 64
                    mem[_311 + ceil32(return_data.size) + 120] = 3
                    mem[_311 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_311 + ceil32(return_data.size) + 88] = 128
                    _603 = mem[_313]
                    mem[_311 + ceil32(return_data.size) + 184] = mem[_313]
                    s = 0
                    while s < _603:
                        mem[_311 + ceil32(return_data.size) + s + 216] = mem[_313 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_603) > _603:
                        mem[_311 + ceil32(return_data.size) + _603 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_603) + 32]
                else:
                    mem[_311 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_311 + ceil32(return_data.size) + 56] = 64
                    mem[_311 + ceil32(return_data.size) + 120] = 3
                    mem[_311 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_311 + ceil32(return_data.size) + 88] = 128
                    _604 = mem[_313]
                    mem[_311 + ceil32(return_data.size) + 184] = mem[_313]
                    s = 0
                    while s < _604:
                        mem[_311 + ceil32(return_data.size) + s + 216] = mem[_313 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_604) <= _604:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_604) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_311 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_311 + ceil32(return_data.size) + 56] = 64
                        mem[_311 + ceil32(return_data.size) + 120] = 3
                        mem[_311 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_311 + ceil32(return_data.size) + 88] = 128
                        _891 = mem[_313]
                        mem[_311 + ceil32(return_data.size) + 184] = mem[_313]
                        s = 0
                        while s < _891:
                            mem[_311 + ceil32(return_data.size) + s + 216] = mem[_313 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_891) > _891:
                            mem[_311 + ceil32(return_data.size) + _891 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_891) + 32]
                    else:
                        mem[_311 + ceil32(return_data.size) + _604 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_604) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_311 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_311 + ceil32(return_data.size) + 56] = 64
                        mem[_311 + ceil32(return_data.size) + 120] = 3
                        mem[_311 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_311 + ceil32(return_data.size) + 88] = 128
                        _895 = mem[_313]
                        mem[_311 + ceil32(return_data.size) + 184] = mem[_313]
                        s = 0
                        while s < _895:
                            mem[_311 + ceil32(return_data.size) + s + 216] = mem[_313 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_895) > _895:
                            mem[_311 + ceil32(return_data.size) + _895 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_895) + 32]
            else:
                mem[_311 + _317 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_311 + 184 len ceil32(_317) + 32]
                mem[_311 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _311 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_311 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_311 + ceil32(return_data.size) + 56] = 64
                    mem[_311 + ceil32(return_data.size) + 120] = 3
                    mem[_311 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_311 + ceil32(return_data.size) + 88] = 128
                    _607 = mem[_313]
                    mem[_311 + ceil32(return_data.size) + 184] = mem[_313]
                    s = 0
                    while s < _607:
                        mem[_311 + ceil32(return_data.size) + s + 216] = mem[_313 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_607) > _607:
                        mem[_311 + ceil32(return_data.size) + _607 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_607) + 32]
                else:
                    mem[_311 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_311 + ceil32(return_data.size) + 56] = 64
                    mem[_311 + ceil32(return_data.size) + 120] = 3
                    mem[_311 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_311 + ceil32(return_data.size) + 88] = 128
                    _608 = mem[_313]
                    mem[_311 + ceil32(return_data.size) + 184] = mem[_313]
                    s = 0
                    while s < _608:
                        mem[_311 + ceil32(return_data.size) + s + 216] = mem[_313 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_608) <= _608:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_608) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_311 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_311 + ceil32(return_data.size) + 56] = 64
                        mem[_311 + ceil32(return_data.size) + 120] = 3
                        mem[_311 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_311 + ceil32(return_data.size) + 88] = 128
                        _892 = mem[_313]
                        mem[_311 + ceil32(return_data.size) + 184] = mem[_313]
                        s = 0
                        while s < _892:
                            mem[_311 + ceil32(return_data.size) + s + 216] = mem[_313 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_892) > _892:
                            mem[_311 + ceil32(return_data.size) + _892 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_892) + 32]
                    else:
                        mem[_311 + ceil32(return_data.size) + _608 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_608) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_311 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_311 + ceil32(return_data.size) + 56] = 64
                        mem[_311 + ceil32(return_data.size) + 120] = 3
                        mem[_311 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_311 + ceil32(return_data.size) + 88] = 128
                        _896 = mem[_313]
                        mem[_311 + ceil32(return_data.size) + 184] = mem[_313]
                        s = 0
                        while s < _896:
                            mem[_311 + ceil32(return_data.size) + s + 216] = mem[_313 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_896) > _896:
                            mem[_311 + ceil32(return_data.size) + _896 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_311 + ceil32(return_data.size) + 184 len ceil32(_896) + 32]
            mem[_311 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_311 + (2 * ceil32(return_data.size)) + 56] = address(_309)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_309)
            mem[_311 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _311 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = ext_call.return_data[0]
            mem[32] = 0
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
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
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_301] == mem[_301]
        totalShares = mem[_301]
        lastUser += arg1
    else:
        require ext_code.size(balanceKeeperAddress)
        call balanceKeeperAddress.totalUsers() with:
             gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = lastUser
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(impactEBAddress)
            call impactEBAddress.users(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _308 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _310 = mem[_308]
            require mem[_308] == mem[_308 + 12 len 20]
            _312 = mem[64]
            mem[mem[64] + 32] = address(mem[_308])
            _315 = mem[64]
            mem[64] = mem[64] + 52
            mem[_312 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_312 + 56] = 64
            mem[_312 + 120] = 3
            mem[_312 + 152] = 'EVM'
            mem[_312 + 88] = 128
            _318 = mem[_315]
            mem[_312 + 184] = mem[_315]
            s = 0
            while s < _318:
                mem[_312 + s + 216] = mem[_315 + s + 32]
                s = s + 32
                continue 
            if ceil32(_318) <= _318:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_312 + 184 len ceil32(_318) + 32]
                mem[_312 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _312 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_312 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_312 + ceil32(return_data.size) + 56] = 64
                    mem[_312 + ceil32(return_data.size) + 120] = 3
                    mem[_312 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_312 + ceil32(return_data.size) + 88] = 128
                    _605 = mem[_315]
                    mem[_312 + ceil32(return_data.size) + 184] = mem[_315]
                    s = 0
                    while s < _605:
                        mem[_312 + ceil32(return_data.size) + s + 216] = mem[_315 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_605) > _605:
                        mem[_312 + ceil32(return_data.size) + _605 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_605) + 32]
                else:
                    mem[_312 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_312 + ceil32(return_data.size) + 56] = 64
                    mem[_312 + ceil32(return_data.size) + 120] = 3
                    mem[_312 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_312 + ceil32(return_data.size) + 88] = 128
                    _606 = mem[_315]
                    mem[_312 + ceil32(return_data.size) + 184] = mem[_315]
                    s = 0
                    while s < _606:
                        mem[_312 + ceil32(return_data.size) + s + 216] = mem[_315 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_606) <= _606:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_606) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_312 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_312 + ceil32(return_data.size) + 56] = 64
                        mem[_312 + ceil32(return_data.size) + 120] = 3
                        mem[_312 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_312 + ceil32(return_data.size) + 88] = 128
                        _893 = mem[_315]
                        mem[_312 + ceil32(return_data.size) + 184] = mem[_315]
                        s = 0
                        while s < _893:
                            mem[_312 + ceil32(return_data.size) + s + 216] = mem[_315 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_893) > _893:
                            mem[_312 + ceil32(return_data.size) + _893 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_893) + 32]
                    else:
                        mem[_312 + ceil32(return_data.size) + _606 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_606) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_312 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_312 + ceil32(return_data.size) + 56] = 64
                        mem[_312 + ceil32(return_data.size) + 120] = 3
                        mem[_312 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_312 + ceil32(return_data.size) + 88] = 128
                        _897 = mem[_315]
                        mem[_312 + ceil32(return_data.size) + 184] = mem[_315]
                        s = 0
                        while s < _897:
                            mem[_312 + ceil32(return_data.size) + s + 216] = mem[_315 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_897) > _897:
                            mem[_312 + ceil32(return_data.size) + _897 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_897) + 32]
            else:
                mem[_312 + _318 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_312 + 184 len ceil32(_318) + 32]
                mem[_312 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _312 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_312 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_312 + ceil32(return_data.size) + 56] = 64
                    mem[_312 + ceil32(return_data.size) + 120] = 3
                    mem[_312 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_312 + ceil32(return_data.size) + 88] = 128
                    _609 = mem[_315]
                    mem[_312 + ceil32(return_data.size) + 184] = mem[_315]
                    s = 0
                    while s < _609:
                        mem[_312 + ceil32(return_data.size) + s + 216] = mem[_315 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_609) > _609:
                        mem[_312 + ceil32(return_data.size) + _609 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_609) + 32]
                else:
                    mem[_312 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_312 + ceil32(return_data.size) + 56] = 64
                    mem[_312 + ceil32(return_data.size) + 120] = 3
                    mem[_312 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_312 + ceil32(return_data.size) + 88] = 128
                    _610 = mem[_315]
                    mem[_312 + ceil32(return_data.size) + 184] = mem[_315]
                    s = 0
                    while s < _610:
                        mem[_312 + ceil32(return_data.size) + s + 216] = mem[_315 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_610) <= _610:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_610) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_312 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_312 + ceil32(return_data.size) + 56] = 64
                        mem[_312 + ceil32(return_data.size) + 120] = 3
                        mem[_312 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_312 + ceil32(return_data.size) + 88] = 128
                        _894 = mem[_315]
                        mem[_312 + ceil32(return_data.size) + 184] = mem[_315]
                        s = 0
                        while s < _894:
                            mem[_312 + ceil32(return_data.size) + s + 216] = mem[_315 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_894) > _894:
                            mem[_312 + ceil32(return_data.size) + _894 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_894) + 32]
                    else:
                        mem[_312 + ceil32(return_data.size) + _610 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_610) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_312 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_312 + ceil32(return_data.size) + 56] = 64
                        mem[_312 + ceil32(return_data.size) + 120] = 3
                        mem[_312 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_312 + ceil32(return_data.size) + 88] = 128
                        _898 = mem[_315]
                        mem[_312 + ceil32(return_data.size) + 184] = mem[_315]
                        s = 0
                        while s < _898:
                            mem[_312 + ceil32(return_data.size) + s + 216] = mem[_315 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_898) > _898:
                            mem[_312 + ceil32(return_data.size) + _898 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_312 + ceil32(return_data.size) + 184 len ceil32(_898) + 32]
            mem[_312 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_312 + (2 * ceil32(return_data.size)) + 56] = address(_310)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_310)
            mem[_312 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _312 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[0] = ext_call.return_data[0]
            mem[32] = 0
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
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
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_302] == mem[_302]
        totalShares = mem[_302]
        lastUser = ext_call.return_data[0]
}



}
