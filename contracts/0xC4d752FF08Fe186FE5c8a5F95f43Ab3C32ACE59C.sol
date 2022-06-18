contract main {




// =====================  Runtime code  =====================


address owner;
address sub_dacaa9d1Address;

function owner() payable {
    return owner
}

function sub_dacaa9d1(?) payable {
    return sub_dacaa9d1Address
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
    require arg1 + 35 < calldata.size
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

function sub_7b6d9c87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
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
                    _418 = mem[64]
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
                    mem[_418 + (32 * _450) + (32 * _738) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                    mem[_418 + (32 * _450) + (32 * _738) + 224 len 32 * _866] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _866]
                    mem[_418 + 96] = (32 * _450) + (32 * _738) + (32 * _866) + 224
                    _962 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                    mem[_418 + (32 * _450) + (32 * _738) + (32 * _866) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                    mem[_418 + (32 * _450) + (32 * _738) + (32 * _866) + 256 len 32 * _962] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _962]
                    return memory
                      from mem[64]
                       len _418 + (32 * _450) + (32 * _738) + (32 * _866) + (32 * _962) + -mem[64] + 256
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
            _423 = mem[64]
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
            mem[_423 + (32 * _455) + (32 * _743) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_423 + (32 * _455) + (32 * _743) + 224 len 32 * _871] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _871]
            mem[_423 + 96] = (32 * _455) + (32 * _743) + (32 * _871) + 224
            _967 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_423 + (32 * _455) + (32 * _743) + (32 * _871) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_423 + (32 * _455) + (32 * _743) + (32 * _871) + 256 len 32 * _967] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _967]
            return memory
              from mem[64]
               len _423 + (32 * _455) + (32 * _743) + (32 * _871) + (32 * _967) + -mem[64] + 256
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
            _424 = mem[64]
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
            mem[_424 + (32 * _456) + (32 * _744) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_424 + (32 * _456) + (32 * _744) + 224 len 32 * _872] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _872]
            mem[_424 + 96] = (32 * _456) + (32 * _744) + (32 * _872) + 224
            _968 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_424 + (32 * _456) + (32 * _744) + (32 * _872) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_424 + (32 * _456) + (32 * _744) + (32 * _872) + 256 len 32 * _968] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _968]
            return memory
              from mem[64]
               len _424 + (32 * _456) + (32 * _744) + (32 * _872) + (32 * _968) + -mem[64] + 256
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
        _425 = mem[64]
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
        mem[_425 + (32 * _457) + (32 * _745) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_425 + (32 * _457) + (32 * _745) + 224 len 32 * _873] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _873]
        mem[_425 + 96] = (32 * _457) + (32 * _745) + (32 * _873) + 224
        _969 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_425 + (32 * _457) + (32 * _745) + (32 * _873) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_425 + (32 * _457) + (32 * _745) + (32 * _873) + 256 len 32 * _969] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _969]
        return memory
          from mem[64]
           len _425 + (32 * _457) + (32 * _745) + (32 * _873) + (32 * _969) + -mem[64] + 256
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
            _427 = mem[64]
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
            mem[_427 + (32 * _459) + (32 * _747) + 192] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_427 + (32 * _459) + (32 * _747) + 224 len 32 * _875] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _875]
            mem[_427 + 96] = (32 * _459) + (32 * _747) + (32 * _875) + 224
            _971 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_427 + (32 * _459) + (32 * _747) + (32 * _875) + 224] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_427 + (32 * _459) + (32 * _747) + (32 * _875) + 256 len 32 * _971] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _971]
            return memory
              from mem[64]
               len _427 + (32 * _459) + (32 * _747) + (32 * _875) + (32 * _971) + -mem[64] + 256
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
