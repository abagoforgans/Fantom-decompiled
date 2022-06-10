contract main {




// =====================  Runtime code  =====================


address owner;
address balanceKeeperAddress;
address impactEBAddress;
mapping of uint256 impactById;
uint256 totalShares;
uint256 currentUser;
uint256 totalUsers;
mapping of uint256 userIdByIndex;

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

function userIdByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalUsers:
        revert with 0, 'EBI'
    return userIdByIndex[arg1]
}

function owner() payable {
    return owner
}

function currentUser() payable {
    return currentUser
}

function impactById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return impactById[arg1]
}

function totalUsers() payable {
    return totalUsers
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function transfer(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    if impactById[arg1] < impactById[arg1]:
        revert with 'NH{q', 17
    if impactById[arg2] > -impactById[arg1] - 1:
        revert with 'NH{q', 17
    emit Transfer(arg1, arg2, impactById[arg1]);
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
            _403 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _405 = mem[_403]
            require mem[_403] == mem[_403 + 12 len 20]
            _407 = mem[64]
            mem[mem[64] + 32] = address(mem[_403])
            _409 = mem[64]
            mem[64] = mem[64] + 52
            mem[_407 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_407 + 56] = 64
            mem[_407 + 120] = 3
            mem[_407 + 152] = 'EVM'
            mem[_407 + 88] = 128
            _413 = mem[_409]
            mem[_407 + 184] = mem[_409]
            s = 0
            while s < _413:
                mem[_407 + s + 216] = mem[_409 + s + 32]
                s = s + 32
                continue 
            if ceil32(_413) <= _413:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_407 + 184 len ceil32(_413) + 32]
                mem[_407 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _407 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_407 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_407 + ceil32(return_data.size) + 56] = 64
                    mem[_407 + ceil32(return_data.size) + 120] = 3
                    mem[_407 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_407 + ceil32(return_data.size) + 88] = 128
                    _795 = mem[_409]
                    mem[_407 + ceil32(return_data.size) + 184] = mem[_409]
                    s = 0
                    while s < _795:
                        mem[_407 + ceil32(return_data.size) + s + 216] = mem[_409 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_795) > _795:
                        mem[_407 + ceil32(return_data.size) + _795 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_795) + 32]
                else:
                    mem[_407 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_407 + ceil32(return_data.size) + 56] = 64
                    mem[_407 + ceil32(return_data.size) + 120] = 3
                    mem[_407 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_407 + ceil32(return_data.size) + 88] = 128
                    _796 = mem[_409]
                    mem[_407 + ceil32(return_data.size) + 184] = mem[_409]
                    s = 0
                    while s < _796:
                        mem[_407 + ceil32(return_data.size) + s + 216] = mem[_409 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_796) <= _796:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_796) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_407 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_407 + ceil32(return_data.size) + 56] = 64
                        mem[_407 + ceil32(return_data.size) + 120] = 3
                        mem[_407 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_407 + ceil32(return_data.size) + 88] = 128
                        _1179 = mem[_409]
                        mem[_407 + ceil32(return_data.size) + 184] = mem[_409]
                        s = 0
                        while s < _1179:
                            mem[_407 + ceil32(return_data.size) + s + 216] = mem[_409 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1179) > _1179:
                            mem[_407 + ceil32(return_data.size) + _1179 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_1179) + 32]
                    else:
                        mem[_407 + ceil32(return_data.size) + _796 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_796) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_407 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_407 + ceil32(return_data.size) + 56] = 64
                        mem[_407 + ceil32(return_data.size) + 120] = 3
                        mem[_407 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_407 + ceil32(return_data.size) + 88] = 128
                        _1183 = mem[_409]
                        mem[_407 + ceil32(return_data.size) + 184] = mem[_409]
                        s = 0
                        while s < _1183:
                            mem[_407 + ceil32(return_data.size) + s + 216] = mem[_409 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1183) > _1183:
                            mem[_407 + ceil32(return_data.size) + _1183 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_1183) + 32]
            else:
                mem[_407 + _413 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_407 + 184 len ceil32(_413) + 32]
                mem[_407 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _407 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_407 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_407 + ceil32(return_data.size) + 56] = 64
                    mem[_407 + ceil32(return_data.size) + 120] = 3
                    mem[_407 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_407 + ceil32(return_data.size) + 88] = 128
                    _799 = mem[_409]
                    mem[_407 + ceil32(return_data.size) + 184] = mem[_409]
                    s = 0
                    while s < _799:
                        mem[_407 + ceil32(return_data.size) + s + 216] = mem[_409 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_799) > _799:
                        mem[_407 + ceil32(return_data.size) + _799 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_799) + 32]
                else:
                    mem[_407 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_407 + ceil32(return_data.size) + 56] = 64
                    mem[_407 + ceil32(return_data.size) + 120] = 3
                    mem[_407 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_407 + ceil32(return_data.size) + 88] = 128
                    _800 = mem[_409]
                    mem[_407 + ceil32(return_data.size) + 184] = mem[_409]
                    s = 0
                    while s < _800:
                        mem[_407 + ceil32(return_data.size) + s + 216] = mem[_409 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_800) <= _800:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_800) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_407 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_407 + ceil32(return_data.size) + 56] = 64
                        mem[_407 + ceil32(return_data.size) + 120] = 3
                        mem[_407 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_407 + ceil32(return_data.size) + 88] = 128
                        _1180 = mem[_409]
                        mem[_407 + ceil32(return_data.size) + 184] = mem[_409]
                        s = 0
                        while s < _1180:
                            mem[_407 + ceil32(return_data.size) + s + 216] = mem[_409 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1180) > _1180:
                            mem[_407 + ceil32(return_data.size) + _1180 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_1180) + 32]
                    else:
                        mem[_407 + ceil32(return_data.size) + _800 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_800) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_407 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_407 + ceil32(return_data.size) + 56] = 64
                        mem[_407 + ceil32(return_data.size) + 120] = 3
                        mem[_407 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_407 + ceil32(return_data.size) + 88] = 128
                        _1184 = mem[_409]
                        mem[_407 + ceil32(return_data.size) + 184] = mem[_409]
                        s = 0
                        while s < _1184:
                            mem[_407 + ceil32(return_data.size) + s + 216] = mem[_409 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1184) > _1184:
                            mem[_407 + ceil32(return_data.size) + _1184 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_407 + ceil32(return_data.size) + 184 len ceil32(_1184) + 32]
            mem[_407 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_407 + (2 * ceil32(return_data.size)) + 56] = address(_405)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_405)
            mem[_407 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _407 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
            userIdByIndex[stor6] = ext_call.return_data[0]
            if totalUsers == -1:
                revert with 'NH{q', 17
            totalUsers++
            mem[0] = ext_call.return_data[0]
            mem[32] = 3
            mem[_407 + (4 * ceil32(return_data.size)) + 52] = impactById[ext_call.return_data[0]]
            emit Migrate(impactById[ext_call.return_data[0]], address(_405), ext_call.return_data[0]);
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
        _397 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_397] == mem[_397]
        totalShares = mem[_397]
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
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _406 = mem[_404]
            require mem[_404] == mem[_404 + 12 len 20]
            _408 = mem[64]
            mem[mem[64] + 32] = address(mem[_404])
            _411 = mem[64]
            mem[64] = mem[64] + 52
            mem[_408 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_408 + 56] = 64
            mem[_408 + 120] = 3
            mem[_408 + 152] = 'EVM'
            mem[_408 + 88] = 128
            _414 = mem[_411]
            mem[_408 + 184] = mem[_411]
            s = 0
            while s < _414:
                mem[_408 + s + 216] = mem[_411 + s + 32]
                s = s + 32
                continue 
            if ceil32(_414) <= _414:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_408 + 184 len ceil32(_414) + 32]
                mem[_408 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _408 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_408 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_408 + ceil32(return_data.size) + 56] = 64
                    mem[_408 + ceil32(return_data.size) + 120] = 3
                    mem[_408 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_408 + ceil32(return_data.size) + 88] = 128
                    _797 = mem[_411]
                    mem[_408 + ceil32(return_data.size) + 184] = mem[_411]
                    s = 0
                    while s < _797:
                        mem[_408 + ceil32(return_data.size) + s + 216] = mem[_411 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_797) > _797:
                        mem[_408 + ceil32(return_data.size) + _797 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_797) + 32]
                else:
                    mem[_408 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_408 + ceil32(return_data.size) + 56] = 64
                    mem[_408 + ceil32(return_data.size) + 120] = 3
                    mem[_408 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_408 + ceil32(return_data.size) + 88] = 128
                    _798 = mem[_411]
                    mem[_408 + ceil32(return_data.size) + 184] = mem[_411]
                    s = 0
                    while s < _798:
                        mem[_408 + ceil32(return_data.size) + s + 216] = mem[_411 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_798) <= _798:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_798) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_408 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_408 + ceil32(return_data.size) + 56] = 64
                        mem[_408 + ceil32(return_data.size) + 120] = 3
                        mem[_408 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_408 + ceil32(return_data.size) + 88] = 128
                        _1181 = mem[_411]
                        mem[_408 + ceil32(return_data.size) + 184] = mem[_411]
                        s = 0
                        while s < _1181:
                            mem[_408 + ceil32(return_data.size) + s + 216] = mem[_411 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1181) > _1181:
                            mem[_408 + ceil32(return_data.size) + _1181 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_1181) + 32]
                    else:
                        mem[_408 + ceil32(return_data.size) + _798 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_798) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_408 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_408 + ceil32(return_data.size) + 56] = 64
                        mem[_408 + ceil32(return_data.size) + 120] = 3
                        mem[_408 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_408 + ceil32(return_data.size) + 88] = 128
                        _1185 = mem[_411]
                        mem[_408 + ceil32(return_data.size) + 184] = mem[_411]
                        s = 0
                        while s < _1185:
                            mem[_408 + ceil32(return_data.size) + s + 216] = mem[_411 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1185) > _1185:
                            mem[_408 + ceil32(return_data.size) + _1185 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_1185) + 32]
            else:
                mem[_408 + _414 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 'EVM', mem[_408 + 184 len ceil32(_414) + 32]
                mem[_408 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _408 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_408 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_408 + ceil32(return_data.size) + 56] = 64
                    mem[_408 + ceil32(return_data.size) + 120] = 3
                    mem[_408 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_408 + ceil32(return_data.size) + 88] = 128
                    _801 = mem[_411]
                    mem[_408 + ceil32(return_data.size) + 184] = mem[_411]
                    s = 0
                    while s < _801:
                        mem[_408 + ceil32(return_data.size) + s + 216] = mem[_411 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_801) > _801:
                        mem[_408 + ceil32(return_data.size) + _801 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_801) + 32]
                else:
                    mem[_408 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_408 + ceil32(return_data.size) + 56] = 64
                    mem[_408 + ceil32(return_data.size) + 120] = 3
                    mem[_408 + ceil32(return_data.size) + 152] = 'EVM'
                    mem[_408 + ceil32(return_data.size) + 88] = 128
                    _802 = mem[_411]
                    mem[_408 + ceil32(return_data.size) + 184] = mem[_411]
                    s = 0
                    while s < _802:
                        mem[_408 + ceil32(return_data.size) + s + 216] = mem[_411 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_802) <= _802:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_802) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_408 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_408 + ceil32(return_data.size) + 56] = 64
                        mem[_408 + ceil32(return_data.size) + 120] = 3
                        mem[_408 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_408 + ceil32(return_data.size) + 88] = 128
                        _1182 = mem[_411]
                        mem[_408 + ceil32(return_data.size) + 184] = mem[_411]
                        s = 0
                        while s < _1182:
                            mem[_408 + ceil32(return_data.size) + s + 216] = mem[_411 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1182) > _1182:
                            mem[_408 + ceil32(return_data.size) + _1182 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_1182) + 32]
                    else:
                        mem[_408 + ceil32(return_data.size) + _802 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_802) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_408 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_408 + ceil32(return_data.size) + 56] = 64
                        mem[_408 + ceil32(return_data.size) + 120] = 3
                        mem[_408 + ceil32(return_data.size) + 152] = 'EVM'
                        mem[_408 + ceil32(return_data.size) + 88] = 128
                        _1186 = mem[_411]
                        mem[_408 + ceil32(return_data.size) + 184] = mem[_411]
                        s = 0
                        while s < _1186:
                            mem[_408 + ceil32(return_data.size) + s + 216] = mem[_411 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1186) > _1186:
                            mem[_408 + ceil32(return_data.size) + _1186 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 'EVM', mem[_408 + ceil32(return_data.size) + 184 len ceil32(_1186) + 32]
            mem[_408 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_408 + (2 * ceil32(return_data.size)) + 56] = address(_406)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_406)
            mem[_408 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _408 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
            userIdByIndex[stor6] = ext_call.return_data[0]
            if totalUsers == -1:
                revert with 'NH{q', 17
            totalUsers++
            mem[0] = ext_call.return_data[0]
            mem[32] = 3
            mem[_408 + (4 * ceil32(return_data.size)) + 52] = impactById[ext_call.return_data[0]]
            emit Migrate(impactById[ext_call.return_data[0]], address(_406), ext_call.return_data[0]);
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
        _398 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_398] == mem[_398]
        totalShares = mem[_398]
        currentUser = ext_call.return_data[0]
}



}
