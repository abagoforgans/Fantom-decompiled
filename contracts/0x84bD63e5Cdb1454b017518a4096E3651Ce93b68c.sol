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

function sub_7dd8cdad(?) payable {
    mem[64] = 96
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor3)
    staticcall stor3.mem[var61003 len 4] with:
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
    call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), tx.origin, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_763d000b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0x7ae1aed800000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor3)
    staticcall stor3.mem[var218003 len 4] with:
            gas gas_remaining wei
           args mem[var218003 + 4 len var218004 - 4]
    mem[var218005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require var222002 - var222001 >= 32
    require var232002 == var232001
    s = var238001
    t = var238007
    while t < s:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if t >= arg1 + arg2:
        mem[mem[64] + 4] = t
        require ext_code.size(stor3)
        staticcall stor3.0x5290d68f with:
                gas gas_remaining wei
               args t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1167 = mem[_1166]
        require mem[_1166] == mem[_1166]
        mem[mem[64] + 4] = mem[_1166]
        require ext_code.size(stor1)
        staticcall stor1.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _1167
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1170 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1170] == mem[_1170]
        if block.timestamp <= mem[_1170]:
            mem[mem[64] + 4] = _1167
            require ext_code.size(stor2)
            staticcall stor2.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1176] == mem[_1176]
            if block.timestamp <= mem[_1176]:
                if t == -1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1188 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1188] == mem[_1188]
                s = mem[_1188]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _1167
            require ext_code.size(stor2)
            staticcall stor2.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1187] == mem[_1187]
            if mem[_1187] <= 0:
                if t == -1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1199 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1199] == mem[_1199]
                s = mem[_1199]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _1167
            require ext_code.size(stor2)
            call stor2.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _1167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1200] == mem[_1200]
            if t == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1210] == mem[_1210]
            s = mem[_1210]
            t = t + 1
            continue 
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _1167
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = _1167
        require ext_code.size(stor1)
        staticcall stor1.level(uint256 arg1) with:
                gas gas_remaining wei
               args _1167
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1182 = mem[_1180]
        require mem[_1180] == mem[_1180]
        mem[mem[64] + 4] = mem[_1180]
        require ext_code.size(stor1)
        staticcall stor1.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _1182
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1193 = mem[_1192]
        require mem[_1192] == mem[_1192]
        mem[mem[64] + 4] = _1167
        require ext_code.size(stor1)
        staticcall stor1.xp(uint256 arg1) with:
                gas gas_remaining wei
               args _1167
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1204] == mem[_1204]
        if mem[_1204] < _1193:
            mem[mem[64] + 4] = _1167
            require ext_code.size(stor2)
            staticcall stor2.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1214] == mem[_1214]
            if block.timestamp <= mem[_1214]:
                if t == -1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1225] == mem[_1225]
                s = mem[_1225]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _1167
            require ext_code.size(stor2)
            staticcall stor2.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1224] == mem[_1224]
            if mem[_1224] <= 0:
                if t == -1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                staticcall stor3.0x7ae1aed8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1240] == mem[_1240]
                s = mem[_1240]
                t = t + 1
                continue 
            mem[mem[64] + 4] = _1167
            require ext_code.size(stor2)
            call stor2.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _1167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1241] == mem[_1241]
            if t == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1254] == mem[_1254]
            s = mem[_1254]
            t = t + 1
            continue 
        require ext_code.size(stor1)
        call stor1.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args _1167
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = _1167
        require ext_code.size(stor2)
        staticcall stor2.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _1167
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1218 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1218] == mem[_1218]
        if block.timestamp <= mem[_1218]:
            if t == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1233] == mem[_1233]
            s = mem[_1233]
            t = t + 1
            continue 
        mem[mem[64] + 4] = _1167
        require ext_code.size(stor2)
        staticcall stor2.scout(uint256 arg1) with:
                gas gas_remaining wei
               args _1167
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1232] == mem[_1232]
        if mem[_1232] <= 0:
            if t == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor3)
            staticcall stor3.0x7ae1aed8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1248 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1248] == mem[_1248]
            s = mem[_1248]
            t = t + 1
            continue 
        mem[mem[64] + 4] = _1167
        require ext_code.size(stor2)
        call stor2.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args _1167
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1249 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1249] == mem[_1249]
        if t == -1:
            revert with 'NH{q', 17
        require ext_code.size(stor3)
        staticcall stor3.0x7ae1aed8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1258] == mem[_1258]
        s = mem[_1258]
        t = t + 1
        continue 
}



}
