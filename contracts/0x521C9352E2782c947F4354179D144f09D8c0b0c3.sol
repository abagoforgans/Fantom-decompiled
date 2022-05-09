contract main {




// =====================  Runtime code  =====================


address balanceKeeperAddress;
address impactEBAddress;
mapping of uint256 impactById;
uint256 totalShares;
uint256 currentUser;
uint256 totalUsers;
mapping of uint256 userIdByIndex;

function shareById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if arg1 >= totalUsers:
        revert with 0, 'EBI'
    return userIdByIndex[arg1]
}

function currentUser() payable {
    return currentUser
}

function impactById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if currentUser > !arg1:
        revert with 0, 17
    require ext_code.size(impactEBAddress)
    call impactEBAddress.userCount() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
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
            _400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _403 = mem[_400]
            require mem[_400] == mem[_400 + 12 len 20]
            _405 = mem[64]
            mem[mem[64] + 32] = address(mem[_400])
            _407 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            mem[_405 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_405 + 56] = 64
            mem[_405 + 120] = 3
            mem[_405 + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
            mem[_405 + 88] = 128
            _409 = mem[_407]
            mem[_405 + 184] = mem[_407]
            s = 0
            while s < _409:
                mem[s + _405 + 216] = mem[s + _407 + 32]
                s = s + 32
                continue 
            if ceil32(_409) <= _409:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + 184 len ceil32(_409) + 32]
                mem[_405 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _405 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_405 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_405 + ceil32(return_data.size) + 56] = 64
                    mem[_405 + ceil32(return_data.size) + 120] = 3
                    mem[_405 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_405 + ceil32(return_data.size) + 88] = 128
                    _787 = mem[_407]
                    mem[_405 + ceil32(return_data.size) + 184] = mem[_407]
                    s = 0
                    while s < _787:
                        mem[s + _405 + ceil32(return_data.size) + 216] = mem[s + _407 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_787) > _787:
                        mem[_405 + ceil32(return_data.size) + _787 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_787) + 32]
                else:
                    mem[_405 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_405 + ceil32(return_data.size) + 56] = 64
                    mem[_405 + ceil32(return_data.size) + 120] = 3
                    mem[_405 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_405 + ceil32(return_data.size) + 88] = 128
                    _788 = mem[_407]
                    mem[_405 + ceil32(return_data.size) + 184] = mem[_407]
                    s = 0
                    while s < _788:
                        mem[s + _405 + ceil32(return_data.size) + 216] = mem[s + _407 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_788) <= _788:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_788) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_405 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_405 + ceil32(return_data.size) + 56] = 64
                        mem[_405 + ceil32(return_data.size) + 120] = 3
                        mem[_405 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_405 + ceil32(return_data.size) + 88] = 128
                        _1164 = mem[_407]
                        mem[_405 + ceil32(return_data.size) + 184] = mem[_407]
                        s = 0
                        while s < _1164:
                            mem[s + _405 + ceil32(return_data.size) + 216] = mem[s + _407 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1164) > _1164:
                            mem[_405 + ceil32(return_data.size) + _1164 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_1164) + 32]
                    else:
                        mem[_405 + ceil32(return_data.size) + _788 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_788) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_405 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_405 + ceil32(return_data.size) + 56] = 64
                        mem[_405 + ceil32(return_data.size) + 120] = 3
                        mem[_405 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_405 + ceil32(return_data.size) + 88] = 128
                        _1177 = mem[_407]
                        mem[_405 + ceil32(return_data.size) + 184] = mem[_407]
                        s = 0
                        while s < _1177:
                            mem[s + _405 + ceil32(return_data.size) + 216] = mem[s + _407 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1177) > _1177:
                            mem[_405 + ceil32(return_data.size) + _1177 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_1177) + 32]
            else:
                mem[_405 + _409 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + 184 len ceil32(_409) + 32]
                mem[_405 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _405 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_405 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_405 + ceil32(return_data.size) + 56] = 64
                    mem[_405 + ceil32(return_data.size) + 120] = 3
                    mem[_405 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_405 + ceil32(return_data.size) + 88] = 128
                    _795 = mem[_407]
                    mem[_405 + ceil32(return_data.size) + 184] = mem[_407]
                    s = 0
                    while s < _795:
                        mem[s + _405 + ceil32(return_data.size) + 216] = mem[s + _407 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_795) > _795:
                        mem[_405 + ceil32(return_data.size) + _795 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_795) + 32]
                else:
                    mem[_405 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_405 + ceil32(return_data.size) + 56] = 64
                    mem[_405 + ceil32(return_data.size) + 120] = 3
                    mem[_405 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_405 + ceil32(return_data.size) + 88] = 128
                    _796 = mem[_407]
                    mem[_405 + ceil32(return_data.size) + 184] = mem[_407]
                    s = 0
                    while s < _796:
                        mem[s + _405 + ceil32(return_data.size) + 216] = mem[s + _407 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_796) <= _796:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_796) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_405 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_405 + ceil32(return_data.size) + 56] = 64
                        mem[_405 + ceil32(return_data.size) + 120] = 3
                        mem[_405 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_405 + ceil32(return_data.size) + 88] = 128
                        _1167 = mem[_407]
                        mem[_405 + ceil32(return_data.size) + 184] = mem[_407]
                        s = 0
                        while s < _1167:
                            mem[s + _405 + ceil32(return_data.size) + 216] = mem[s + _407 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1167) > _1167:
                            mem[_405 + ceil32(return_data.size) + _1167 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_1167) + 32]
                    else:
                        mem[_405 + ceil32(return_data.size) + _796 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_796) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_405 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_405 + ceil32(return_data.size) + 56] = 64
                        mem[_405 + ceil32(return_data.size) + 120] = 3
                        mem[_405 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_405 + ceil32(return_data.size) + 88] = 128
                        _1180 = mem[_407]
                        mem[_405 + ceil32(return_data.size) + 184] = mem[_407]
                        s = 0
                        while s < _1180:
                            mem[s + _405 + ceil32(return_data.size) + 216] = mem[s + _407 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1180) > _1180:
                            mem[_405 + ceil32(return_data.size) + _1180 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_405 + ceil32(return_data.size) + 184 len ceil32(_1180) + 32]
            mem[_405 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_405 + (2 * ceil32(return_data.size)) + 56] = address(_403)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_403)
            mem[_405 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _405 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
            userIdByIndex[stor5] = ext_call.return_data[0]
            if totalUsers == -1:
                revert with 0, 17
            totalUsers++
            mem[0] = ext_call.return_data[0]
            mem[32] = 2
            mem[_405 + (4 * ceil32(return_data.size)) + 52] = impactById[ext_call.return_data[0]]
            emit Migrate(impactById[ext_call.return_data[0]], address(_403), ext_call.return_data[0]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(impactEBAddress)
        call impactEBAddress.0x18160ddd with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _395 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        totalShares = mem[_395]
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
            _402 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _404 = mem[_402]
            require mem[_402] == mem[_402 + 12 len 20]
            _406 = mem[64]
            mem[mem[64] + 32] = address(mem[_402])
            _408 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            mem[_406 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_406 + 56] = 64
            mem[_406 + 120] = 3
            mem[_406 + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
            mem[_406 + 88] = 128
            _410 = mem[_408]
            mem[_406 + 184] = mem[_408]
            s = 0
            while s < _410:
                mem[s + _406 + 216] = mem[s + _408 + 32]
                s = s + 32
                continue 
            if ceil32(_410) <= _410:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + 184 len ceil32(_410) + 32]
                mem[_406 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _406 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_406 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_406 + ceil32(return_data.size) + 56] = 64
                    mem[_406 + ceil32(return_data.size) + 120] = 3
                    mem[_406 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_406 + ceil32(return_data.size) + 88] = 128
                    _791 = mem[_408]
                    mem[_406 + ceil32(return_data.size) + 184] = mem[_408]
                    s = 0
                    while s < _791:
                        mem[s + _406 + ceil32(return_data.size) + 216] = mem[s + _408 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_791) > _791:
                        mem[_406 + ceil32(return_data.size) + _791 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_791) + 32]
                else:
                    mem[_406 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_406 + ceil32(return_data.size) + 56] = 64
                    mem[_406 + ceil32(return_data.size) + 120] = 3
                    mem[_406 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_406 + ceil32(return_data.size) + 88] = 128
                    _792 = mem[_408]
                    mem[_406 + ceil32(return_data.size) + 184] = mem[_408]
                    s = 0
                    while s < _792:
                        mem[s + _406 + ceil32(return_data.size) + 216] = mem[s + _408 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_792) <= _792:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_792) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_406 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_406 + ceil32(return_data.size) + 56] = 64
                        mem[_406 + ceil32(return_data.size) + 120] = 3
                        mem[_406 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_406 + ceil32(return_data.size) + 88] = 128
                        _1170 = mem[_408]
                        mem[_406 + ceil32(return_data.size) + 184] = mem[_408]
                        s = 0
                        while s < _1170:
                            mem[s + _406 + ceil32(return_data.size) + 216] = mem[s + _408 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1170) > _1170:
                            mem[_406 + ceil32(return_data.size) + _1170 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_1170) + 32]
                    else:
                        mem[_406 + ceil32(return_data.size) + _792 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_792) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_406 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_406 + ceil32(return_data.size) + 56] = 64
                        mem[_406 + ceil32(return_data.size) + 120] = 3
                        mem[_406 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_406 + ceil32(return_data.size) + 88] = 128
                        _1183 = mem[_408]
                        mem[_406 + ceil32(return_data.size) + 184] = mem[_408]
                        s = 0
                        while s < _1183:
                            mem[s + _406 + ceil32(return_data.size) + 216] = mem[s + _408 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1183) > _1183:
                            mem[_406 + ceil32(return_data.size) + _1183 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_1183) + 32]
            else:
                mem[_406 + _410 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + 184 len ceil32(_410) + 32]
                mem[_406 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _406 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_406 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_406 + ceil32(return_data.size) + 56] = 64
                    mem[_406 + ceil32(return_data.size) + 120] = 3
                    mem[_406 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_406 + ceil32(return_data.size) + 88] = 128
                    _797 = mem[_408]
                    mem[_406 + ceil32(return_data.size) + 184] = mem[_408]
                    s = 0
                    while s < _797:
                        mem[s + _406 + ceil32(return_data.size) + 216] = mem[s + _408 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_797) > _797:
                        mem[_406 + ceil32(return_data.size) + _797 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_797) + 32]
                else:
                    mem[_406 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_406 + ceil32(return_data.size) + 56] = 64
                    mem[_406 + ceil32(return_data.size) + 120] = 3
                    mem[_406 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_406 + ceil32(return_data.size) + 88] = 128
                    _798 = mem[_408]
                    mem[_406 + ceil32(return_data.size) + 184] = mem[_408]
                    s = 0
                    while s < _798:
                        mem[s + _406 + ceil32(return_data.size) + 216] = mem[s + _408 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_798) <= _798:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_798) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_406 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_406 + ceil32(return_data.size) + 56] = 64
                        mem[_406 + ceil32(return_data.size) + 120] = 3
                        mem[_406 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_406 + ceil32(return_data.size) + 88] = 128
                        _1173 = mem[_408]
                        mem[_406 + ceil32(return_data.size) + 184] = mem[_408]
                        s = 0
                        while s < _1173:
                            mem[s + _406 + ceil32(return_data.size) + 216] = mem[s + _408 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1173) > _1173:
                            mem[_406 + ceil32(return_data.size) + _1173 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_1173) + 32]
                    else:
                        mem[_406 + ceil32(return_data.size) + _798 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_798) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_406 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_406 + ceil32(return_data.size) + 56] = 64
                        mem[_406 + ceil32(return_data.size) + 120] = 3
                        mem[_406 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_406 + ceil32(return_data.size) + 88] = 128
                        _1186 = mem[_408]
                        mem[_406 + ceil32(return_data.size) + 184] = mem[_408]
                        s = 0
                        while s < _1186:
                            mem[s + _406 + ceil32(return_data.size) + 216] = mem[s + _408 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1186) > _1186:
                            mem[_406 + ceil32(return_data.size) + _1186 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_406 + ceil32(return_data.size) + 184 len ceil32(_1186) + 32]
            mem[_406 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_406 + (2 * ceil32(return_data.size)) + 56] = address(_404)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_404)
            mem[_406 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _406 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
            userIdByIndex[stor5] = ext_call.return_data[0]
            if totalUsers == -1:
                revert with 0, 17
            totalUsers++
            mem[0] = ext_call.return_data[0]
            mem[32] = 2
            mem[_406 + (4 * ceil32(return_data.size)) + 52] = impactById[ext_call.return_data[0]]
            emit Migrate(impactById[ext_call.return_data[0]], address(_404), ext_call.return_data[0]);
            if idx == -1:
                revert with 0, 17
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
        totalShares = mem[_397]
        currentUser = ext_call.return_data[0]
}



}
