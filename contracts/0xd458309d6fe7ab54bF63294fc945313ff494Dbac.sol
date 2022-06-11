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
mapping of uint8 stor8;

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

function owner() payable {
    return owner
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

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'ACW'
    require ext_code.size(balanceKeeperAddress)
    staticcall balanceKeeperAddress.isKnownUser(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'S1'
    if impactById[arg1] < arg3:
        revert with 0, 17
    if impactById[arg2] > !arg3:
        revert with 0, 17
    if not stor8[arg2]:
        userIdByIndex[stor6] = arg2
        if totalUsers == -1:
            revert with 0, 17
        totalUsers++
        stor8[arg2] = 1
    emit Transfer(arg1, arg2, arg3);
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
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _427 = mem[_424]
            require mem[_424] == mem[_424 + 12 len 20]
            _429 = mem[64]
            mem[mem[64] + 32] = address(mem[_424])
            _431 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            mem[_429 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_429 + 56] = 64
            mem[_429 + 120] = 3
            mem[_429 + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
            mem[_429 + 88] = 128
            _433 = mem[_431]
            mem[_429 + 184] = mem[_431]
            s = 0
            while s < _433:
                mem[s + _429 + 216] = mem[s + _431 + 32]
                s = s + 32
                continue 
            if ceil32(_433) <= _433:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + 184 len ceil32(_433) + 32]
                mem[_429 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _429 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_429 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 56] = 64
                    mem[_429 + ceil32(return_data.size) + 120] = 3
                    mem[_429 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 88] = 128
                    _835 = mem[_431]
                    mem[_429 + ceil32(return_data.size) + 184] = mem[_431]
                    s = 0
                    while s < _835:
                        mem[s + _429 + ceil32(return_data.size) + 216] = mem[s + _431 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_835) > _835:
                        mem[_429 + ceil32(return_data.size) + _835 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_835) + 32]
                else:
                    mem[_429 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 56] = 64
                    mem[_429 + ceil32(return_data.size) + 120] = 3
                    mem[_429 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 88] = 128
                    _836 = mem[_431]
                    mem[_429 + ceil32(return_data.size) + 184] = mem[_431]
                    s = 0
                    while s < _836:
                        mem[s + _429 + ceil32(return_data.size) + 216] = mem[s + _431 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_836) <= _836:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_836) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_429 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_429 + ceil32(return_data.size) + 56] = 64
                        mem[_429 + ceil32(return_data.size) + 120] = 3
                        mem[_429 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_429 + ceil32(return_data.size) + 88] = 128
                        _1236 = mem[_431]
                        mem[_429 + ceil32(return_data.size) + 184] = mem[_431]
                        s = 0
                        while s < _1236:
                            mem[s + _429 + ceil32(return_data.size) + 216] = mem[s + _431 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1236) > _1236:
                            mem[_429 + ceil32(return_data.size) + _1236 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_1236) + 32]
                    else:
                        mem[_429 + ceil32(return_data.size) + _836 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_836) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_429 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_429 + ceil32(return_data.size) + 56] = 64
                        mem[_429 + ceil32(return_data.size) + 120] = 3
                        mem[_429 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_429 + ceil32(return_data.size) + 88] = 128
                        _1249 = mem[_431]
                        mem[_429 + ceil32(return_data.size) + 184] = mem[_431]
                        s = 0
                        while s < _1249:
                            mem[s + _429 + ceil32(return_data.size) + 216] = mem[s + _431 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1249) > _1249:
                            mem[_429 + ceil32(return_data.size) + _1249 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_1249) + 32]
            else:
                mem[_429 + _433 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + 184 len ceil32(_433) + 32]
                mem[_429 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _429 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_429 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 56] = 64
                    mem[_429 + ceil32(return_data.size) + 120] = 3
                    mem[_429 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 88] = 128
                    _843 = mem[_431]
                    mem[_429 + ceil32(return_data.size) + 184] = mem[_431]
                    s = 0
                    while s < _843:
                        mem[s + _429 + ceil32(return_data.size) + 216] = mem[s + _431 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_843) > _843:
                        mem[_429 + ceil32(return_data.size) + _843 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_843) + 32]
                else:
                    mem[_429 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 56] = 64
                    mem[_429 + ceil32(return_data.size) + 120] = 3
                    mem[_429 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 88] = 128
                    _844 = mem[_431]
                    mem[_429 + ceil32(return_data.size) + 184] = mem[_431]
                    s = 0
                    while s < _844:
                        mem[s + _429 + ceil32(return_data.size) + 216] = mem[s + _431 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_844) <= _844:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_844) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_429 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_429 + ceil32(return_data.size) + 56] = 64
                        mem[_429 + ceil32(return_data.size) + 120] = 3
                        mem[_429 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_429 + ceil32(return_data.size) + 88] = 128
                        _1239 = mem[_431]
                        mem[_429 + ceil32(return_data.size) + 184] = mem[_431]
                        s = 0
                        while s < _1239:
                            mem[s + _429 + ceil32(return_data.size) + 216] = mem[s + _431 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1239) > _1239:
                            mem[_429 + ceil32(return_data.size) + _1239 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_1239) + 32]
                    else:
                        mem[_429 + ceil32(return_data.size) + _844 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_844) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_429 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_429 + ceil32(return_data.size) + 56] = 64
                        mem[_429 + ceil32(return_data.size) + 120] = 3
                        mem[_429 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_429 + ceil32(return_data.size) + 88] = 128
                        _1252 = mem[_431]
                        mem[_429 + ceil32(return_data.size) + 184] = mem[_431]
                        s = 0
                        while s < _1252:
                            mem[s + _429 + ceil32(return_data.size) + 216] = mem[s + _431 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1252) > _1252:
                            mem[_429 + ceil32(return_data.size) + _1252 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_429 + ceil32(return_data.size) + 184 len ceil32(_1252) + 32]
            mem[_429 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_429 + (2 * ceil32(return_data.size)) + 56] = address(_427)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_427)
            mem[_429 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _429 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
            userIdByIndex[stor6] = ext_call.return_data[0]
            stor8[ext_call.return_data[0]] = 1
            if totalUsers == -1:
                revert with 0, 17
            totalUsers++
            mem[0] = ext_call.return_data[0]
            mem[32] = 3
            mem[_429 + (4 * ceil32(return_data.size)) + 52] = impactById[ext_call.return_data[0]]
            emit Migrate(impactById[ext_call.return_data[0]], address(_427), ext_call.return_data[0]);
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
        _419 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        totalShares = mem[_419]
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
            _426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _428 = mem[_426]
            require mem[_426] == mem[_426 + 12 len 20]
            _430 = mem[64]
            mem[mem[64] + 32] = address(mem[_426])
            _432 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            mem[_430 + 52] = 0xf91c1e5000000000000000000000000000000000000000000000000000000000
            mem[_430 + 56] = 64
            mem[_430 + 120] = 3
            mem[_430 + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
            mem[_430 + 88] = 128
            _434 = mem[_432]
            mem[_430 + 184] = mem[_432]
            s = 0
            while s < _434:
                mem[s + _430 + 216] = mem[s + _432 + 32]
                s = s + 32
                continue 
            if ceil32(_434) <= _434:
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + 184 len ceil32(_434) + 32]
                mem[_430 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _430 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_430 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_430 + ceil32(return_data.size) + 56] = 64
                    mem[_430 + ceil32(return_data.size) + 120] = 3
                    mem[_430 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_430 + ceil32(return_data.size) + 88] = 128
                    _839 = mem[_432]
                    mem[_430 + ceil32(return_data.size) + 184] = mem[_432]
                    s = 0
                    while s < _839:
                        mem[s + _430 + ceil32(return_data.size) + 216] = mem[s + _432 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_839) > _839:
                        mem[_430 + ceil32(return_data.size) + _839 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_839) + 32]
                else:
                    mem[_430 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_430 + ceil32(return_data.size) + 56] = 64
                    mem[_430 + ceil32(return_data.size) + 120] = 3
                    mem[_430 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_430 + ceil32(return_data.size) + 88] = 128
                    _840 = mem[_432]
                    mem[_430 + ceil32(return_data.size) + 184] = mem[_432]
                    s = 0
                    while s < _840:
                        mem[s + _430 + ceil32(return_data.size) + 216] = mem[s + _432 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_840) <= _840:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_840) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_430 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_430 + ceil32(return_data.size) + 56] = 64
                        mem[_430 + ceil32(return_data.size) + 120] = 3
                        mem[_430 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_430 + ceil32(return_data.size) + 88] = 128
                        _1242 = mem[_432]
                        mem[_430 + ceil32(return_data.size) + 184] = mem[_432]
                        s = 0
                        while s < _1242:
                            mem[s + _430 + ceil32(return_data.size) + 216] = mem[s + _432 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1242) > _1242:
                            mem[_430 + ceil32(return_data.size) + _1242 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_1242) + 32]
                    else:
                        mem[_430 + ceil32(return_data.size) + _840 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_840) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_430 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_430 + ceil32(return_data.size) + 56] = 64
                        mem[_430 + ceil32(return_data.size) + 120] = 3
                        mem[_430 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_430 + ceil32(return_data.size) + 88] = 128
                        _1255 = mem[_432]
                        mem[_430 + ceil32(return_data.size) + 184] = mem[_432]
                        s = 0
                        while s < _1255:
                            mem[s + _430 + ceil32(return_data.size) + 216] = mem[s + _432 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1255) > _1255:
                            mem[_430 + ceil32(return_data.size) + _1255 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_1255) + 32]
            else:
                mem[_430 + _434 + 216] = 0
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xf91c1e50 with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + 184 len ceil32(_434) + 32]
                mem[_430 + 52] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _430 + ceil32(return_data.size) + 52
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    mem[_430 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                    mem[_430 + ceil32(return_data.size) + 56] = 64
                    mem[_430 + ceil32(return_data.size) + 120] = 3
                    mem[_430 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_430 + ceil32(return_data.size) + 88] = 128
                    _845 = mem[_432]
                    mem[_430 + ceil32(return_data.size) + 184] = mem[_432]
                    s = 0
                    while s < _845:
                        mem[s + _430 + ceil32(return_data.size) + 216] = mem[s + _432 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_845) > _845:
                        mem[_430 + ceil32(return_data.size) + _845 + 216] = 0
                    require ext_code.size(balanceKeeperAddress)
                    staticcall balanceKeeperAddress.0x3ed084c4 with:
                            gas gas_remaining wei
                           args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_845) + 32]
                else:
                    mem[_430 + ceil32(return_data.size) + 52] = 0xd41ebce100000000000000000000000000000000000000000000000000000000
                    mem[_430 + ceil32(return_data.size) + 56] = 64
                    mem[_430 + ceil32(return_data.size) + 120] = 3
                    mem[_430 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                    mem[_430 + ceil32(return_data.size) + 88] = 128
                    _846 = mem[_432]
                    mem[_430 + ceil32(return_data.size) + 184] = mem[_432]
                    s = 0
                    while s < _846:
                        mem[s + _430 + ceil32(return_data.size) + 216] = mem[s + _432 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_846) <= _846:
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_846) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_430 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_430 + ceil32(return_data.size) + 56] = 64
                        mem[_430 + ceil32(return_data.size) + 120] = 3
                        mem[_430 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_430 + ceil32(return_data.size) + 88] = 128
                        _1245 = mem[_432]
                        mem[_430 + ceil32(return_data.size) + 184] = mem[_432]
                        s = 0
                        while s < _1245:
                            mem[s + _430 + ceil32(return_data.size) + 216] = mem[s + _432 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1245) > _1245:
                            mem[_430 + ceil32(return_data.size) + _1245 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_1245) + 32]
                    else:
                        mem[_430 + ceil32(return_data.size) + _846 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0xd41ebce1 with:
                             gas gas_remaining wei
                            args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_846) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_430 + ceil32(return_data.size) + 52] = 0x3ed084c400000000000000000000000000000000000000000000000000000000
                        mem[_430 + ceil32(return_data.size) + 56] = 64
                        mem[_430 + ceil32(return_data.size) + 120] = 3
                        mem[_430 + ceil32(return_data.size) + 152] = 0x45564d0000000000000000000000000000000000000000000000000000000000
                        mem[_430 + ceil32(return_data.size) + 88] = 128
                        _1258 = mem[_432]
                        mem[_430 + ceil32(return_data.size) + 184] = mem[_432]
                        s = 0
                        while s < _1258:
                            mem[s + _430 + ceil32(return_data.size) + 216] = mem[s + _432 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1258) > _1258:
                            mem[_430 + ceil32(return_data.size) + _1258 + 216] = 0
                        require ext_code.size(balanceKeeperAddress)
                        staticcall balanceKeeperAddress.0x3ed084c4 with:
                                gas gas_remaining wei
                               args 64, 128, 3, 0x45564d0000000000000000000000000000000000000000000000000000000000, mem[_430 + ceil32(return_data.size) + 184 len ceil32(_1258) + 32]
            mem[_430 + ceil32(return_data.size) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_430 + (2 * ceil32(return_data.size)) + 56] = address(_428)
            require ext_code.size(impactEBAddress)
            call impactEBAddress.impact(address arg1) with:
                 gas gas_remaining wei
                args address(_428)
            mem[_430 + (2 * ceil32(return_data.size)) + 52] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _430 + (4 * ceil32(return_data.size)) + 52
            require return_data.size >= 32
            impactById[ext_call.return_data[0]] = ext_call.return_data[0]
            userIdByIndex[stor6] = ext_call.return_data[0]
            stor8[ext_call.return_data[0]] = 1
            if totalUsers == -1:
                revert with 0, 17
            totalUsers++
            mem[0] = ext_call.return_data[0]
            mem[32] = 3
            mem[_430 + (4 * ceil32(return_data.size)) + 52] = impactById[ext_call.return_data[0]]
            emit Migrate(impactById[ext_call.return_data[0]], address(_428), ext_call.return_data[0]);
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
        _421 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        totalShares = mem[_421]
        currentUser = ext_call.return_data[0]
}



}
