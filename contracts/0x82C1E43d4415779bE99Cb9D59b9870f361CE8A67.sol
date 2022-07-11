contract main {




// =====================  Runtime code  =====================


address adminAddress;
address stor1;
address stor4;

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_b545a239(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == adminAddress
    stor4 = address(arg1)
}

function sub_7dd8cdad(?) payable {
    mem[64] = 96
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor4)
    staticcall stor4.mem[var61003 len 4] with:
            gas gas_remaining wei
           args mem[var61003 + 4 len var61004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var65002 - var65001 >= 32
    require var75002 == var75001
    if var83002 >= var83001:
        return 1
    # nil
}

function mint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    while idx < arg1:
        mem[96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(stor1)
        call stor1.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), tx.origin, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_d787a125(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor4)
    staticcall stor4.mem[var90003 len 4] with:
            gas gas_remaining wei
           args mem[var90003 + 4 len var90004 - 4]
    mem[var90005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var94002 - var94001 >= 32
    require var104002 == var104001
    s = var110001
    t = var110007
    while t < s:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if t >= arg1 + arg2:
            return 0
        mem[mem[64] + 4] = t
        require ext_code.size(stor4)
        staticcall stor4.0xd38b576d with:
                gas gas_remaining wei
               args t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _339 = mem[_338]
        require mem[_338] == mem[_338]
        mem[mem[64] + 4] = mem[_338]
        require ext_code.size(stor1)
        staticcall stor1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _339
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _342 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_342] == mem[_342 + 12 len 20]
        if mem[_342 + 12 len 20] != adminAddress:
            if t == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor4)
            staticcall stor4.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_349] == mem[_349]
            s = mem[_349]
            t = t + 1
            continue 
        mem[mem[64] + 4] = _339
        require ext_code.size(stor1)
        staticcall stor1.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _339
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _348 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_348] == mem[_348]
        if block.timestamp <= mem[_348]:
            return 0
        if t == -1:
            revert with 'NH{q', 17
        require ext_code.size(stor4)
        staticcall stor4.0x7ae1aed8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _356 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_356] == mem[_356]
        s = mem[_356]
        t = t + 1
        continue 
    return 0
}

function sub_763d000b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor4)
    staticcall stor4.mem[var90003 len 4] with:
            gas gas_remaining wei
           args mem[var90003 + 4 len var90004 - 4]
    mem[var90005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var94002 - var94001 >= 32
    require var104002 == var104001
    s = var110001
    t = var110007
    while t < s:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if t >= arg1 + arg2:
        mem[mem[64] + 4] = t
        require ext_code.size(stor4)
        staticcall stor4.0x5290d68f with:
                gas gas_remaining wei
               args t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _453 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _454 = mem[_453]
        require mem[_453] == mem[_453]
        mem[mem[64] + 4] = mem[_453]
        require ext_code.size(stor1)
        staticcall stor1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _454
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _457 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_457] == mem[_457 + 12 len 20]
        if mem[_457 + 12 len 20] != adminAddress:
            if t == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor4)
            staticcall stor4.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_464] == mem[_464]
            s = mem[_464]
            t = t + 1
            continue 
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _454
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = _454
        require ext_code.size(stor1)
        staticcall stor1.level(uint256 arg1) with:
                gas gas_remaining wei
               args _454
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _467 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _468 = mem[_467]
        require mem[_467] == mem[_467]
        mem[mem[64] + 4] = mem[_467]
        require ext_code.size(stor1)
        staticcall stor1.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _468
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _471 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _472 = mem[_471]
        require mem[_471] == mem[_471]
        mem[mem[64] + 4] = _454
        require ext_code.size(stor1)
        staticcall stor1.xp(uint256 arg1) with:
                gas gas_remaining wei
               args _454
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _475 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_475] == mem[_475]
        if mem[_475] < _472:
            if t == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor4)
            staticcall stor4.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _481 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_481] == mem[_481]
            s = mem[_481]
            t = t + 1
            continue 
        mem[mem[64] + 4] = _454
        require ext_code.size(stor1)
        call stor1.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args _454
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if t == -1:
            revert with 'NH{q', 17
        require ext_code.size(stor4)
        staticcall stor4.0x7ae1aed8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _485 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_485] == mem[_485]
        s = mem[_485]
        t = t + 1
        continue 
}



}
