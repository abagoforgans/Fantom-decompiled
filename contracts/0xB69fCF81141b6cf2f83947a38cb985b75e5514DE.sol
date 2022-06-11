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
    call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
    staticcall stor3.mem[var30003 len 4] with:
            gas gas_remaining wei
           args mem[var30003 + 4 len var30004 - 4]
    mem[var30005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var34002 - var34001 >= 32
    s = mem[var36002]
    t = var36005
    while t < s:
        if arg1 > !arg2:
            revert with 0, 17
        if t >= arg1 + arg2:
        mem[mem[64] + 4] = t
        require ext_code.size(stor3)
        staticcall stor3.0xd38b576d with:
                gas gas_remaining wei
               args t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _517 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _518 = mem[_517]
        if not mem[_517]:
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
        mem[mem[64] + 4] = mem[_517]
        require ext_code.size(stor1)
        staticcall stor1.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _518
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _521 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_521]:
            mem[mem[64] + 4] = _518
            require ext_code.size(stor2)
            staticcall stor2.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _518
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _530 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp <= mem[_530]:
                if t == -1:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = mem[_551]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _518
            require ext_code.size(stor2)
            staticcall stor2.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _518
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _540 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_540] <= 0:
                if t == -1:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _563 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = mem[_563]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _518
            require ext_code.size(stor2)
            call stor2.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _518
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
            _574 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = mem[_574]
            t = t + 1
            continue 
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _518
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = _518
        require ext_code.size(stor1)
        staticcall stor1.level(uint256 arg1) with:
                gas gas_remaining wei
               args _518
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _535 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _538 = mem[_535]
        mem[mem[64] + 4] = mem[_535]
        require ext_code.size(stor1)
        staticcall stor1.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _538
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _543 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _546 = mem[_543]
        mem[mem[64] + 4] = _518
        require ext_code.size(stor1)
        staticcall stor1.xp(uint256 arg1) with:
                gas gas_remaining wei
               args _518
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _553 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_553] < _546:
            mem[mem[64] + 4] = _518
            require ext_code.size(stor2)
            staticcall stor2.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _518
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _564 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp <= mem[_564]:
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
            mem[mem[64] + 4] = _518
            require ext_code.size(stor2)
            staticcall stor2.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _518
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_576] <= 0:
                if t == -1:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _600 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = mem[_600]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _518
            require ext_code.size(stor2)
            call stor2.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _518
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
            _609 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = mem[_609]
            t = t + 1
            continue 
        require ext_code.size(stor1)
        call stor1.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args _518
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = _518
        require ext_code.size(stor2)
        staticcall stor2.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _518
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _571 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp <= mem[_571]:
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
        mem[mem[64] + 4] = _518
        require ext_code.size(stor2)
        staticcall stor2.scout(uint256 arg1) with:
                gas gas_remaining wei
               args _518
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _581 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_581] <= 0:
            if t == -1:
                revert with 0, 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = mem[_605]
            t = t + 1
            continue 
        mem[mem[64] + 4] = _518
        require ext_code.size(stor2)
        call stor2.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _518
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
        _613 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        s = mem[_613]
        t = t + 1
        continue 
}



}
