contract main {




// =====================  Runtime code  =====================


address adminAddress;
address stor1;
address stor2;
address stor3;

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
    stor3 = address(arg1)
}

function mint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
            revert with 0, 17
        idx = idx + 1
        continue 
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
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
        args this.address, tx.origin, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_763d000b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor3)
    staticcall stor3.mem[var75003 len 4] with:
            gas gas_remaining wei
           args mem[var75003 + 4 len var75004 - 4]
    mem[var75005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var79002 - var79001 >= 32
    s = mem[var81002]
    t = var81005
    while t < s:
        if arg1 > !arg2:
            revert with 0, 17
        if t >= arg1 + arg2:
        mem[mem[64] + 4] = t
        require ext_code.size(stor3)
        staticcall stor3.0x5290d68f with:
                gas gas_remaining wei
               args t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _503 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _504 = mem[_503]
        mem[mem[64] + 4] = mem[_503]
        require ext_code.size(stor1)
        staticcall stor1.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _504
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _507 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_507]:
            mem[mem[64] + 4] = _504
            require ext_code.size(stor2)
            staticcall stor2.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _504
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _513 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp <= mem[_513]:
                if t == -1:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = mem[_529]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _504
            require ext_code.size(stor2)
            staticcall stor2.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _504
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _522 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_522] <= 0:
                if t == -1:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = mem[_541]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _504
            require ext_code.size(stor2)
            call stor2.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _504
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t == -1:
                revert with 0, 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = mem[_554]
            t = t + 1
            continue 
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _504
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = _504
        require ext_code.size(stor1)
        staticcall stor1.level(uint256 arg1) with:
                gas gas_remaining wei
               args _504
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _517 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _520 = mem[_517]
        mem[mem[64] + 4] = mem[_517]
        require ext_code.size(stor1)
        staticcall stor1.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _520
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _525 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _528 = mem[_525]
        mem[mem[64] + 4] = _504
        require ext_code.size(stor1)
        staticcall stor1.xp(uint256 arg1) with:
                gas gas_remaining wei
               args _504
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _536 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_536] < _528:
            mem[mem[64] + 4] = _504
            require ext_code.size(stor2)
            staticcall stor2.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _504
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _547 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp <= mem[_547]:
                if t == -1:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = mem[_566]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _504
            require ext_code.size(stor2)
            staticcall stor2.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _504
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _559 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_559] <= 0:
                if t == -1:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _582 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = mem[_582]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _504
            require ext_code.size(stor2)
            call stor2.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _504
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t == -1:
                revert with 0, 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _591 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = mem[_591]
            t = t + 1
            continue 
        require ext_code.size(stor1)
        call stor1.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args _504
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = _504
        require ext_code.size(stor2)
        staticcall stor2.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _504
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _553 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_553]:
            if t == -1:
                revert with 0, 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _574 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = mem[_574]
            t = t + 1
            continue 
        mem[mem[64] + 4] = _504
        require ext_code.size(stor2)
        staticcall stor2.scout(uint256 arg1) with:
                gas gas_remaining wei
               args _504
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _565 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_565] <= 0:
            if t == -1:
                revert with 0, 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _587 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = mem[_587]
            t = t + 1
            continue 
        mem[mem[64] + 4] = _504
        require ext_code.size(stor2)
        call stor2.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _504
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if t == -1:
            revert with 0, 17
        require ext_code.size(stor3)
        staticcall stor3.0x7ae1aed8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _595 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        s = mem[_595]
        t = t + 1
        continue 
}



}
