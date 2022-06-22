contract main {




// =====================  Runtime code  =====================


address owner;
address sub_dacaa9d1Address;
address sub_a4a6546eAddress;
address sub_fff049e6Address;

function owner() payable {
    return owner
}

function sub_a4a6546e(?) payable {
    return sub_a4a6546eAddress
}

function sub_dacaa9d1(?) payable {
    return sub_dacaa9d1Address
}

function sub_fff049e6(?) payable {
    return sub_fff049e6Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f471c7a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dacaa9d1Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_c931e1f6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = Mask(254, 0, arg1.length) * 0.25
    if Mask(256, -2, arg1.length):
        mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    idx = 0
    while idx < Mask(254, 0, arg1.length) * 0.25:
        if idx >= Mask(254, 0, arg1.length) * 0.25:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[(4 * idx) + 128 len 4]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=4 * Mask(256, -2, arg1.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)]), 
}

function sub_87c22269(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = Mask(254, 0, arg1.length) * 0.25
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161
        if not Mask(256, -2, arg1.length):
            if Mask(254, 0, arg1.length) * 0.25 > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
            mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
            if not Mask(256, -2, arg1.length):
                idx = 0
                while idx < Mask(254, 0, arg1.length) * 0.25:
                    _298 = mem[(4 * idx) + 100]
                    mem[mem[64] + 4] = mem[(4 * idx) + 128 len 4]
                    require ext_code.size(sub_dacaa9d1Address)
                    staticcall sub_dacaa9d1Address.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_298 << 224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _332 = mem[_320]
                    require mem[_320] == mem[_320 + 12 len 20]
                    mem[mem[64]] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint32(_298)
                    require ext_code.size(sub_a4a6546eAddress)
                    staticcall sub_a4a6546eAddress.summoner_name(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_298 << 224)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _399 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _418 = mem[_399]
                    require mem[_399] <= test266151307()
                    require _399 + return_data.size > _399 + mem[_399] + 31
                    _432 = mem[_399 + mem[_399]]
                    if mem[_399 + mem[_399]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_399 + mem[_399]])) + 1 < 0 or _399 + ceil32(return_data.size) + ceil32(ceil32(mem[_399 + mem[_399]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _399 + ceil32(return_data.size) + ceil32(ceil32(mem[_399 + mem[_399]])) + 1
                    mem[_399 + ceil32(return_data.size)] = _432
                    require _418 + _432 + 32 <= return_data.size
                    s = 0
                    while s < _432:
                        mem[s + _399 + ceil32(return_data.size) + 32] = mem[s + _399 + _418 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_432) <= _432:
                        mem[mem[64] + 4] = uint32(_298)
                        require ext_code.size(sub_fff049e6Address)
                        staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args (_298 << 224)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _689 = mem[_662]
                        if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_332)
                        if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _399 + ceil32(return_data.size)
                        if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _689
                    else:
                        mem[_399 + ceil32(return_data.size) + _432 + 32] = 0
                        mem[mem[64] + 4] = uint32(_298)
                        require ext_code.size(sub_fff049e6Address)
                        staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args (_298 << 224)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _676 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _701 = mem[_676]
                        if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_332)
                        if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _399 + ceil32(return_data.size)
                        if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _701
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _306 = mem[64]
                mem[mem[64]] = 96
                _314 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
                idx = 0
                s = ceil32(ceil32(arg1.length)) + 129
                t = mem[64] + 128
                while idx < _314:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _314) + 128
                _588 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_306 + (32 * _314) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                idx = 0
                s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
                t = _306 + (32 * _314) + (32 * _588) + 160
                u = _306 + (32 * _314) + 160
                while idx < _588:
                    mem[u] = t + -_306 + -(32 * _314) - 160
                    _824 = mem[s]
                    _825 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _825:
                        mem[v + t + 32] = mem[v + _824 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_825) > _825:
                        mem[t + _825 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_825) + t + 32
                    u = u + 32
                    continue 
                mem[_306 + 64] = t - _306
                _844 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[t] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[t + 32 len 32 * _844] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _844]
                var35001 = _844
                return memory
                  from mem[64]
                   len t + (32 * _844) + -mem[64] + 32
            mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                _300 = mem[(4 * idx) + 100]
                mem[mem[64] + 4] = mem[(4 * idx) + 128 len 4]
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_300 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _321 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _333 = mem[_321]
                require mem[_321] == mem[_321 + 12 len 20]
                mem[mem[64]] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint32(_300)
                require ext_code.size(sub_a4a6546eAddress)
                staticcall sub_a4a6546eAddress.summoner_name(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_300 << 224)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _419 = mem[_401]
                require mem[_401] <= test266151307()
                require _401 + return_data.size > _401 + mem[_401] + 31
                _433 = mem[_401 + mem[_401]]
                if mem[_401 + mem[_401]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_401 + mem[_401]])) + 1 < 0 or _401 + ceil32(return_data.size) + ceil32(ceil32(mem[_401 + mem[_401]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _401 + ceil32(return_data.size) + ceil32(ceil32(mem[_401 + mem[_401]])) + 1
                mem[_401 + ceil32(return_data.size)] = _433
                require _419 + _433 + 32 <= return_data.size
                s = 0
                while s < _433:
                    mem[s + _401 + ceil32(return_data.size) + 32] = mem[s + _401 + _419 + 32]
                    s = s + 32
                    continue 
                if ceil32(_433) <= _433:
                    mem[mem[64] + 4] = uint32(_300)
                    require ext_code.size(sub_fff049e6Address)
                    staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_300 << 224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _665 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _691 = mem[_665]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_333)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _401 + ceil32(return_data.size)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _691
                else:
                    mem[_401 + ceil32(return_data.size) + _433 + 32] = 0
                    mem[mem[64] + 4] = uint32(_300)
                    require ext_code.size(sub_fff049e6Address)
                    staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_300 << 224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _703 = mem[_677]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_333)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _401 + ceil32(return_data.size)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _703
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _308 = mem[64]
            mem[mem[64]] = 96
            _315 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            idx = 0
            s = ceil32(ceil32(arg1.length)) + 129
            t = mem[64] + 128
            while idx < _315:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _315) + 128
            _591 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_308 + (32 * _315) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            idx = 0
            s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
            t = _308 + (32 * _315) + (32 * _591) + 160
            u = _308 + (32 * _315) + 160
            while idx < _591:
                mem[u] = t + -_308 + -(32 * _315) - 160
                _826 = mem[s]
                _827 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _827:
                    mem[v + t + 32] = mem[v + _826 + 32]
                    v = v + 32
                    continue 
                if ceil32(_827) > _827:
                    mem[t + _827 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_827) + t + 32
                u = u + 32
                continue 
            mem[_308 + 64] = t - _308
            _845 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[t] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[t + 32 len 32 * _845] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _845]
            var36001 = _845
            return memory
              from mem[64]
               len t + (32 * _845) + -mem[64] + 32
        mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = 96
        s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
        idx = Mask(254, 0, arg1.length) * 0.25
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        _316 = mem[64]
        mem[mem[64]] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = mem[64] + (8 * Mask(251, 2, arg1.length)) + 32
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                _594 = mem[(4 * idx) + 100]
                mem[mem[64] + 4] = mem[(4 * idx) + 128 len 4]
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_594 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _634 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _666 = mem[_634]
                require mem[_634] == mem[_634 + 12 len 20]
                mem[mem[64]] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint32(_594)
                require ext_code.size(sub_a4a6546eAddress)
                staticcall sub_a4a6546eAddress.summoner_name(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_594 << 224)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _743 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _752 = mem[_743]
                require mem[_743] <= test266151307()
                require _743 + return_data.size > _743 + mem[_743] + 31
                _756 = mem[_743 + mem[_743]]
                if mem[_743 + mem[_743]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_743 + mem[_743]])) + 1 < 0 or _743 + ceil32(return_data.size) + ceil32(ceil32(mem[_743 + mem[_743]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _743 + ceil32(return_data.size) + ceil32(ceil32(mem[_743 + mem[_743]])) + 1
                mem[_743 + ceil32(return_data.size)] = _756
                require _752 + _756 + 32 <= return_data.size
                s = 0
                while s < _756:
                    mem[s + _743 + ceil32(return_data.size) + 32] = mem[s + _743 + _752 + 32]
                    s = s + 32
                    continue 
                if ceil32(_756) <= _756:
                    mem[mem[64] + 4] = uint32(_594)
                    require ext_code.size(sub_fff049e6Address)
                    staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_594 << 224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _905 = mem[_888]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_666)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _743 + ceil32(return_data.size)
                    if idx >= mem[_316]:
                        revert with 0, 50
                    mem[(32 * idx) + _316 + 32] = _905
                else:
                    mem[_743 + ceil32(return_data.size) + _756 + 32] = 0
                    mem[mem[64] + 4] = uint32(_594)
                    require ext_code.size(sub_fff049e6Address)
                    staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_594 << 224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _900 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _913 = mem[_900]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_666)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _743 + ceil32(return_data.size)
                    if idx >= mem[_316]:
                        revert with 0, 50
                    mem[(32 * idx) + _316 + 32] = _913
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _608 = mem[64]
            mem[mem[64]] = 96
            _620 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            idx = 0
            s = ceil32(ceil32(arg1.length)) + 129
            t = mem[64] + 128
            while idx < _620:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_608 + 32] = (32 * _620) + 128
            _828 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_608 + (32 * _620) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            idx = 0
            s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
            t = _608 + (32 * _620) + (32 * _828) + 160
            u = _608 + (32 * _620) + 160
            while idx < _828:
                mem[u] = t + -_608 + -(32 * _620) - 160
                _944 = mem[s]
                _945 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _945:
                    mem[v + t + 32] = mem[v + _944 + 32]
                    v = v + 32
                    continue 
                if ceil32(_945) > _945:
                    mem[t + _945 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_945) + t + 32
                u = u + 32
                continue 
            mem[_608 + 64] = t - _608
            _956 = mem[_316]
            mem[t] = mem[_316]
            mem[t + 32 len 32 * _956] = mem[_316 + 32 len 32 * _956]
            var39001 = _956
            return memory
              from mem[64]
               len t + (32 * _956) + -mem[64] + 32
        mem[_316 + 32 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            _596 = mem[(4 * idx) + 100]
            mem[mem[64] + 4] = mem[(4 * idx) + 128 len 4]
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_596 << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _635 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _667 = mem[_635]
            require mem[_635] == mem[_635 + 12 len 20]
            mem[mem[64]] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = uint32(_596)
            require ext_code.size(sub_a4a6546eAddress)
            staticcall sub_a4a6546eAddress.summoner_name(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_596 << 224)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _745 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _753 = mem[_745]
            require mem[_745] <= test266151307()
            require _745 + return_data.size > _745 + mem[_745] + 31
            _757 = mem[_745 + mem[_745]]
            if mem[_745 + mem[_745]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_745 + mem[_745]])) + 1 < 0 or _745 + ceil32(return_data.size) + ceil32(ceil32(mem[_745 + mem[_745]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _745 + ceil32(return_data.size) + ceil32(ceil32(mem[_745 + mem[_745]])) + 1
            mem[_745 + ceil32(return_data.size)] = _757
            require _753 + _757 + 32 <= return_data.size
            s = 0
            while s < _757:
                mem[s + _745 + ceil32(return_data.size) + 32] = mem[s + _745 + _753 + 32]
                s = s + 32
                continue 
            if ceil32(_757) <= _757:
                mem[mem[64] + 4] = uint32(_596)
                require ext_code.size(sub_fff049e6Address)
                staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_596 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _891 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _907 = mem[_891]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_667)
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _745 + ceil32(return_data.size)
                if idx >= mem[_316]:
                    revert with 0, 50
                mem[(32 * idx) + _316 + 32] = _907
            else:
                mem[_745 + ceil32(return_data.size) + _757 + 32] = 0
                mem[mem[64] + 4] = uint32(_596)
                require ext_code.size(sub_fff049e6Address)
                staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_596 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _901 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _915 = mem[_901]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_667)
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _745 + ceil32(return_data.size)
                if idx >= mem[_316]:
                    revert with 0, 50
                mem[(32 * idx) + _316 + 32] = _915
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _610 = mem[64]
        mem[mem[64]] = 96
        _621 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        idx = 0
        s = ceil32(ceil32(arg1.length)) + 129
        t = mem[64] + 128
        while idx < _621:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_610 + 32] = (32 * _621) + 128
        _831 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_610 + (32 * _621) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        idx = 0
        s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
        t = _610 + (32 * _621) + (32 * _831) + 160
        u = _610 + (32 * _621) + 160
        while idx < _831:
            mem[u] = t + -_610 + -(32 * _621) - 160
            _946 = mem[s]
            _947 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _947:
                mem[v + t + 32] = mem[v + _946 + 32]
                v = v + 32
                continue 
            if ceil32(_947) > _947:
                mem[t + _947 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_947) + t + 32
            u = u + 32
            continue 
        mem[_610 + 64] = t - _610
        _957 = mem[_316]
        mem[t] = mem[_316]
        mem[t + 32 len 32 * _957] = mem[_316 + 32 len 32 * _957]
        var40001 = _957
        return memory
          from mem[64]
           len t + (32 * _957) + -mem[64] + 32
    mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129] = Mask(254, 0, arg1.length) * 0.25
    mem[64] = ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                _302 = mem[(4 * idx) + 100]
                mem[mem[64] + 4] = mem[(4 * idx) + 128 len 4]
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_302 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _336 = mem[_322]
                require mem[_322] == mem[_322 + 12 len 20]
                mem[mem[64]] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint32(_302)
                require ext_code.size(sub_a4a6546eAddress)
                staticcall sub_a4a6546eAddress.summoner_name(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_302 << 224)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _421 = mem[_406]
                require mem[_406] <= test266151307()
                require _406 + return_data.size > _406 + mem[_406] + 31
                _438 = mem[_406 + mem[_406]]
                if mem[_406 + mem[_406]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_406 + mem[_406]])) + 1 < 0 or _406 + ceil32(return_data.size) + ceil32(ceil32(mem[_406 + mem[_406]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _406 + ceil32(return_data.size) + ceil32(ceil32(mem[_406 + mem[_406]])) + 1
                mem[_406 + ceil32(return_data.size)] = _438
                require _421 + _438 + 32 <= return_data.size
                s = 0
                while s < _438:
                    mem[s + _406 + ceil32(return_data.size) + 32] = mem[s + _406 + _421 + 32]
                    s = s + 32
                    continue 
                if ceil32(_438) <= _438:
                    mem[mem[64] + 4] = uint32(_302)
                    require ext_code.size(sub_fff049e6Address)
                    staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_302 << 224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _695 = mem[_670]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_336)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _406 + ceil32(return_data.size)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _695
                else:
                    mem[_406 + ceil32(return_data.size) + _438 + 32] = 0
                    mem[mem[64] + 4] = uint32(_302)
                    require ext_code.size(sub_fff049e6Address)
                    staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_302 << 224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _705 = mem[_682]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_336)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _406 + ceil32(return_data.size)
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _705
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _310 = mem[64]
            mem[mem[64]] = 96
            _317 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            idx = 0
            s = ceil32(ceil32(arg1.length)) + 129
            t = mem[64] + 128
            while idx < _317:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_310 + 32] = (32 * _317) + 128
            _598 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_310 + (32 * _317) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            idx = 0
            s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
            t = _310 + (32 * _317) + (32 * _598) + 160
            u = _310 + (32 * _317) + 160
            while idx < _598:
                mem[u] = t + -_310 + -(32 * _317) - 160
                _834 = mem[s]
                _835 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _835:
                    mem[v + t + 32] = mem[v + _834 + 32]
                    v = v + 32
                    continue 
                if ceil32(_835) > _835:
                    mem[t + _835 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_835) + t + 32
                u = u + 32
                continue 
            mem[_310 + 64] = t - _310
            _846 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[t] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[t + 32 len 32 * _846] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _846]
            var36001 = _846
            return memory
              from mem[64]
               len t + (32 * _846) + -mem[64] + 32
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            _304 = mem[(4 * idx) + 100]
            mem[mem[64] + 4] = mem[(4 * idx) + 128 len 4]
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_304 << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _323 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _337 = mem[_323]
            require mem[_323] == mem[_323 + 12 len 20]
            mem[mem[64]] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = uint32(_304)
            require ext_code.size(sub_a4a6546eAddress)
            staticcall sub_a4a6546eAddress.summoner_name(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_304 << 224)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _408 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _422 = mem[_408]
            require mem[_408] <= test266151307()
            require _408 + return_data.size > _408 + mem[_408] + 31
            _439 = mem[_408 + mem[_408]]
            if mem[_408 + mem[_408]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_408 + mem[_408]])) + 1 < 0 or _408 + ceil32(return_data.size) + ceil32(ceil32(mem[_408 + mem[_408]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _408 + ceil32(return_data.size) + ceil32(ceil32(mem[_408 + mem[_408]])) + 1
            mem[_408 + ceil32(return_data.size)] = _439
            require _422 + _439 + 32 <= return_data.size
            s = 0
            while s < _439:
                mem[s + _408 + ceil32(return_data.size) + 32] = mem[s + _408 + _422 + 32]
                s = s + 32
                continue 
            if ceil32(_439) <= _439:
                mem[mem[64] + 4] = uint32(_304)
                require ext_code.size(sub_fff049e6Address)
                staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_304 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _697 = mem[_673]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_337)
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _408 + ceil32(return_data.size)
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _697
            else:
                mem[_408 + ceil32(return_data.size) + _439 + 32] = 0
                mem[mem[64] + 4] = uint32(_304)
                require ext_code.size(sub_fff049e6Address)
                staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_304 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _683 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _707 = mem[_683]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_337)
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _408 + ceil32(return_data.size)
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _707
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _312 = mem[64]
        mem[mem[64]] = 96
        _318 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        idx = 0
        s = ceil32(ceil32(arg1.length)) + 129
        t = mem[64] + 128
        while idx < _318:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _318) + 128
        _601 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_312 + (32 * _318) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        idx = 0
        s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
        t = _312 + (32 * _318) + (32 * _601) + 160
        u = _312 + (32 * _318) + 160
        while idx < _601:
            mem[u] = t + -_312 + -(32 * _318) - 160
            _836 = mem[s]
            _837 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _837:
                mem[v + t + 32] = mem[v + _836 + 32]
                v = v + 32
                continue 
            if ceil32(_837) > _837:
                mem[t + _837 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_837) + t + 32
            u = u + 32
            continue 
        mem[_312 + 64] = t - _312
        _847 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[t] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[t + 32 len 32 * _847] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _847]
        var37001 = _847
        return memory
          from mem[64]
           len t + (32 * _847) + -mem[64] + 32
    mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = 96
    s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
    idx = Mask(254, 0, arg1.length) * 0.25
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    _319 = mem[64]
    mem[mem[64]] = Mask(254, 0, arg1.length) * 0.25
    mem[64] = mem[64] + (8 * Mask(251, 2, arg1.length)) + 32
    if not Mask(256, -2, arg1.length):
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            _604 = mem[(4 * idx) + 100]
            mem[mem[64] + 4] = mem[(4 * idx) + 128 len 4]
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_604 << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _642 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _674 = mem[_642]
            require mem[_642] == mem[_642 + 12 len 20]
            mem[mem[64]] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = uint32(_604)
            require ext_code.size(sub_a4a6546eAddress)
            staticcall sub_a4a6546eAddress.summoner_name(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_604 << 224)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _749 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _754 = mem[_749]
            require mem[_749] <= test266151307()
            require _749 + return_data.size > _749 + mem[_749] + 31
            _758 = mem[_749 + mem[_749]]
            if mem[_749 + mem[_749]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_749 + mem[_749]])) + 1 < 0 or _749 + ceil32(return_data.size) + ceil32(ceil32(mem[_749 + mem[_749]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _749 + ceil32(return_data.size) + ceil32(ceil32(mem[_749 + mem[_749]])) + 1
            mem[_749 + ceil32(return_data.size)] = _758
            require _754 + _758 + 32 <= return_data.size
            s = 0
            while s < _758:
                mem[s + _749 + ceil32(return_data.size) + 32] = mem[s + _749 + _754 + 32]
                s = s + 32
                continue 
            if ceil32(_758) <= _758:
                mem[mem[64] + 4] = uint32(_604)
                require ext_code.size(sub_fff049e6Address)
                staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_604 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _909 = mem[_896]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_674)
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _749 + ceil32(return_data.size)
                if idx >= mem[_319]:
                    revert with 0, 50
                mem[(32 * idx) + _319 + 32] = _909
            else:
                mem[_749 + ceil32(return_data.size) + _758 + 32] = 0
                mem[mem[64] + 4] = uint32(_604)
                require ext_code.size(sub_fff049e6Address)
                staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_604 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _902 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _917 = mem[_902]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_674)
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _749 + ceil32(return_data.size)
                if idx >= mem[_319]:
                    revert with 0, 50
                mem[(32 * idx) + _319 + 32] = _917
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _612 = mem[64]
        mem[mem[64]] = 96
        _626 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        idx = 0
        s = ceil32(ceil32(arg1.length)) + 129
        t = mem[64] + 128
        while idx < _626:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_612 + 32] = (32 * _626) + 128
        _838 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_612 + (32 * _626) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        idx = 0
        s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
        t = _612 + (32 * _626) + (32 * _838) + 160
        u = _612 + (32 * _626) + 160
        while idx < _838:
            mem[u] = t + -_612 + -(32 * _626) - 160
            _952 = mem[s]
            _953 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _953:
                mem[v + t + 32] = mem[v + _952 + 32]
                v = v + 32
                continue 
            if ceil32(_953) > _953:
                mem[t + _953 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_953) + t + 32
            u = u + 32
            continue 
        mem[_612 + 64] = t - _612
        _958 = mem[_319]
        mem[t] = mem[_319]
        mem[t + 32 len 32 * _958] = mem[_319 + 32 len 32 * _958]
        var40001 = _958
        return memory
          from mem[64]
           len t + (32 * _958) + -mem[64] + 32
    mem[_319 + 32 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    idx = 0
    while idx < Mask(254, 0, arg1.length) * 0.25:
        _606 = mem[(4 * idx) + 100]
        mem[mem[64] + 4] = mem[(4 * idx) + 128 len 4]
        require ext_code.size(sub_dacaa9d1Address)
        staticcall sub_dacaa9d1Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args (_606 << 224)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _643 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _675 = mem[_643]
        require mem[_643] == mem[_643 + 12 len 20]
        mem[mem[64]] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint32(_606)
        require ext_code.size(sub_a4a6546eAddress)
        staticcall sub_a4a6546eAddress.summoner_name(uint256 arg1) with:
                gas gas_remaining wei
               args (_606 << 224)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _751 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _755 = mem[_751]
        require mem[_751] <= test266151307()
        require _751 + return_data.size > _751 + mem[_751] + 31
        _759 = mem[_751 + mem[_751]]
        if mem[_751 + mem[_751]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_751 + mem[_751]])) + 1 < 0 or _751 + ceil32(return_data.size) + ceil32(ceil32(mem[_751 + mem[_751]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _751 + ceil32(return_data.size) + ceil32(ceil32(mem[_751 + mem[_751]])) + 1
        mem[_751 + ceil32(return_data.size)] = _759
        require _755 + _759 + 32 <= return_data.size
        s = 0
        while s < _759:
            mem[s + _751 + ceil32(return_data.size) + 32] = mem[s + _751 + _755 + 32]
            s = s + 32
            continue 
        if ceil32(_759) <= _759:
            mem[mem[64] + 4] = uint32(_606)
            require ext_code.size(sub_fff049e6Address)
            staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_606 << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _899 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _911 = mem[_899]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_675)
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _751 + ceil32(return_data.size)
            if idx >= mem[_319]:
                revert with 0, 50
            mem[(32 * idx) + _319 + 32] = _911
        else:
            mem[_751 + ceil32(return_data.size) + _759 + 32] = 0
            mem[mem[64] + 4] = uint32(_606)
            require ext_code.size(sub_fff049e6Address)
            staticcall sub_fff049e6Address.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_606 << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _903 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _919 = mem[_903]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = address(_675)
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _751 + ceil32(return_data.size)
            if idx >= mem[_319]:
                revert with 0, 50
            mem[(32 * idx) + _319 + 32] = _919
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _614 = mem[64]
    mem[mem[64]] = 96
    _627 = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
    idx = 0
    s = ceil32(ceil32(arg1.length)) + 129
    t = mem[64] + 128
    while idx < _627:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_614 + 32] = (32 * _627) + 128
    _841 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
    mem[_614 + (32 * _627) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
    idx = 0
    s = ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161
    t = _614 + (32 * _627) + (32 * _841) + 160
    u = _614 + (32 * _627) + 160
    while idx < _841:
        mem[u] = t + -_614 + -(32 * _627) - 160
        _954 = mem[s]
        _955 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _955:
            mem[v + t + 32] = mem[v + _954 + 32]
            v = v + 32
            continue 
        if ceil32(_955) > _955:
            mem[t + _955 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_955) + t + 32
        u = u + 32
        continue 
    mem[_614 + 64] = t - _614
    _959 = mem[_319]
    mem[t] = mem[_319]
    mem[t + 32 len 32 * _959] = mem[_319 + 32 len 32 * _959]
    var41001 = _959
    return memory
      from mem[64]
       len t + (32 * _959) + -mem[64] + 32
}

function sub_7b6d9c87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = Mask(254, 0, arg1.length) * 0.25
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129] = Mask(254, 0, arg1.length) * 0.25
        if not Mask(256, -2, arg1.length):
            if Mask(254, 0, arg1.length) * 0.25 > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
            if not Mask(256, -2, arg1.length):
                if Mask(254, 0, arg1.length) * 0.25 > test266151307():
                    revert with 0, 65
                mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193] = Mask(254, 0, arg1.length) * 0.25
                mem[64] = ceil32(ceil32(arg1.length)) + (35 * Mask(254, 2, arg1.length)) + 225
                if not Mask(256, -2, arg1.length):
                    idx = 0
                    while idx < Mask(254, 0, arg1.length) * 0.25:
                        require ext_code.size(sub_dacaa9d1Address)
                        staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                                gas gas_remaining wei
                               args (mem[(4 * idx) + 100] << 224)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _434 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _467 = mem[_434 + 32]
                        _468 = mem[_434 + 64]
                        _469 = mem[_434 + 96]
                        if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_434]
                        if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _467
                        if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _468
                        if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _469
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    _450 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 160 len 32 * _450] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _450]
                    mem[mem[64] + 32] = (32 * _450) + 160
                    _738 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                    mem[mem[64] + (32 * _450) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                    mem[mem[64] + (32 * _450) + 192 len 32 * _738] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _738]
                    mem[mem[64] + 64] = (32 * _450) + (32 * _738) + 192
                    _866 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                    mem[mem[64] + (32 * _450) + (32 * _738) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                    mem[mem[64] + (32 * _450) + (32 * _738) + 224 len 32 * _866] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _866]
                    mem[mem[64] + 96] = (32 * _450) + (32 * _738) + (32 * _866) + 224
                    _962 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                    mem[mem[64] + (32 * _450) + (32 * _738) + (32 * _866) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                    mem[mem[64] + (32 * _450) + (32 * _738) + (32 * _866) + 256 len 32 * _962] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _962]
                    return 128, 
                           (32 * _450) + 160,
                           (32 * _450) + (32 * _738) + 192,
                           (32 * _450) + (32 * _738) + (32 * _866) + 224,
                           mem[mem[64] + 128 len (32 * _450) + (32 * _738) + (32 * _866) + (32 * _962) + 128]
                mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
                idx = 0
                while idx < Mask(254, 0, arg1.length) * 0.25:
                    require ext_code.size(sub_dacaa9d1Address)
                    staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args (mem[(4 * idx) + 100] << 224)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _471 = mem[_435 + 32]
                    _472 = mem[_435 + 64]
                    _473 = mem[_435 + 96]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_435]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _471
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _472
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _473
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _419 = mem[64]
                mem[mem[64]] = 128
                _451 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 160 len 32 * _451] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _451]
                mem[mem[64] + 32] = (32 * _451) + 160
                _739 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                mem[mem[64] + (32 * _451) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                mem[mem[64] + (32 * _451) + 192 len 32 * _739] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _739]
                mem[mem[64] + 64] = (32 * _451) + (32 * _739) + 192
                _867 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_419 + (32 * _451) + (32 * _739) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_419 + (32 * _451) + (32 * _739) + 224 len 32 * _867] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _867]
                mem[_419 + 96] = (32 * _451) + (32 * _739) + (32 * _867) + 224
                _963 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_419 + (32 * _451) + (32 * _739) + (32 * _867) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_419 + (32 * _451) + (32 * _739) + (32 * _867) + 256 len 32 * _963] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _963]
                return memory
                  from mem[64]
                   len _419 + (32 * _451) + (32 * _739) + (32 * _867) + (32 * _963) + -mem[64] + 256
            mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
            if Mask(254, 0, arg1.length) * 0.25 > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193] = Mask(254, 0, arg1.length) * 0.25
            mem[64] = ceil32(ceil32(arg1.length)) + (35 * Mask(254, 2, arg1.length)) + 225
            if not Mask(256, -2, arg1.length):
                idx = 0
                while idx < Mask(254, 0, arg1.length) * 0.25:
                    require ext_code.size(sub_dacaa9d1Address)
                    staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args (mem[(4 * idx) + 100] << 224)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _436 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _475 = mem[_436 + 32]
                    _476 = mem[_436 + 64]
                    _477 = mem[_436 + 96]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_436]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _475
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _476
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _477
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _420 = mem[64]
                mem[mem[64]] = 128
                _452 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 160 len 32 * _452] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _452]
                mem[mem[64] + 32] = (32 * _452) + 160
                _740 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                mem[mem[64] + (32 * _452) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                mem[mem[64] + (32 * _452) + 192 len 32 * _740] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _740]
                mem[mem[64] + 64] = (32 * _452) + (32 * _740) + 192
                _868 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_420 + (32 * _452) + (32 * _740) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_420 + (32 * _452) + (32 * _740) + 224 len 32 * _868] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _868]
                mem[_420 + 96] = (32 * _452) + (32 * _740) + (32 * _868) + 224
                _964 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_420 + (32 * _452) + (32 * _740) + (32 * _868) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_420 + (32 * _452) + (32 * _740) + (32 * _868) + 256 len 32 * _964] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _964]
                return memory
                  from mem[64]
                   len _420 + (32 * _452) + (32 * _740) + (32 * _868) + (32 * _964) + -mem[64] + 256
            mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _437 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _479 = mem[_437 + 32]
                _480 = mem[_437 + 64]
                _481 = mem[_437 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_437]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _479
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _480
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _481
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _421 = mem[64]
            mem[mem[64]] = 128
            _453 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 160 len 32 * _453] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _453]
            mem[mem[64] + 32] = (32 * _453) + 160
            _741 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _453) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _453) + 192 len 32 * _741] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _741]
            mem[mem[64] + 64] = (32 * _453) + (32 * _741) + 192
            _869 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_421 + (32 * _453) + (32 * _741) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_421 + (32 * _453) + (32 * _741) + 224 len 32 * _869] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _869]
            mem[_421 + 96] = (32 * _453) + (32 * _741) + (32 * _869) + 224
            _965 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_421 + (32 * _453) + (32 * _741) + (32 * _869) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_421 + (32 * _453) + (32 * _741) + (32 * _869) + 256 len 32 * _965] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _965]
            return memory
              from mem[64]
               len _421 + (32 * _453) + (32 * _741) + (32 * _869) + (32 * _965) + -mem[64] + 256
        mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
        if not Mask(256, -2, arg1.length):
            if Mask(254, 0, arg1.length) * 0.25 > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193] = Mask(254, 0, arg1.length) * 0.25
            mem[64] = ceil32(ceil32(arg1.length)) + (35 * Mask(254, 2, arg1.length)) + 225
            if not Mask(256, -2, arg1.length):
                idx = 0
                while idx < Mask(254, 0, arg1.length) * 0.25:
                    require ext_code.size(sub_dacaa9d1Address)
                    staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args (mem[(4 * idx) + 100] << 224)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _438 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _483 = mem[_438 + 32]
                    _484 = mem[_438 + 64]
                    _485 = mem[_438 + 96]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_438]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _483
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _484
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _485
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _422 = mem[64]
                mem[mem[64]] = 128
                _454 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 160 len 32 * _454] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _454]
                mem[mem[64] + 32] = (32 * _454) + 160
                _742 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                mem[mem[64] + (32 * _454) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                mem[mem[64] + (32 * _454) + 192 len 32 * _742] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _742]
                mem[mem[64] + 64] = (32 * _454) + (32 * _742) + 192
                _870 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_422 + (32 * _454) + (32 * _742) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_422 + (32 * _454) + (32 * _742) + 224 len 32 * _870] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _870]
                mem[_422 + 96] = (32 * _454) + (32 * _742) + (32 * _870) + 224
                _966 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_422 + (32 * _454) + (32 * _742) + (32 * _870) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_422 + (32 * _454) + (32 * _742) + (32 * _870) + 256 len 32 * _966] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _966]
                return memory
                  from mem[64]
                   len _422 + (32 * _454) + (32 * _742) + (32 * _870) + (32 * _966) + -mem[64] + 256
            mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _487 = mem[_439 + 32]
                _488 = mem[_439 + 64]
                _489 = mem[_439 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_439]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _487
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _488
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _489
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _455 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 160 len 32 * _455] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _455]
            mem[mem[64] + 32] = (32 * _455) + 160
            _743 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _455) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _455) + 192 len 32 * _743] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _743]
            mem[mem[64] + 64] = (32 * _455) + (32 * _743) + 192
            _871 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[mem[64] + (32 * _455) + (32 * _743) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[mem[64] + (32 * _455) + (32 * _743) + 224 len 32 * _871] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _871]
            mem[mem[64] + 96] = (32 * _455) + (32 * _743) + (32 * _871) + 224
            _967 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[mem[64] + (32 * _455) + (32 * _743) + (32 * _871) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[mem[64] + (32 * _455) + (32 * _743) + (32 * _871) + 256 len 32 * _967] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _967]
            return 128, 
                   (32 * _455) + 160,
                   (32 * _455) + (32 * _743) + 192,
                   (32 * _455) + (32 * _743) + (32 * _871) + 224,
                   mem[mem[64] + 128 len (32 * _455) + (32 * _743) + (32 * _871) + (32 * _967) + 128]
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (35 * Mask(254, 2, arg1.length)) + 225
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _491 = mem[_440 + 32]
                _492 = mem[_440 + 64]
                _493 = mem[_440 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_440]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _491
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _492
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _493
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _456 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 160 len 32 * _456] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _456]
            mem[mem[64] + 32] = (32 * _456) + 160
            _744 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _456) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _456) + 192 len 32 * _744] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _744]
            mem[mem[64] + 64] = (32 * _456) + (32 * _744) + 192
            _872 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[mem[64] + (32 * _456) + (32 * _744) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[mem[64] + (32 * _456) + (32 * _744) + 224 len 32 * _872] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _872]
            mem[mem[64] + 96] = (32 * _456) + (32 * _744) + (32 * _872) + 224
            _968 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[mem[64] + (32 * _456) + (32 * _744) + (32 * _872) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[mem[64] + (32 * _456) + (32 * _744) + (32 * _872) + 256 len 32 * _968] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _968]
            return 128, 
                   (32 * _456) + 160,
                   (32 * _456) + (32 * _744) + 192,
                   (32 * _456) + (32 * _744) + (32 * _872) + 224,
                   mem[mem[64] + 128 len (32 * _456) + (32 * _744) + (32 * _872) + (32 * _968) + 128]
        mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _495 = mem[_441 + 32]
            _496 = mem[_441 + 64]
            _497 = mem[_441 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_441]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _495
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _496
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _497
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        _457 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 160 len 32 * _457] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _457]
        mem[mem[64] + 32] = (32 * _457) + 160
        _745 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
        mem[mem[64] + (32 * _457) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
        mem[mem[64] + (32 * _457) + 192 len 32 * _745] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _745]
        mem[mem[64] + 64] = (32 * _457) + (32 * _745) + 192
        _873 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[mem[64] + (32 * _457) + (32 * _745) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[mem[64] + (32 * _457) + (32 * _745) + 224 len 32 * _873] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _873]
        mem[mem[64] + 96] = (32 * _457) + (32 * _745) + (32 * _873) + 224
        _969 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[mem[64] + (32 * _457) + (32 * _745) + (32 * _873) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[mem[64] + (32 * _457) + (32 * _745) + (32 * _873) + 256 len 32 * _969] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _969]
        return 128, 
               (32 * _457) + 160,
               (32 * _457) + (32 * _745) + 192,
               (32 * _457) + (32 * _745) + (32 * _873) + 224,
               mem[mem[64] + 128 len (32 * _457) + (32 * _745) + (32 * _873) + (32 * _969) + 128]
    mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129] = Mask(254, 0, arg1.length) * 0.25
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
        if not Mask(256, -2, arg1.length):
            if Mask(254, 0, arg1.length) * 0.25 > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193] = Mask(254, 0, arg1.length) * 0.25
            mem[64] = ceil32(ceil32(arg1.length)) + (35 * Mask(254, 2, arg1.length)) + 225
            if not Mask(256, -2, arg1.length):
                idx = 0
                while idx < Mask(254, 0, arg1.length) * 0.25:
                    require ext_code.size(sub_dacaa9d1Address)
                    staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args (mem[(4 * idx) + 100] << 224)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _442 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _499 = mem[_442 + 32]
                    _500 = mem[_442 + 64]
                    _501 = mem[_442 + 96]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_442]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _499
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _500
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _501
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                _458 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 160 len 32 * _458] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _458]
                mem[mem[64] + 32] = (32 * _458) + 160
                _746 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                mem[mem[64] + (32 * _458) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
                mem[mem[64] + (32 * _458) + 192 len 32 * _746] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _746]
                mem[mem[64] + 64] = (32 * _458) + (32 * _746) + 192
                _874 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[mem[64] + (32 * _458) + (32 * _746) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[mem[64] + (32 * _458) + (32 * _746) + 224 len 32 * _874] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _874]
                mem[mem[64] + 96] = (32 * _458) + (32 * _746) + (32 * _874) + 224
                _970 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[mem[64] + (32 * _458) + (32 * _746) + (32 * _874) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[mem[64] + (32 * _458) + (32 * _746) + (32 * _874) + 256 len 32 * _970] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _970]
                return 128, 
                       (32 * _458) + 160,
                       (32 * _458) + (32 * _746) + 192,
                       (32 * _458) + (32 * _746) + (32 * _874) + 224,
                       mem[mem[64] + 128 len (32 * _458) + (32 * _746) + (32 * _874) + (32 * _970) + 128]
            mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _503 = mem[_443 + 32]
                _504 = mem[_443 + 64]
                _505 = mem[_443 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_443]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _503
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _504
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _505
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _459 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 160 len 32 * _459] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _459]
            mem[mem[64] + 32] = (32 * _459) + 160
            _747 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _459) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _459) + 192 len 32 * _747] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _747]
            mem[mem[64] + 64] = (32 * _459) + (32 * _747) + 192
            _875 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[mem[64] + (32 * _459) + (32 * _747) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[mem[64] + (32 * _459) + (32 * _747) + 224 len 32 * _875] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _875]
            mem[mem[64] + 96] = (32 * _459) + (32 * _747) + (32 * _875) + 224
            _971 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[mem[64] + (32 * _459) + (32 * _747) + (32 * _875) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[mem[64] + (32 * _459) + (32 * _747) + (32 * _875) + 256 len 32 * _971] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _971]
            return 128, 
                   (32 * _459) + 160,
                   (32 * _459) + (32 * _747) + 192,
                   (32 * _459) + (32 * _747) + (32 * _875) + 224,
                   mem[mem[64] + 128 len (32 * _459) + (32 * _747) + (32 * _875) + (32 * _971) + 128]
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (35 * Mask(254, 2, arg1.length)) + 225
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _444 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _507 = mem[_444 + 32]
                _508 = mem[_444 + 64]
                _509 = mem[_444 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_444]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _507
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _508
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _509
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _428 = mem[64]
            mem[mem[64]] = 128
            _460 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 160 len 32 * _460] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _460]
            mem[mem[64] + 32] = (32 * _460) + 160
            _748 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _460) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _460) + 192 len 32 * _748] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _748]
            mem[mem[64] + 64] = (32 * _460) + (32 * _748) + 192
            _876 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_428 + (32 * _460) + (32 * _748) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_428 + (32 * _460) + (32 * _748) + 224 len 32 * _876] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _876]
            mem[_428 + 96] = (32 * _460) + (32 * _748) + (32 * _876) + 224
            _972 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_428 + (32 * _460) + (32 * _748) + (32 * _876) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_428 + (32 * _460) + (32 * _748) + (32 * _876) + 256 len 32 * _972] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _972]
            return memory
              from mem[64]
               len _428 + (32 * _460) + (32 * _748) + (32 * _876) + (32 * _972) + -mem[64] + 256
        mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _445 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _511 = mem[_445 + 32]
            _512 = mem[_445 + 64]
            _513 = mem[_445 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_445]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _511
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _512
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _513
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _429 = mem[64]
        mem[mem[64]] = 128
        _461 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 160 len 32 * _461] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _461]
        mem[mem[64] + 32] = (32 * _461) + 160
        _749 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
        mem[mem[64] + (32 * _461) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
        mem[mem[64] + (32 * _461) + 192 len 32 * _749] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _749]
        mem[mem[64] + 64] = (32 * _461) + (32 * _749) + 192
        _877 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_429 + (32 * _461) + (32 * _749) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_429 + (32 * _461) + (32 * _749) + 224 len 32 * _877] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _877]
        mem[_429 + 96] = (32 * _461) + (32 * _749) + (32 * _877) + 224
        _973 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_429 + (32 * _461) + (32 * _749) + (32 * _877) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_429 + (32 * _461) + (32 * _749) + (32 * _877) + 256 len 32 * _973] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _973]
        return memory
          from mem[64]
           len _429 + (32 * _461) + (32 * _749) + (32 * _877) + (32 * _973) + -mem[64] + 256
    mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (35 * Mask(254, 2, arg1.length)) + 225
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _446 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _515 = mem[_446 + 32]
                _516 = mem[_446 + 64]
                _517 = mem[_446 + 96]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_446]
                if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _515
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _516
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _517
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _430 = mem[64]
            mem[mem[64]] = 128
            _462 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 160 len 32 * _462] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _462]
            mem[mem[64] + 32] = (32 * _462) + 160
            _750 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _462) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
            mem[mem[64] + (32 * _462) + 192 len 32 * _750] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _750]
            mem[mem[64] + 64] = (32 * _462) + (32 * _750) + 192
            _878 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_430 + (32 * _462) + (32 * _750) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_430 + (32 * _462) + (32 * _750) + 224 len 32 * _878] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _878]
            mem[_430 + 96] = (32 * _462) + (32 * _750) + (32 * _878) + 224
            _974 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_430 + (32 * _462) + (32 * _750) + (32 * _878) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_430 + (32 * _462) + (32 * _750) + (32 * _878) + 256 len 32 * _974] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _974]
            return memory
              from mem[64]
               len _430 + (32 * _462) + (32 * _750) + (32 * _878) + (32 * _974) + -mem[64] + 256
        mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _447 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _519 = mem[_447 + 32]
            _520 = mem[_447 + 64]
            _521 = mem[_447 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_447]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _519
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _520
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _521
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _431 = mem[64]
        mem[mem[64]] = 128
        _463 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 160 len 32 * _463] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _463]
        mem[mem[64] + 32] = (32 * _463) + 160
        _751 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
        mem[mem[64] + (32 * _463) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
        mem[mem[64] + (32 * _463) + 192 len 32 * _751] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _751]
        mem[mem[64] + 64] = (32 * _463) + (32 * _751) + 192
        _879 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_431 + (32 * _463) + (32 * _751) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_431 + (32 * _463) + (32 * _751) + 224 len 32 * _879] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _879]
        mem[_431 + 96] = (32 * _463) + (32 * _751) + (32 * _879) + 224
        _975 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_431 + (32 * _463) + (32 * _751) + (32 * _879) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_431 + (32 * _463) + (32 * _751) + (32 * _879) + 256 len 32 * _975] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _975]
        return memory
          from mem[64]
           len _431 + (32 * _463) + (32 * _751) + (32 * _879) + (32 * _975) + -mem[64] + 256
    mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193] = Mask(254, 0, arg1.length) * 0.25
    mem[64] = ceil32(ceil32(arg1.length)) + (35 * Mask(254, 2, arg1.length)) + 225
    if not Mask(256, -2, arg1.length):
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _523 = mem[_448 + 32]
            _524 = mem[_448 + 64]
            _525 = mem[_448 + 96]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_448]
            if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _523
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _524
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _525
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _432 = mem[64]
        mem[mem[64]] = 128
        _464 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 160 len 32 * _464] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _464]
        mem[mem[64] + 32] = (32 * _464) + 160
        _752 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
        mem[mem[64] + (32 * _464) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
        mem[mem[64] + (32 * _464) + 192 len 32 * _752] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _752]
        mem[mem[64] + 64] = (32 * _464) + (32 * _752) + 192
        _880 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_432 + (32 * _464) + (32 * _752) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_432 + (32 * _464) + (32 * _752) + 224 len 32 * _880] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _880]
        mem[_432 + 96] = (32 * _464) + (32 * _752) + (32 * _880) + 224
        _976 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_432 + (32 * _464) + (32 * _752) + (32 * _880) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_432 + (32 * _464) + (32 * _752) + (32 * _880) + 256 len 32 * _976] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _976]
        return memory
          from mem[64]
           len _432 + (32 * _464) + (32 * _752) + (32 * _880) + (32 * _976) + -mem[64] + 256
    mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    idx = 0
    while idx < Mask(254, 0, arg1.length) * 0.25:
        require ext_code.size(sub_dacaa9d1Address)
        staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args (mem[(4 * idx) + 100] << 224)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _449 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _527 = mem[_449 + 32]
        _528 = mem[_449 + 64]
        _529 = mem[_449 + 96]
        if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[_449]
        if idx >= mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225] = _527
        if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _528
        if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _529
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _433 = mem[64]
    mem[mem[64]] = 128
    _465 = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 160 len 32 * _465] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _465]
    mem[mem[64] + 32] = (32 * _465) + 160
    _753 = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
    mem[mem[64] + (32 * _465) + 160] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193]
    mem[mem[64] + (32 * _465) + 192 len 32 * _753] = mem[ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 225 len 32 * _753]
    mem[mem[64] + 64] = (32 * _465) + (32 * _753) + 192
    _881 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
    mem[_433 + (32 * _465) + (32 * _753) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
    mem[_433 + (32 * _465) + (32 * _753) + 224 len 32 * _881] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _881]
    mem[_433 + 96] = (32 * _465) + (32 * _753) + (32 * _881) + 224
    _977 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
    mem[_433 + (32 * _465) + (32 * _753) + (32 * _881) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
    mem[_433 + (32 * _465) + (32 * _753) + (32 * _881) + 256 len 32 * _977] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _977]
    return memory
      from mem[64]
       len _433 + (32 * _465) + (32 * _753) + (32 * _881) + (32 * _977) + -mem[64] + 256
}



}
