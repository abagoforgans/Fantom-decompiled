contract main {




// =====================  Runtime code  =====================


#
#  - sub_0773b509(?)
#  - sub_1a8d1ab2(?)
#  - sub_96b3ab6c(?)
#  - sub_ca81fc0a(?)
#  - _fallback()
#
mapping of uint8 stor1;

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    stor1[address(arg1)] = 1
}

function sub_9886ccd5(?) {
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5b8bfaea(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    require ext_code.size(address(arg1))
    call address(arg1).burn(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_3412b979(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, address(msg.sender), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function payout(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
}

function sub_6d9cec22(?) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(160, 96, arg1)
    require arg2 == Mask(160, 96, arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    if uint64(arg2) > -msg.sender + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if address(msg.sender + uint64(arg2)) < 3735932941:
        revert with 0, 17
    require ext_code.size(address(address(arg1) >> 96 xor address(msg.sender + uint64(arg2)) - 3735932941))
    call address(address(arg1) >> 96 xor address(msg.sender + uint64(arg2)) - 3735932941).skim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0363e1a8(?) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(160, 96, arg1)
    require arg2 == Mask(160, 96, arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'o'
    if uint64(arg2) > -msg.sender + 0xffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if address(msg.sender + uint64(arg2)) < 275969102669431:
        revert with 0, 17
    require ext_code.size(address(address(arg1) >> 96 xor address(msg.sender + uint64(arg2)) - 275969102669431))
    call address(address(arg1) >> 96 xor address(msg.sender + uint64(arg2)) - 275969102669431).skim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_96919a5a(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < (32 * ('cd', 68).length) + cd[68] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    s = cd[4]
    t = cd[36]
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 0, 50
        _3328 = mem[(32 * idx) + 128]
        _3331 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_3331 + 32] = 0xdfe168100000000000000000000000000000000000000000000000000000000 or mem[_3331 + 36 len 28]
        u = 0
        while u < mem[_3331]:
            mem[u + _3331 + 36] = mem[u + _3331 + 32]
            u = u + 32
            continue 
        if ceil32(mem[_3331]) <= mem[_3331]:
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_3331] + _3331 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    _4997 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_4997 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_4997 + 36 len 28]
                    u = 0
                    while u < mem[_4997]:
                        mem[u + _4997 + 36] = mem[u + _4997 + 32]
                        u = u + 32
                        continue 
                    if ceil32(mem[_4997]) <= mem[_4997]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_4997] + _4997 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'l'
                            require mem[96] >= 64
                            _6713 = mem[128]
                            _6714 = mem[160]
                            if not address(s):
                                if mem[128] <= 0:
                                    revert with 0, 'l'
                                if mem[160] <= 0:
                                    revert with 0, 'l'
                                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                    revert with 0, 17
                                if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if 1000 * mem[128] > !(997 * t):
                                    revert with 0, 17
                                if 997 * t and mem[160] > -1 / 997 * t:
                                    revert with 0, 17
                                if not (1000 * mem[128]) + (997 * t):
                                    revert with 0, 18
                                if address(s):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                    continue 
                                _7161 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_7161 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7161 + 36 len 28]
                                s = 0
                                while s < mem[_7161]:
                                    mem[s + _7161 + 36] = mem[s + _7161 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_7161]) <= mem[_7161]:
                                    staticcall address(_3328).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_7161] + _7161 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = 0
                                            t = 997 * t * _6714 / (1000 * _6713) + (997 * t)
                                            continue 
                                        require mem[96] >= 32
                                        require mem[128] == mem[140 len 20]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = mem[128]
                                        t = 997 * t * _6714 / (1000 * _6713) + (997 * t)
                                        continue 
                                    _8377 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_8377] = return_data.size
                                    mem[_8377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _6714 / (1000 * _6713) + (997 * t)
                                        continue 
                                    require return_data.size >= 32
                                    require mem[_8377 + 32] == mem[_8377 + 44 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[_8377 + 32]
                                    t = 997 * t * _6714 / (1000 * _6713) + (997 * t)
                                    continue 
                                mem[_7161 + mem[_7161] + 36] = 0
                                staticcall address(_3328).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_7161] + _7161 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _6714 / (1000 * _6713) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _6714 / (1000 * _6713) + (997 * t)
                                    continue 
                                _8505 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8505] = return_data.size
                                mem[_8505 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6714 / (1000 * _6713) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_8505 + 32] == mem[_8505 + 44 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_8505 + 32]
                                t = 997 * t * _6714 / (1000 * _6713) + (997 * t)
                                continue 
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * mem[160] > !(997 * t):
                                revert with 0, 17
                            if 997 * t and mem[128] > -1 / 997 * t:
                                revert with 0, 17
                            if not (1000 * mem[160]) + (997 * t):
                                revert with 0, 18
                            if address(s):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                                continue 
                            _7210 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_7210 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7210 + 36 len 28]
                            s = 0
                            while s < mem[_7210]:
                                mem[s + _7210 + 36] = mem[s + _7210 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_7210]) <= mem[_7210]:
                                staticcall address(_3328).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_7210] + _7210 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _6713 / (1000 * _6714) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _6713 / (1000 * _6714) + (997 * t)
                                    continue 
                                _8379 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8379] = return_data.size
                                mem[_8379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6713 / (1000 * _6714) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_8379 + 32] == mem[_8379 + 44 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_8379 + 32]
                                t = 997 * t * _6713 / (1000 * _6714) + (997 * t)
                                continue 
                            mem[_7210 + mem[_7210] + 36] = 0
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7210] + _7210 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6713 / (1000 * _6714) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6713 / (1000 * _6714) + (997 * t)
                                continue 
                            _8506 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8506] = return_data.size
                            mem[_8506 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6713 / (1000 * _6714) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8506 + 32] == mem[_8506 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8506 + 32]
                            t = 997 * t * _6713 / (1000 * _6714) + (997 * t)
                            continue 
                        _6657 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6657] = return_data.size
                        mem[_6657 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'l'
                        require return_data.size >= 64
                        _6715 = mem[_6657 + 32]
                        _6716 = mem[_6657 + 64]
                        if not address(s):
                            if mem[_6657 + 32] <= 0:
                                revert with 0, 'l'
                            if mem[_6657 + 64] <= 0:
                                revert with 0, 'l'
                            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if mem[_6657 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * mem[_6657 + 32] > !(997 * t):
                                revert with 0, 17
                            if 997 * t and mem[_6657 + 64] > -1 / 997 * t:
                                revert with 0, 17
                            if not (1000 * mem[_6657 + 32]) + (997 * t):
                                revert with 0, 18
                            if address(s):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[_6657 + 64] / (1000 * mem[_6657 + 32]) + (997 * t)
                                continue 
                            _7164 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_7164 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7164 + 36 len 28]
                            s = 0
                            while s < mem[_7164]:
                                mem[s + _7164 + 36] = mem[s + _7164 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_7164]) <= mem[_7164]:
                                staticcall address(_3328).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_7164] + _7164 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _6716 / (1000 * _6715) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _6716 / (1000 * _6715) + (997 * t)
                                    continue 
                                _8381 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8381] = return_data.size
                                mem[_8381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6716 / (1000 * _6715) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_8381 + 32] == mem[_8381 + 44 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_8381 + 32]
                                t = 997 * t * _6716 / (1000 * _6715) + (997 * t)
                                continue 
                            mem[_7164 + mem[_7164] + 36] = 0
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7164] + _7164 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6716 / (1000 * _6715) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6716 / (1000 * _6715) + (997 * t)
                                continue 
                            _8507 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8507] = return_data.size
                            mem[_8507 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6716 / (1000 * _6715) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8507 + 32] == mem[_8507 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8507 + 32]
                            t = 997 * t * _6716 / (1000 * _6715) + (997 * t)
                            continue 
                        if mem[_6657 + 64] <= 0:
                            revert with 0, 'l'
                        if mem[_6657 + 32] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[_6657 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_6657 + 64] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[_6657 + 32] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[_6657 + 64]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[_6657 + 32] / (1000 * mem[_6657 + 64]) + (997 * t)
                            continue 
                        _7214 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7214 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7214 + 36 len 28]
                        s = 0
                        while s < mem[_7214]:
                            mem[s + _7214 + 36] = mem[s + _7214 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7214]) <= mem[_7214]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7214] + _7214 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6715 / (1000 * _6716) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6715 / (1000 * _6716) + (997 * t)
                                continue 
                            _8383 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8383] = return_data.size
                            mem[_8383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6715 / (1000 * _6716) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8383 + 32] == mem[_8383 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8383 + 32]
                            t = 997 * t * _6715 / (1000 * _6716) + (997 * t)
                            continue 
                        mem[_7214 + mem[_7214] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7214] + _7214 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6715 / (1000 * _6716) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6715 / (1000 * _6716) + (997 * t)
                            continue 
                        _8508 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8508] = return_data.size
                        mem[_8508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6715 / (1000 * _6716) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8508 + 32] == mem[_8508 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8508 + 32]
                        t = 997 * t * _6715 / (1000 * _6716) + (997 * t)
                        continue 
                    mem[_4997 + mem[_4997] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_4997] + _4997 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'l'
                        require mem[96] >= 64
                        _6745 = mem[128]
                        _6746 = mem[160]
                        if not address(s):
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * mem[128] > !(997 * t):
                                revert with 0, 17
                            if 997 * t and mem[160] > -1 / 997 * t:
                                revert with 0, 17
                            if not (1000 * mem[128]) + (997 * t):
                                revert with 0, 18
                            if address(s):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                continue 
                            _7217 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_7217 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7217 + 36 len 28]
                            s = 0
                            while s < mem[_7217]:
                                mem[s + _7217 + 36] = mem[s + _7217 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_7217]) <= mem[_7217]:
                                staticcall address(_3328).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_7217] + _7217 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _6746 / (1000 * _6745) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _6746 / (1000 * _6745) + (997 * t)
                                    continue 
                                _8385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8385] = return_data.size
                                mem[_8385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6746 / (1000 * _6745) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_8385 + 32] == mem[_8385 + 44 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_8385 + 32]
                                t = 997 * t * _6746 / (1000 * _6745) + (997 * t)
                                continue 
                            mem[_7217 + mem[_7217] + 36] = 0
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7217] + _7217 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6746 / (1000 * _6745) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6746 / (1000 * _6745) + (997 * t)
                                continue 
                            _8509 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8509] = return_data.size
                            mem[_8509 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6746 / (1000 * _6745) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8509 + 32] == mem[_8509 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8509 + 32]
                            t = 997 * t * _6746 / (1000 * _6745) + (997 * t)
                            continue 
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[160] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[128] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[160]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                            continue 
                        _7324 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7324 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7324 + 36 len 28]
                        s = 0
                        while s < mem[_7324]:
                            mem[s + _7324 + 36] = mem[s + _7324 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7324]) <= mem[_7324]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7324] + _7324 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6745 / (1000 * _6746) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6745 / (1000 * _6746) + (997 * t)
                                continue 
                            _8387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8387] = return_data.size
                            mem[_8387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6745 / (1000 * _6746) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8387 + 32] == mem[_8387 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8387 + 32]
                            t = 997 * t * _6745 / (1000 * _6746) + (997 * t)
                            continue 
                        mem[_7324 + mem[_7324] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7324] + _7324 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6745 / (1000 * _6746) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6745 / (1000 * _6746) + (997 * t)
                            continue 
                        _8510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8510] = return_data.size
                        mem[_8510 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6745 / (1000 * _6746) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8510 + 32] == mem[_8510 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8510 + 32]
                        t = 997 * t * _6745 / (1000 * _6746) + (997 * t)
                        continue 
                    _6673 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6673] = return_data.size
                    mem[_6673 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'l'
                    require return_data.size >= 64
                    _6747 = mem[_6673 + 32]
                    _6748 = mem[_6673 + 64]
                    if not address(s):
                        if mem[_6673 + 32] <= 0:
                            revert with 0, 'l'
                        if mem[_6673 + 64] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[_6673 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_6673 + 32] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[_6673 + 64] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[_6673 + 32]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[_6673 + 64] / (1000 * mem[_6673 + 32]) + (997 * t)
                            continue 
                        _7220 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7220 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7220 + 36 len 28]
                        s = 0
                        while s < mem[_7220]:
                            mem[s + _7220 + 36] = mem[s + _7220 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7220]) <= mem[_7220]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7220] + _7220 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6748 / (1000 * _6747) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6748 / (1000 * _6747) + (997 * t)
                                continue 
                            _8389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8389] = return_data.size
                            mem[_8389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6748 / (1000 * _6747) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8389 + 32] == mem[_8389 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8389 + 32]
                            t = 997 * t * _6748 / (1000 * _6747) + (997 * t)
                            continue 
                        mem[_7220 + mem[_7220] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7220] + _7220 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6748 / (1000 * _6747) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6748 / (1000 * _6747) + (997 * t)
                            continue 
                        _8511 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8511] = return_data.size
                        mem[_8511 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6748 / (1000 * _6747) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8511 + 32] == mem[_8511 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8511 + 32]
                        t = 997 * t * _6748 / (1000 * _6747) + (997 * t)
                        continue 
                    if mem[_6673 + 64] <= 0:
                        revert with 0, 'l'
                    if mem[_6673 + 32] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6673 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6673 + 64] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6673 + 32] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6673 + 64]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_6673 + 32] / (1000 * mem[_6673 + 64]) + (997 * t)
                        continue 
                    _7328 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7328 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7328 + 36 len 28]
                    s = 0
                    while s < mem[_7328]:
                        mem[s + _7328 + 36] = mem[s + _7328 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7328]) <= mem[_7328]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7328] + _7328 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6747 / (1000 * _6748) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6747 / (1000 * _6748) + (997 * t)
                            continue 
                        _8391 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8391] = return_data.size
                        mem[_8391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6747 / (1000 * _6748) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8391 + 32] == mem[_8391 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8391 + 32]
                        t = 997 * t * _6747 / (1000 * _6748) + (997 * t)
                        continue 
                    mem[_7328 + mem[_7328] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7328] + _7328 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6747 / (1000 * _6748) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6747 / (1000 * _6748) + (997 * t)
                        continue 
                    _8512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8512] = return_data.size
                    mem[_8512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6747 / (1000 * _6748) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8512 + 32] == mem[_8512 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8512 + 32]
                    t = 997 * t * _6747 / (1000 * _6748) + (997 * t)
                    continue 
                require mem[96] >= 32
                _5000 = mem[128]
                require mem[128] == mem[140 len 20]
                _5022 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5022 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_5022 + 36 len 28]
                u = 0
                while u < mem[_5022]:
                    mem[u + _5022 + 36] = mem[u + _5022 + 32]
                    u = u + 32
                    continue 
                if ceil32(mem[_5022]) <= mem[_5022]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5022] + _5022 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'l'
                        require mem[96] >= 64
                        _6717 = mem[128]
                        _6718 = mem[160]
                        if address(s) == address(_5000):
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * mem[128] > !(997 * t):
                                revert with 0, 17
                            if 997 * t and mem[160] > -1 / 997 * t:
                                revert with 0, 17
                            if not (1000 * mem[128]) + (997 * t):
                                revert with 0, 18
                            if address(s) != address(_5000):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5000
                                t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                continue 
                            _7167 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_7167 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7167 + 36 len 28]
                            s = 0
                            while s < mem[_7167]:
                                mem[s + _7167 + 36] = mem[s + _7167 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_7167]) <= mem[_7167]:
                                staticcall address(_3328).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_7167] + _7167 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _6718 / (1000 * _6717) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _6718 / (1000 * _6717) + (997 * t)
                                    continue 
                                _8393 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8393] = return_data.size
                                mem[_8393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6718 / (1000 * _6717) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_8393 + 32] == mem[_8393 + 44 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_8393 + 32]
                                t = 997 * t * _6718 / (1000 * _6717) + (997 * t)
                                continue 
                            mem[_7167 + mem[_7167] + 36] = 0
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7167] + _7167 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6718 / (1000 * _6717) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6718 / (1000 * _6717) + (997 * t)
                                continue 
                            _8513 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8513] = return_data.size
                            mem[_8513 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6718 / (1000 * _6717) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8513 + 32] == mem[_8513 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8513 + 32]
                            t = 997 * t * _6718 / (1000 * _6717) + (997 * t)
                            continue 
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[160] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[128] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[160]) + (997 * t):
                            revert with 0, 18
                        if address(s) != address(_5000):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5000
                            t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                            continue 
                        _7224 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7224 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7224 + 36 len 28]
                        s = 0
                        while s < mem[_7224]:
                            mem[s + _7224 + 36] = mem[s + _7224 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7224]) <= mem[_7224]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7224] + _7224 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6717 / (1000 * _6718) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6717 / (1000 * _6718) + (997 * t)
                                continue 
                            _8395 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8395] = return_data.size
                            mem[_8395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6717 / (1000 * _6718) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8395 + 32] == mem[_8395 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8395 + 32]
                            t = 997 * t * _6717 / (1000 * _6718) + (997 * t)
                            continue 
                        mem[_7224 + mem[_7224] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7224] + _7224 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6717 / (1000 * _6718) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6717 / (1000 * _6718) + (997 * t)
                            continue 
                        _8514 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8514] = return_data.size
                        mem[_8514 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6717 / (1000 * _6718) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8514 + 32] == mem[_8514 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8514 + 32]
                        t = 997 * t * _6717 / (1000 * _6718) + (997 * t)
                        continue 
                    _6659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6659] = return_data.size
                    mem[_6659 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'l'
                    require return_data.size >= 64
                    _6719 = mem[_6659 + 32]
                    _6720 = mem[_6659 + 64]
                    if address(s) == address(_5000):
                        if mem[_6659 + 32] <= 0:
                            revert with 0, 'l'
                        if mem[_6659 + 64] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[_6659 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_6659 + 32] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[_6659 + 64] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[_6659 + 32]) + (997 * t):
                            revert with 0, 18
                        if address(s) != address(_5000):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5000
                            t = 997 * t * mem[_6659 + 64] / (1000 * mem[_6659 + 32]) + (997 * t)
                            continue 
                        _7170 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7170 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7170 + 36 len 28]
                        s = 0
                        while s < mem[_7170]:
                            mem[s + _7170 + 36] = mem[s + _7170 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7170]) <= mem[_7170]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7170] + _7170 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6720 / (1000 * _6719) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6720 / (1000 * _6719) + (997 * t)
                                continue 
                            _8397 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8397] = return_data.size
                            mem[_8397 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6720 / (1000 * _6719) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8397 + 32] == mem[_8397 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8397 + 32]
                            t = 997 * t * _6720 / (1000 * _6719) + (997 * t)
                            continue 
                        mem[_7170 + mem[_7170] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7170] + _7170 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6720 / (1000 * _6719) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6720 / (1000 * _6719) + (997 * t)
                            continue 
                        _8515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8515] = return_data.size
                        mem[_8515 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6720 / (1000 * _6719) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8515 + 32] == mem[_8515 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8515 + 32]
                        t = 997 * t * _6720 / (1000 * _6719) + (997 * t)
                        continue 
                    if mem[_6659 + 64] <= 0:
                        revert with 0, 'l'
                    if mem[_6659 + 32] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6659 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6659 + 64] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6659 + 32] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6659 + 64]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5000):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5000
                        t = 997 * t * mem[_6659 + 32] / (1000 * mem[_6659 + 64]) + (997 * t)
                        continue 
                    _7228 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7228 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7228 + 36 len 28]
                    s = 0
                    while s < mem[_7228]:
                        mem[s + _7228 + 36] = mem[s + _7228 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7228]) <= mem[_7228]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7228] + _7228 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6719 / (1000 * _6720) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6719 / (1000 * _6720) + (997 * t)
                            continue 
                        _8399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8399] = return_data.size
                        mem[_8399 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6719 / (1000 * _6720) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8399 + 32] == mem[_8399 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8399 + 32]
                        t = 997 * t * _6719 / (1000 * _6720) + (997 * t)
                        continue 
                    mem[_7228 + mem[_7228] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7228] + _7228 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6719 / (1000 * _6720) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6719 / (1000 * _6720) + (997 * t)
                        continue 
                    _8516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8516] = return_data.size
                    mem[_8516 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6719 / (1000 * _6720) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8516 + 32] == mem[_8516 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8516 + 32]
                    t = 997 * t * _6719 / (1000 * _6720) + (997 * t)
                    continue 
                mem[_5022 + mem[_5022] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5022] + _5022 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _6749 = mem[128]
                    _6750 = mem[160]
                    if address(s) == address(_5000):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[128] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[160] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 0, 18
                        if address(s) != address(_5000):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5000
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _7231 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7231 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7231 + 36 len 28]
                        s = 0
                        while s < mem[_7231]:
                            mem[s + _7231 + 36] = mem[s + _7231 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7231]) <= mem[_7231]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7231] + _7231 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6750 / (1000 * _6749) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6750 / (1000 * _6749) + (997 * t)
                                continue 
                            _8401 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8401] = return_data.size
                            mem[_8401 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6750 / (1000 * _6749) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8401 + 32] == mem[_8401 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8401 + 32]
                            t = 997 * t * _6750 / (1000 * _6749) + (997 * t)
                            continue 
                        mem[_7231 + mem[_7231] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7231] + _7231 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6750 / (1000 * _6749) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6750 / (1000 * _6749) + (997 * t)
                            continue 
                        _8517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8517] = return_data.size
                        mem[_8517 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6750 / (1000 * _6749) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8517 + 32] == mem[_8517 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8517 + 32]
                        t = 997 * t * _6750 / (1000 * _6749) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[160] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[128] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5000):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5000
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _7334 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7334 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7334 + 36 len 28]
                    s = 0
                    while s < mem[_7334]:
                        mem[s + _7334 + 36] = mem[s + _7334 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7334]) <= mem[_7334]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7334] + _7334 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6749 / (1000 * _6750) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6749 / (1000 * _6750) + (997 * t)
                            continue 
                        _8403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8403] = return_data.size
                        mem[_8403 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6749 / (1000 * _6750) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8403 + 32] == mem[_8403 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8403 + 32]
                        t = 997 * t * _6749 / (1000 * _6750) + (997 * t)
                        continue 
                    mem[_7334 + mem[_7334] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7334] + _7334 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6749 / (1000 * _6750) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6749 / (1000 * _6750) + (997 * t)
                        continue 
                    _8518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8518] = return_data.size
                    mem[_8518 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6749 / (1000 * _6750) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8518 + 32] == mem[_8518 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8518 + 32]
                    t = 997 * t * _6749 / (1000 * _6750) + (997 * t)
                    continue 
                _6674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6674] = return_data.size
                mem[_6674 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _6751 = mem[_6674 + 32]
                _6752 = mem[_6674 + 64]
                if address(s) == address(_5000):
                    if mem[_6674 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_6674 + 64] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6674 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6674 + 32] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6674 + 64] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6674 + 32]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5000):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5000
                        t = 997 * t * mem[_6674 + 64] / (1000 * mem[_6674 + 32]) + (997 * t)
                        continue 
                    _7234 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7234 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7234 + 36 len 28]
                    s = 0
                    while s < mem[_7234]:
                        mem[s + _7234 + 36] = mem[s + _7234 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7234]) <= mem[_7234]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7234] + _7234 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6752 / (1000 * _6751) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6752 / (1000 * _6751) + (997 * t)
                            continue 
                        _8405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8405] = return_data.size
                        mem[_8405 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6752 / (1000 * _6751) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8405 + 32] == mem[_8405 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8405 + 32]
                        t = 997 * t * _6752 / (1000 * _6751) + (997 * t)
                        continue 
                    mem[_7234 + mem[_7234] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7234] + _7234 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6752 / (1000 * _6751) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6752 / (1000 * _6751) + (997 * t)
                        continue 
                    _8519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8519] = return_data.size
                    mem[_8519 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6752 / (1000 * _6751) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8519 + 32] == mem[_8519 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8519 + 32]
                    t = 997 * t * _6752 / (1000 * _6751) + (997 * t)
                    continue 
                if mem[_6674 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_6674 + 32] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6674 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6674 + 64] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6674 + 32] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6674 + 64]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5000):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5000
                    t = 997 * t * mem[_6674 + 32] / (1000 * mem[_6674 + 64]) + (997 * t)
                    continue 
                _7338 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7338 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7338 + 36 len 28]
                s = 0
                while s < mem[_7338]:
                    mem[s + _7338 + 36] = mem[s + _7338 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7338]) <= mem[_7338]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7338] + _7338 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6751 / (1000 * _6752) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6751 / (1000 * _6752) + (997 * t)
                        continue 
                    _8407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8407] = return_data.size
                    mem[_8407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6751 / (1000 * _6752) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8407 + 32] == mem[_8407 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8407 + 32]
                    t = 997 * t * _6751 / (1000 * _6752) + (997 * t)
                    continue 
                mem[_7338 + mem[_7338] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7338] + _7338 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6751 / (1000 * _6752) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6751 / (1000 * _6752) + (997 * t)
                    continue 
                _8520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8520] = return_data.size
                mem[_8520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6751 / (1000 * _6752) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8520 + 32] == mem[_8520 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8520 + 32]
                t = 997 * t * _6751 / (1000 * _6752) + (997 * t)
                continue 
            _4990 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_4990] = return_data.size
            mem[_4990 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _5001 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5001 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_5001 + 36 len 28]
                u = 0
                while u < mem[_5001]:
                    mem[u + _5001 + 36] = mem[u + _5001 + 32]
                    u = u + 32
                    continue 
                if ceil32(mem[_5001]) <= mem[_5001]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5001] + _5001 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'l'
                        require mem[96] >= 64
                        _6721 = mem[128]
                        _6722 = mem[160]
                        if not address(s):
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * mem[128] > !(997 * t):
                                revert with 0, 17
                            if 997 * t and mem[160] > -1 / 997 * t:
                                revert with 0, 17
                            if not (1000 * mem[128]) + (997 * t):
                                revert with 0, 18
                            if address(s):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                continue 
                            _7173 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_7173 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7173 + 36 len 28]
                            s = 0
                            while s < mem[_7173]:
                                mem[s + _7173 + 36] = mem[s + _7173 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_7173]) <= mem[_7173]:
                                staticcall address(_3328).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_7173] + _7173 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _6722 / (1000 * _6721) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _6722 / (1000 * _6721) + (997 * t)
                                    continue 
                                _8409 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8409] = return_data.size
                                mem[_8409 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6722 / (1000 * _6721) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_8409 + 32] == mem[_8409 + 44 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_8409 + 32]
                                t = 997 * t * _6722 / (1000 * _6721) + (997 * t)
                                continue 
                            mem[_7173 + mem[_7173] + 36] = 0
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7173] + _7173 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6722 / (1000 * _6721) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6722 / (1000 * _6721) + (997 * t)
                                continue 
                            _8521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8521] = return_data.size
                            mem[_8521 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6722 / (1000 * _6721) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8521 + 32] == mem[_8521 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8521 + 32]
                            t = 997 * t * _6722 / (1000 * _6721) + (997 * t)
                            continue 
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[160] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[128] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[160]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                            continue 
                        _7238 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7238 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7238 + 36 len 28]
                        s = 0
                        while s < mem[_7238]:
                            mem[s + _7238 + 36] = mem[s + _7238 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7238]) <= mem[_7238]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7238] + _7238 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6721 / (1000 * _6722) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6721 / (1000 * _6722) + (997 * t)
                                continue 
                            _8411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8411] = return_data.size
                            mem[_8411 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6721 / (1000 * _6722) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8411 + 32] == mem[_8411 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8411 + 32]
                            t = 997 * t * _6721 / (1000 * _6722) + (997 * t)
                            continue 
                        mem[_7238 + mem[_7238] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7238] + _7238 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6721 / (1000 * _6722) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6721 / (1000 * _6722) + (997 * t)
                            continue 
                        _8522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8522] = return_data.size
                        mem[_8522 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6721 / (1000 * _6722) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8522 + 32] == mem[_8522 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8522 + 32]
                        t = 997 * t * _6721 / (1000 * _6722) + (997 * t)
                        continue 
                    _6661 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6661] = return_data.size
                    mem[_6661 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'l'
                    require return_data.size >= 64
                    _6723 = mem[_6661 + 32]
                    _6724 = mem[_6661 + 64]
                    if not address(s):
                        if mem[_6661 + 32] <= 0:
                            revert with 0, 'l'
                        if mem[_6661 + 64] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[_6661 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_6661 + 32] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[_6661 + 64] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[_6661 + 32]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[_6661 + 64] / (1000 * mem[_6661 + 32]) + (997 * t)
                            continue 
                        _7176 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7176 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7176 + 36 len 28]
                        s = 0
                        while s < mem[_7176]:
                            mem[s + _7176 + 36] = mem[s + _7176 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7176]) <= mem[_7176]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7176] + _7176 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6724 / (1000 * _6723) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6724 / (1000 * _6723) + (997 * t)
                                continue 
                            _8413 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8413] = return_data.size
                            mem[_8413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6724 / (1000 * _6723) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8413 + 32] == mem[_8413 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8413 + 32]
                            t = 997 * t * _6724 / (1000 * _6723) + (997 * t)
                            continue 
                        mem[_7176 + mem[_7176] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7176] + _7176 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6724 / (1000 * _6723) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6724 / (1000 * _6723) + (997 * t)
                            continue 
                        _8523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8523] = return_data.size
                        mem[_8523 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6724 / (1000 * _6723) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8523 + 32] == mem[_8523 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8523 + 32]
                        t = 997 * t * _6724 / (1000 * _6723) + (997 * t)
                        continue 
                    if mem[_6661 + 64] <= 0:
                        revert with 0, 'l'
                    if mem[_6661 + 32] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6661 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6661 + 64] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6661 + 32] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6661 + 64]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_6661 + 32] / (1000 * mem[_6661 + 64]) + (997 * t)
                        continue 
                    _7242 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7242 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7242 + 36 len 28]
                    s = 0
                    while s < mem[_7242]:
                        mem[s + _7242 + 36] = mem[s + _7242 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7242]) <= mem[_7242]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7242] + _7242 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6723 / (1000 * _6724) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6723 / (1000 * _6724) + (997 * t)
                            continue 
                        _8415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8415] = return_data.size
                        mem[_8415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6723 / (1000 * _6724) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8415 + 32] == mem[_8415 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8415 + 32]
                        t = 997 * t * _6723 / (1000 * _6724) + (997 * t)
                        continue 
                    mem[_7242 + mem[_7242] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7242] + _7242 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6723 / (1000 * _6724) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6723 / (1000 * _6724) + (997 * t)
                        continue 
                    _8524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8524] = return_data.size
                    mem[_8524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6723 / (1000 * _6724) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8524 + 32] == mem[_8524 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8524 + 32]
                    t = 997 * t * _6723 / (1000 * _6724) + (997 * t)
                    continue 
                mem[_5001 + mem[_5001] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5001] + _5001 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _6753 = mem[128]
                    _6754 = mem[160]
                    if not address(s):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[128] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[160] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _7245 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7245 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7245 + 36 len 28]
                        s = 0
                        while s < mem[_7245]:
                            mem[s + _7245 + 36] = mem[s + _7245 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7245]) <= mem[_7245]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7245] + _7245 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6754 / (1000 * _6753) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6754 / (1000 * _6753) + (997 * t)
                                continue 
                            _8417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8417] = return_data.size
                            mem[_8417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6754 / (1000 * _6753) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8417 + 32] == mem[_8417 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8417 + 32]
                            t = 997 * t * _6754 / (1000 * _6753) + (997 * t)
                            continue 
                        mem[_7245 + mem[_7245] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7245] + _7245 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6754 / (1000 * _6753) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6754 / (1000 * _6753) + (997 * t)
                            continue 
                        _8525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8525] = return_data.size
                        mem[_8525 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6754 / (1000 * _6753) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8525 + 32] == mem[_8525 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8525 + 32]
                        t = 997 * t * _6754 / (1000 * _6753) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[160] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[128] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _7344 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7344 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7344 + 36 len 28]
                    s = 0
                    while s < mem[_7344]:
                        mem[s + _7344 + 36] = mem[s + _7344 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7344]) <= mem[_7344]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7344] + _7344 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6753 / (1000 * _6754) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6753 / (1000 * _6754) + (997 * t)
                            continue 
                        _8419 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8419] = return_data.size
                        mem[_8419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6753 / (1000 * _6754) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8419 + 32] == mem[_8419 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8419 + 32]
                        t = 997 * t * _6753 / (1000 * _6754) + (997 * t)
                        continue 
                    mem[_7344 + mem[_7344] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7344] + _7344 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6753 / (1000 * _6754) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6753 / (1000 * _6754) + (997 * t)
                        continue 
                    _8526 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8526] = return_data.size
                    mem[_8526 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6753 / (1000 * _6754) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8526 + 32] == mem[_8526 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8526 + 32]
                    t = 997 * t * _6753 / (1000 * _6754) + (997 * t)
                    continue 
                _6675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6675] = return_data.size
                mem[_6675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _6755 = mem[_6675 + 32]
                _6756 = mem[_6675 + 64]
                if not address(s):
                    if mem[_6675 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_6675 + 64] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6675 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6675 + 32] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6675 + 64] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6675 + 32]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_6675 + 64] / (1000 * mem[_6675 + 32]) + (997 * t)
                        continue 
                    _7248 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7248 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7248 + 36 len 28]
                    s = 0
                    while s < mem[_7248]:
                        mem[s + _7248 + 36] = mem[s + _7248 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7248]) <= mem[_7248]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7248] + _7248 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6756 / (1000 * _6755) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6756 / (1000 * _6755) + (997 * t)
                            continue 
                        _8421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8421] = return_data.size
                        mem[_8421 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6756 / (1000 * _6755) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8421 + 32] == mem[_8421 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8421 + 32]
                        t = 997 * t * _6756 / (1000 * _6755) + (997 * t)
                        continue 
                    mem[_7248 + mem[_7248] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7248] + _7248 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6756 / (1000 * _6755) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6756 / (1000 * _6755) + (997 * t)
                        continue 
                    _8527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8527] = return_data.size
                    mem[_8527 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6756 / (1000 * _6755) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8527 + 32] == mem[_8527 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8527 + 32]
                    t = 997 * t * _6756 / (1000 * _6755) + (997 * t)
                    continue 
                if mem[_6675 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_6675 + 32] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6675 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6675 + 64] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6675 + 32] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6675 + 64]) + (997 * t):
                    revert with 0, 18
                if address(s):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_6675 + 32] / (1000 * mem[_6675 + 64]) + (997 * t)
                    continue 
                _7348 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7348 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7348 + 36 len 28]
                s = 0
                while s < mem[_7348]:
                    mem[s + _7348 + 36] = mem[s + _7348 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7348]) <= mem[_7348]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7348] + _7348 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6755 / (1000 * _6756) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6755 / (1000 * _6756) + (997 * t)
                        continue 
                    _8423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8423] = return_data.size
                    mem[_8423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6755 / (1000 * _6756) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8423 + 32] == mem[_8423 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8423 + 32]
                    t = 997 * t * _6755 / (1000 * _6756) + (997 * t)
                    continue 
                mem[_7348 + mem[_7348] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7348] + _7348 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6755 / (1000 * _6756) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6755 / (1000 * _6756) + (997 * t)
                    continue 
                _8528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8528] = return_data.size
                mem[_8528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6755 / (1000 * _6756) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8528 + 32] == mem[_8528 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8528 + 32]
                t = 997 * t * _6755 / (1000 * _6756) + (997 * t)
                continue 
            require return_data.size >= 32
            _5004 = mem[_4990 + 32]
            require mem[_4990 + 32] == mem[_4990 + 44 len 20]
            _5026 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5026 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_5026 + 36 len 28]
            u = 0
            while u < mem[_5026]:
                mem[u + _5026 + 36] = mem[u + _5026 + 32]
                u = u + 32
                continue 
            if ceil32(mem[_5026]) <= mem[_5026]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5026] + _5026 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _6725 = mem[128]
                    _6726 = mem[160]
                    if address(s) == address(_5004):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[128] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[160] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 0, 18
                        if address(s) != address(_5004):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5004
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _7179 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7179 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7179 + 36 len 28]
                        s = 0
                        while s < mem[_7179]:
                            mem[s + _7179 + 36] = mem[s + _7179 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7179]) <= mem[_7179]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7179] + _7179 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6726 / (1000 * _6725) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6726 / (1000 * _6725) + (997 * t)
                                continue 
                            _8425 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8425] = return_data.size
                            mem[_8425 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6726 / (1000 * _6725) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8425 + 32] == mem[_8425 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8425 + 32]
                            t = 997 * t * _6726 / (1000 * _6725) + (997 * t)
                            continue 
                        mem[_7179 + mem[_7179] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7179] + _7179 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6726 / (1000 * _6725) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6726 / (1000 * _6725) + (997 * t)
                            continue 
                        _8529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8529] = return_data.size
                        mem[_8529 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6726 / (1000 * _6725) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8529 + 32] == mem[_8529 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8529 + 32]
                        t = 997 * t * _6726 / (1000 * _6725) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[160] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[128] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5004):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5004
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _7252 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7252 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7252 + 36 len 28]
                    s = 0
                    while s < mem[_7252]:
                        mem[s + _7252 + 36] = mem[s + _7252 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7252]) <= mem[_7252]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7252] + _7252 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6725 / (1000 * _6726) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6725 / (1000 * _6726) + (997 * t)
                            continue 
                        _8427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8427] = return_data.size
                        mem[_8427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6725 / (1000 * _6726) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8427 + 32] == mem[_8427 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8427 + 32]
                        t = 997 * t * _6725 / (1000 * _6726) + (997 * t)
                        continue 
                    mem[_7252 + mem[_7252] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7252] + _7252 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6725 / (1000 * _6726) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6725 / (1000 * _6726) + (997 * t)
                        continue 
                    _8530 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8530] = return_data.size
                    mem[_8530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6725 / (1000 * _6726) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8530 + 32] == mem[_8530 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8530 + 32]
                    t = 997 * t * _6725 / (1000 * _6726) + (997 * t)
                    continue 
                _6663 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6663] = return_data.size
                mem[_6663 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _6727 = mem[_6663 + 32]
                _6728 = mem[_6663 + 64]
                if address(s) == address(_5004):
                    if mem[_6663 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_6663 + 64] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6663 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6663 + 32] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6663 + 64] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6663 + 32]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5004):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5004
                        t = 997 * t * mem[_6663 + 64] / (1000 * mem[_6663 + 32]) + (997 * t)
                        continue 
                    _7182 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7182 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7182 + 36 len 28]
                    s = 0
                    while s < mem[_7182]:
                        mem[s + _7182 + 36] = mem[s + _7182 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7182]) <= mem[_7182]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7182] + _7182 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6728 / (1000 * _6727) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6728 / (1000 * _6727) + (997 * t)
                            continue 
                        _8429 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8429] = return_data.size
                        mem[_8429 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6728 / (1000 * _6727) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8429 + 32] == mem[_8429 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8429 + 32]
                        t = 997 * t * _6728 / (1000 * _6727) + (997 * t)
                        continue 
                    mem[_7182 + mem[_7182] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7182] + _7182 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6728 / (1000 * _6727) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6728 / (1000 * _6727) + (997 * t)
                        continue 
                    _8531 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8531] = return_data.size
                    mem[_8531 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6728 / (1000 * _6727) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8531 + 32] == mem[_8531 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8531 + 32]
                    t = 997 * t * _6728 / (1000 * _6727) + (997 * t)
                    continue 
                if mem[_6663 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_6663 + 32] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6663 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6663 + 64] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6663 + 32] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6663 + 64]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5004):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5004
                    t = 997 * t * mem[_6663 + 32] / (1000 * mem[_6663 + 64]) + (997 * t)
                    continue 
                _7256 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7256 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7256 + 36 len 28]
                s = 0
                while s < mem[_7256]:
                    mem[s + _7256 + 36] = mem[s + _7256 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7256]) <= mem[_7256]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7256] + _7256 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6727 / (1000 * _6728) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6727 / (1000 * _6728) + (997 * t)
                        continue 
                    _8431 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8431] = return_data.size
                    mem[_8431 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6727 / (1000 * _6728) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8431 + 32] == mem[_8431 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8431 + 32]
                    t = 997 * t * _6727 / (1000 * _6728) + (997 * t)
                    continue 
                mem[_7256 + mem[_7256] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7256] + _7256 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6727 / (1000 * _6728) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6727 / (1000 * _6728) + (997 * t)
                    continue 
                _8532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8532] = return_data.size
                mem[_8532 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6727 / (1000 * _6728) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8532 + 32] == mem[_8532 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8532 + 32]
                t = 997 * t * _6727 / (1000 * _6728) + (997 * t)
                continue 
            mem[_5026 + mem[_5026] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5026] + _5026 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _6757 = mem[128]
                _6758 = mem[160]
                if address(s) == address(_5004):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[128] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[160] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[128]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5004):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5004
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _7259 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7259 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7259 + 36 len 28]
                    s = 0
                    while s < mem[_7259]:
                        mem[s + _7259 + 36] = mem[s + _7259 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7259]) <= mem[_7259]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7259] + _7259 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6758 / (1000 * _6757) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6758 / (1000 * _6757) + (997 * t)
                            continue 
                        _8433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8433] = return_data.size
                        mem[_8433 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6758 / (1000 * _6757) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8433 + 32] == mem[_8433 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8433 + 32]
                        t = 997 * t * _6758 / (1000 * _6757) + (997 * t)
                        continue 
                    mem[_7259 + mem[_7259] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7259] + _7259 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6758 / (1000 * _6757) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6758 / (1000 * _6757) + (997 * t)
                        continue 
                    _8533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8533] = return_data.size
                    mem[_8533 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6758 / (1000 * _6757) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8533 + 32] == mem[_8533 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8533 + 32]
                    t = 997 * t * _6758 / (1000 * _6757) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[160] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[128] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[160]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5004):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5004
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _7354 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7354 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7354 + 36 len 28]
                s = 0
                while s < mem[_7354]:
                    mem[s + _7354 + 36] = mem[s + _7354 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7354]) <= mem[_7354]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7354] + _7354 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6757 / (1000 * _6758) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6757 / (1000 * _6758) + (997 * t)
                        continue 
                    _8435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8435] = return_data.size
                    mem[_8435 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6757 / (1000 * _6758) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8435 + 32] == mem[_8435 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8435 + 32]
                    t = 997 * t * _6757 / (1000 * _6758) + (997 * t)
                    continue 
                mem[_7354 + mem[_7354] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7354] + _7354 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6757 / (1000 * _6758) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6757 / (1000 * _6758) + (997 * t)
                    continue 
                _8534 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8534] = return_data.size
                mem[_8534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6757 / (1000 * _6758) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8534 + 32] == mem[_8534 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8534 + 32]
                t = 997 * t * _6757 / (1000 * _6758) + (997 * t)
                continue 
            _6676 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6676] = return_data.size
            mem[_6676 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _6759 = mem[_6676 + 32]
            _6760 = mem[_6676 + 64]
            if address(s) == address(_5004):
                if mem[_6676 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_6676 + 64] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6676 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6676 + 32] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6676 + 64] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6676 + 32]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5004):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5004
                    t = 997 * t * mem[_6676 + 64] / (1000 * mem[_6676 + 32]) + (997 * t)
                    continue 
                _7262 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7262 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7262 + 36 len 28]
                s = 0
                while s < mem[_7262]:
                    mem[s + _7262 + 36] = mem[s + _7262 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7262]) <= mem[_7262]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7262] + _7262 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6760 / (1000 * _6759) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6760 / (1000 * _6759) + (997 * t)
                        continue 
                    _8437 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8437] = return_data.size
                    mem[_8437 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6760 / (1000 * _6759) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8437 + 32] == mem[_8437 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8437 + 32]
                    t = 997 * t * _6760 / (1000 * _6759) + (997 * t)
                    continue 
                mem[_7262 + mem[_7262] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7262] + _7262 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6760 / (1000 * _6759) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6760 / (1000 * _6759) + (997 * t)
                    continue 
                _8535 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8535] = return_data.size
                mem[_8535 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6760 / (1000 * _6759) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8535 + 32] == mem[_8535 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8535 + 32]
                t = 997 * t * _6760 / (1000 * _6759) + (997 * t)
                continue 
            if mem[_6676 + 64] <= 0:
                revert with 0, 'l'
            if mem[_6676 + 32] <= 0:
                revert with 0, 'l'
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if mem[_6676 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_6676 + 64] > !(997 * t):
                revert with 0, 17
            if 997 * t and mem[_6676 + 32] > -1 / 997 * t:
                revert with 0, 17
            if not (1000 * mem[_6676 + 64]) + (997 * t):
                revert with 0, 18
            if address(s) != address(_5004):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5004
                t = 997 * t * mem[_6676 + 32] / (1000 * mem[_6676 + 64]) + (997 * t)
                continue 
            _7358 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_7358 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7358 + 36 len 28]
            s = 0
            while s < mem[_7358]:
                mem[s + _7358 + 36] = mem[s + _7358 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_7358]) <= mem[_7358]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7358] + _7358 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6759 / (1000 * _6760) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6759 / (1000 * _6760) + (997 * t)
                    continue 
                _8439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8439] = return_data.size
                mem[_8439 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6759 / (1000 * _6760) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8439 + 32] == mem[_8439 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8439 + 32]
                t = 997 * t * _6759 / (1000 * _6760) + (997 * t)
                continue 
            mem[_7358 + mem[_7358] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_7358] + _7358 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6759 / (1000 * _6760) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _6759 / (1000 * _6760) + (997 * t)
                continue 
            _8536 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8536] = return_data.size
            mem[_8536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * _6759 / (1000 * _6760) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_8536 + 32] == mem[_8536 + 44 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_8536 + 32]
            t = 997 * t * _6759 / (1000 * _6760) + (997 * t)
            continue 
        mem[_3331 + mem[_3331] + 36] = 0
        staticcall address(_3328).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len mem[_3331] + _3331 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                _5007 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5007 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_5007 + 36 len 28]
                u = 0
                while u < mem[_5007]:
                    mem[u + _5007 + 36] = mem[u + _5007 + 32]
                    u = u + 32
                    continue 
                if ceil32(mem[_5007]) <= mem[_5007]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5007] + _5007 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'l'
                        require mem[96] >= 64
                        _6729 = mem[128]
                        _6730 = mem[160]
                        if not address(s):
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                revert with 0, 17
                            if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 1000 * mem[128] > !(997 * t):
                                revert with 0, 17
                            if 997 * t and mem[160] > -1 / 997 * t:
                                revert with 0, 17
                            if not (1000 * mem[128]) + (997 * t):
                                revert with 0, 18
                            if address(s):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                continue 
                            _7185 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_7185 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7185 + 36 len 28]
                            s = 0
                            while s < mem[_7185]:
                                mem[s + _7185 + 36] = mem[s + _7185 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_7185]) <= mem[_7185]:
                                staticcall address(_3328).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_7185] + _7185 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _6730 / (1000 * _6729) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _6730 / (1000 * _6729) + (997 * t)
                                    continue 
                                _8441 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8441] = return_data.size
                                mem[_8441 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6730 / (1000 * _6729) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_8441 + 32] == mem[_8441 + 44 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[_8441 + 32]
                                t = 997 * t * _6730 / (1000 * _6729) + (997 * t)
                                continue 
                            mem[_7185 + mem[_7185] + 36] = 0
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7185] + _7185 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6730 / (1000 * _6729) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6730 / (1000 * _6729) + (997 * t)
                                continue 
                            _8537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8537] = return_data.size
                            mem[_8537 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6730 / (1000 * _6729) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8537 + 32] == mem[_8537 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8537 + 32]
                            t = 997 * t * _6730 / (1000 * _6729) + (997 * t)
                            continue 
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[160] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[128] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[160]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                            continue 
                        _7266 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7266 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7266 + 36 len 28]
                        s = 0
                        while s < mem[_7266]:
                            mem[s + _7266 + 36] = mem[s + _7266 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7266]) <= mem[_7266]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7266] + _7266 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6729 / (1000 * _6730) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6729 / (1000 * _6730) + (997 * t)
                                continue 
                            _8443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8443] = return_data.size
                            mem[_8443 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6729 / (1000 * _6730) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8443 + 32] == mem[_8443 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8443 + 32]
                            t = 997 * t * _6729 / (1000 * _6730) + (997 * t)
                            continue 
                        mem[_7266 + mem[_7266] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7266] + _7266 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6729 / (1000 * _6730) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6729 / (1000 * _6730) + (997 * t)
                            continue 
                        _8538 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8538] = return_data.size
                        mem[_8538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6729 / (1000 * _6730) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8538 + 32] == mem[_8538 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8538 + 32]
                        t = 997 * t * _6729 / (1000 * _6730) + (997 * t)
                        continue 
                    _6665 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6665] = return_data.size
                    mem[_6665 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'l'
                    require return_data.size >= 64
                    _6731 = mem[_6665 + 32]
                    _6732 = mem[_6665 + 64]
                    if not address(s):
                        if mem[_6665 + 32] <= 0:
                            revert with 0, 'l'
                        if mem[_6665 + 64] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[_6665 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[_6665 + 32] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[_6665 + 64] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[_6665 + 32]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[_6665 + 64] / (1000 * mem[_6665 + 32]) + (997 * t)
                            continue 
                        _7188 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7188 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7188 + 36 len 28]
                        s = 0
                        while s < mem[_7188]:
                            mem[s + _7188 + 36] = mem[s + _7188 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7188]) <= mem[_7188]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7188] + _7188 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6732 / (1000 * _6731) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6732 / (1000 * _6731) + (997 * t)
                                continue 
                            _8445 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8445] = return_data.size
                            mem[_8445 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6732 / (1000 * _6731) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8445 + 32] == mem[_8445 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8445 + 32]
                            t = 997 * t * _6732 / (1000 * _6731) + (997 * t)
                            continue 
                        mem[_7188 + mem[_7188] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7188] + _7188 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6732 / (1000 * _6731) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6732 / (1000 * _6731) + (997 * t)
                            continue 
                        _8539 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8539] = return_data.size
                        mem[_8539 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6732 / (1000 * _6731) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8539 + 32] == mem[_8539 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8539 + 32]
                        t = 997 * t * _6732 / (1000 * _6731) + (997 * t)
                        continue 
                    if mem[_6665 + 64] <= 0:
                        revert with 0, 'l'
                    if mem[_6665 + 32] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6665 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6665 + 64] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6665 + 32] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6665 + 64]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_6665 + 32] / (1000 * mem[_6665 + 64]) + (997 * t)
                        continue 
                    _7270 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7270 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7270 + 36 len 28]
                    s = 0
                    while s < mem[_7270]:
                        mem[s + _7270 + 36] = mem[s + _7270 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7270]) <= mem[_7270]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7270] + _7270 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6731 / (1000 * _6732) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6731 / (1000 * _6732) + (997 * t)
                            continue 
                        _8447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8447] = return_data.size
                        mem[_8447 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6731 / (1000 * _6732) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8447 + 32] == mem[_8447 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8447 + 32]
                        t = 997 * t * _6731 / (1000 * _6732) + (997 * t)
                        continue 
                    mem[_7270 + mem[_7270] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7270] + _7270 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6731 / (1000 * _6732) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6731 / (1000 * _6732) + (997 * t)
                        continue 
                    _8540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8540] = return_data.size
                    mem[_8540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6731 / (1000 * _6732) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8540 + 32] == mem[_8540 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8540 + 32]
                    t = 997 * t * _6731 / (1000 * _6732) + (997 * t)
                    continue 
                mem[_5007 + mem[_5007] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5007] + _5007 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _6761 = mem[128]
                    _6762 = mem[160]
                    if not address(s):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[128] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[160] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _7273 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7273 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7273 + 36 len 28]
                        s = 0
                        while s < mem[_7273]:
                            mem[s + _7273 + 36] = mem[s + _7273 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7273]) <= mem[_7273]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7273] + _7273 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6762 / (1000 * _6761) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6762 / (1000 * _6761) + (997 * t)
                                continue 
                            _8449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8449] = return_data.size
                            mem[_8449 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6762 / (1000 * _6761) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8449 + 32] == mem[_8449 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8449 + 32]
                            t = 997 * t * _6762 / (1000 * _6761) + (997 * t)
                            continue 
                        mem[_7273 + mem[_7273] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7273] + _7273 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6762 / (1000 * _6761) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6762 / (1000 * _6761) + (997 * t)
                            continue 
                        _8541 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8541] = return_data.size
                        mem[_8541 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6762 / (1000 * _6761) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8541 + 32] == mem[_8541 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8541 + 32]
                        t = 997 * t * _6762 / (1000 * _6761) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[160] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[128] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _7364 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7364 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7364 + 36 len 28]
                    s = 0
                    while s < mem[_7364]:
                        mem[s + _7364 + 36] = mem[s + _7364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7364]) <= mem[_7364]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7364] + _7364 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6761 / (1000 * _6762) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6761 / (1000 * _6762) + (997 * t)
                            continue 
                        _8451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8451] = return_data.size
                        mem[_8451 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6761 / (1000 * _6762) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8451 + 32] == mem[_8451 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8451 + 32]
                        t = 997 * t * _6761 / (1000 * _6762) + (997 * t)
                        continue 
                    mem[_7364 + mem[_7364] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7364] + _7364 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6761 / (1000 * _6762) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6761 / (1000 * _6762) + (997 * t)
                        continue 
                    _8542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8542] = return_data.size
                    mem[_8542 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6761 / (1000 * _6762) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8542 + 32] == mem[_8542 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8542 + 32]
                    t = 997 * t * _6761 / (1000 * _6762) + (997 * t)
                    continue 
                _6677 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6677] = return_data.size
                mem[_6677 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _6763 = mem[_6677 + 32]
                _6764 = mem[_6677 + 64]
                if not address(s):
                    if mem[_6677 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_6677 + 64] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6677 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6677 + 32] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6677 + 64] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6677 + 32]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_6677 + 64] / (1000 * mem[_6677 + 32]) + (997 * t)
                        continue 
                    _7276 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7276 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7276 + 36 len 28]
                    s = 0
                    while s < mem[_7276]:
                        mem[s + _7276 + 36] = mem[s + _7276 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7276]) <= mem[_7276]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7276] + _7276 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6764 / (1000 * _6763) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6764 / (1000 * _6763) + (997 * t)
                            continue 
                        _8453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8453] = return_data.size
                        mem[_8453 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6764 / (1000 * _6763) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8453 + 32] == mem[_8453 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8453 + 32]
                        t = 997 * t * _6764 / (1000 * _6763) + (997 * t)
                        continue 
                    mem[_7276 + mem[_7276] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7276] + _7276 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6764 / (1000 * _6763) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6764 / (1000 * _6763) + (997 * t)
                        continue 
                    _8543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8543] = return_data.size
                    mem[_8543 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6764 / (1000 * _6763) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8543 + 32] == mem[_8543 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8543 + 32]
                    t = 997 * t * _6764 / (1000 * _6763) + (997 * t)
                    continue 
                if mem[_6677 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_6677 + 32] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6677 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6677 + 64] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6677 + 32] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6677 + 64]) + (997 * t):
                    revert with 0, 18
                if address(s):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_6677 + 32] / (1000 * mem[_6677 + 64]) + (997 * t)
                    continue 
                _7368 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7368 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7368 + 36 len 28]
                s = 0
                while s < mem[_7368]:
                    mem[s + _7368 + 36] = mem[s + _7368 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7368]) <= mem[_7368]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7368] + _7368 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6763 / (1000 * _6764) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6763 / (1000 * _6764) + (997 * t)
                        continue 
                    _8455 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8455] = return_data.size
                    mem[_8455 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6763 / (1000 * _6764) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8455 + 32] == mem[_8455 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8455 + 32]
                    t = 997 * t * _6763 / (1000 * _6764) + (997 * t)
                    continue 
                mem[_7368 + mem[_7368] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7368] + _7368 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6763 / (1000 * _6764) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6763 / (1000 * _6764) + (997 * t)
                    continue 
                _8544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8544] = return_data.size
                mem[_8544 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6763 / (1000 * _6764) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8544 + 32] == mem[_8544 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8544 + 32]
                t = 997 * t * _6763 / (1000 * _6764) + (997 * t)
                continue 
            require mem[96] >= 32
            _5010 = mem[128]
            require mem[128] == mem[140 len 20]
            _5036 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5036 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_5036 + 36 len 28]
            u = 0
            while u < mem[_5036]:
                mem[u + _5036 + 36] = mem[u + _5036 + 32]
                u = u + 32
                continue 
            if ceil32(mem[_5036]) <= mem[_5036]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5036] + _5036 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _6733 = mem[128]
                    _6734 = mem[160]
                    if address(s) == address(_5010):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[128] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[160] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 0, 18
                        if address(s) != address(_5010):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5010
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _7191 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7191 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7191 + 36 len 28]
                        s = 0
                        while s < mem[_7191]:
                            mem[s + _7191 + 36] = mem[s + _7191 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7191]) <= mem[_7191]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7191] + _7191 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6734 / (1000 * _6733) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6734 / (1000 * _6733) + (997 * t)
                                continue 
                            _8457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8457] = return_data.size
                            mem[_8457 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6734 / (1000 * _6733) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8457 + 32] == mem[_8457 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8457 + 32]
                            t = 997 * t * _6734 / (1000 * _6733) + (997 * t)
                            continue 
                        mem[_7191 + mem[_7191] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7191] + _7191 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6734 / (1000 * _6733) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6734 / (1000 * _6733) + (997 * t)
                            continue 
                        _8545 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8545] = return_data.size
                        mem[_8545 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6734 / (1000 * _6733) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8545 + 32] == mem[_8545 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8545 + 32]
                        t = 997 * t * _6734 / (1000 * _6733) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[160] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[128] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5010):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5010
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _7280 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7280 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7280 + 36 len 28]
                    s = 0
                    while s < mem[_7280]:
                        mem[s + _7280 + 36] = mem[s + _7280 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7280]) <= mem[_7280]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7280] + _7280 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6733 / (1000 * _6734) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6733 / (1000 * _6734) + (997 * t)
                            continue 
                        _8459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8459] = return_data.size
                        mem[_8459 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6733 / (1000 * _6734) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8459 + 32] == mem[_8459 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8459 + 32]
                        t = 997 * t * _6733 / (1000 * _6734) + (997 * t)
                        continue 
                    mem[_7280 + mem[_7280] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7280] + _7280 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6733 / (1000 * _6734) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6733 / (1000 * _6734) + (997 * t)
                        continue 
                    _8546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8546] = return_data.size
                    mem[_8546 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6733 / (1000 * _6734) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8546 + 32] == mem[_8546 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8546 + 32]
                    t = 997 * t * _6733 / (1000 * _6734) + (997 * t)
                    continue 
                _6667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6667] = return_data.size
                mem[_6667 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _6735 = mem[_6667 + 32]
                _6736 = mem[_6667 + 64]
                if address(s) == address(_5010):
                    if mem[_6667 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_6667 + 64] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6667 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6667 + 32] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6667 + 64] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6667 + 32]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5010):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5010
                        t = 997 * t * mem[_6667 + 64] / (1000 * mem[_6667 + 32]) + (997 * t)
                        continue 
                    _7194 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7194 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7194 + 36 len 28]
                    s = 0
                    while s < mem[_7194]:
                        mem[s + _7194 + 36] = mem[s + _7194 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7194]) <= mem[_7194]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7194] + _7194 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6736 / (1000 * _6735) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6736 / (1000 * _6735) + (997 * t)
                            continue 
                        _8461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8461] = return_data.size
                        mem[_8461 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6736 / (1000 * _6735) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8461 + 32] == mem[_8461 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8461 + 32]
                        t = 997 * t * _6736 / (1000 * _6735) + (997 * t)
                        continue 
                    mem[_7194 + mem[_7194] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7194] + _7194 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6736 / (1000 * _6735) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6736 / (1000 * _6735) + (997 * t)
                        continue 
                    _8547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8547] = return_data.size
                    mem[_8547 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6736 / (1000 * _6735) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8547 + 32] == mem[_8547 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8547 + 32]
                    t = 997 * t * _6736 / (1000 * _6735) + (997 * t)
                    continue 
                if mem[_6667 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_6667 + 32] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6667 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6667 + 64] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6667 + 32] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6667 + 64]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5010):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5010
                    t = 997 * t * mem[_6667 + 32] / (1000 * mem[_6667 + 64]) + (997 * t)
                    continue 
                _7284 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7284 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7284 + 36 len 28]
                s = 0
                while s < mem[_7284]:
                    mem[s + _7284 + 36] = mem[s + _7284 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7284]) <= mem[_7284]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7284] + _7284 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6735 / (1000 * _6736) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6735 / (1000 * _6736) + (997 * t)
                        continue 
                    _8463 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8463] = return_data.size
                    mem[_8463 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6735 / (1000 * _6736) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8463 + 32] == mem[_8463 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8463 + 32]
                    t = 997 * t * _6735 / (1000 * _6736) + (997 * t)
                    continue 
                mem[_7284 + mem[_7284] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7284] + _7284 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6735 / (1000 * _6736) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6735 / (1000 * _6736) + (997 * t)
                    continue 
                _8548 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8548] = return_data.size
                mem[_8548 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6735 / (1000 * _6736) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8548 + 32] == mem[_8548 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8548 + 32]
                t = 997 * t * _6735 / (1000 * _6736) + (997 * t)
                continue 
            mem[_5036 + mem[_5036] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5036] + _5036 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _6765 = mem[128]
                _6766 = mem[160]
                if address(s) == address(_5010):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[128] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[160] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[128]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5010):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5010
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _7287 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7287 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7287 + 36 len 28]
                    s = 0
                    while s < mem[_7287]:
                        mem[s + _7287 + 36] = mem[s + _7287 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7287]) <= mem[_7287]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7287] + _7287 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6766 / (1000 * _6765) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6766 / (1000 * _6765) + (997 * t)
                            continue 
                        _8465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8465] = return_data.size
                        mem[_8465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6766 / (1000 * _6765) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8465 + 32] == mem[_8465 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8465 + 32]
                        t = 997 * t * _6766 / (1000 * _6765) + (997 * t)
                        continue 
                    mem[_7287 + mem[_7287] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7287] + _7287 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6766 / (1000 * _6765) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6766 / (1000 * _6765) + (997 * t)
                        continue 
                    _8549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8549] = return_data.size
                    mem[_8549 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6766 / (1000 * _6765) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8549 + 32] == mem[_8549 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8549 + 32]
                    t = 997 * t * _6766 / (1000 * _6765) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[160] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[128] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[160]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5010):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5010
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _7374 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7374 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7374 + 36 len 28]
                s = 0
                while s < mem[_7374]:
                    mem[s + _7374 + 36] = mem[s + _7374 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7374]) <= mem[_7374]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7374] + _7374 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6765 / (1000 * _6766) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6765 / (1000 * _6766) + (997 * t)
                        continue 
                    _8467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8467] = return_data.size
                    mem[_8467 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6765 / (1000 * _6766) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8467 + 32] == mem[_8467 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8467 + 32]
                    t = 997 * t * _6765 / (1000 * _6766) + (997 * t)
                    continue 
                mem[_7374 + mem[_7374] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7374] + _7374 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6765 / (1000 * _6766) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6765 / (1000 * _6766) + (997 * t)
                    continue 
                _8550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8550] = return_data.size
                mem[_8550 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6765 / (1000 * _6766) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8550 + 32] == mem[_8550 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8550 + 32]
                t = 997 * t * _6765 / (1000 * _6766) + (997 * t)
                continue 
            _6678 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6678] = return_data.size
            mem[_6678 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _6767 = mem[_6678 + 32]
            _6768 = mem[_6678 + 64]
            if address(s) == address(_5010):
                if mem[_6678 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_6678 + 64] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6678 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6678 + 32] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6678 + 64] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6678 + 32]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5010):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5010
                    t = 997 * t * mem[_6678 + 64] / (1000 * mem[_6678 + 32]) + (997 * t)
                    continue 
                _7290 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7290 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7290 + 36 len 28]
                s = 0
                while s < mem[_7290]:
                    mem[s + _7290 + 36] = mem[s + _7290 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7290]) <= mem[_7290]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7290] + _7290 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6768 / (1000 * _6767) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6768 / (1000 * _6767) + (997 * t)
                        continue 
                    _8469 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8469] = return_data.size
                    mem[_8469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6768 / (1000 * _6767) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8469 + 32] == mem[_8469 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8469 + 32]
                    t = 997 * t * _6768 / (1000 * _6767) + (997 * t)
                    continue 
                mem[_7290 + mem[_7290] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7290] + _7290 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6768 / (1000 * _6767) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6768 / (1000 * _6767) + (997 * t)
                    continue 
                _8551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8551] = return_data.size
                mem[_8551 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6768 / (1000 * _6767) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8551 + 32] == mem[_8551 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8551 + 32]
                t = 997 * t * _6768 / (1000 * _6767) + (997 * t)
                continue 
            if mem[_6678 + 64] <= 0:
                revert with 0, 'l'
            if mem[_6678 + 32] <= 0:
                revert with 0, 'l'
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if mem[_6678 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_6678 + 64] > !(997 * t):
                revert with 0, 17
            if 997 * t and mem[_6678 + 32] > -1 / 997 * t:
                revert with 0, 17
            if not (1000 * mem[_6678 + 64]) + (997 * t):
                revert with 0, 18
            if address(s) != address(_5010):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5010
                t = 997 * t * mem[_6678 + 32] / (1000 * mem[_6678 + 64]) + (997 * t)
                continue 
            _7378 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_7378 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7378 + 36 len 28]
            s = 0
            while s < mem[_7378]:
                mem[s + _7378 + 36] = mem[s + _7378 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_7378]) <= mem[_7378]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7378] + _7378 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6767 / (1000 * _6768) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6767 / (1000 * _6768) + (997 * t)
                    continue 
                _8471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8471] = return_data.size
                mem[_8471 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6767 / (1000 * _6768) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8471 + 32] == mem[_8471 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8471 + 32]
                t = 997 * t * _6767 / (1000 * _6768) + (997 * t)
                continue 
            mem[_7378 + mem[_7378] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_7378] + _7378 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6767 / (1000 * _6768) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _6767 / (1000 * _6768) + (997 * t)
                continue 
            _8552 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8552] = return_data.size
            mem[_8552 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * _6767 / (1000 * _6768) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_8552 + 32] == mem[_8552 + 44 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_8552 + 32]
            t = 997 * t * _6767 / (1000 * _6768) + (997 * t)
            continue 
        _4992 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_4992] = return_data.size
        mem[_4992 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            _5011 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5011 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_5011 + 36 len 28]
            u = 0
            while u < mem[_5011]:
                mem[u + _5011 + 36] = mem[u + _5011 + 32]
                u = u + 32
                continue 
            if ceil32(mem[_5011]) <= mem[_5011]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5011] + _5011 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _6737 = mem[128]
                    _6738 = mem[160]
                    if not address(s):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                            revert with 0, 17
                        if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * mem[128] > !(997 * t):
                            revert with 0, 17
                        if 997 * t and mem[160] > -1 / 997 * t:
                            revert with 0, 17
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 0, 18
                        if address(s):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _7197 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7197 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7197 + 36 len 28]
                        s = 0
                        while s < mem[_7197]:
                            mem[s + _7197 + 36] = mem[s + _7197 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_7197]) <= mem[_7197]:
                            staticcall address(_3328).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_7197] + _7197 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _6738 / (1000 * _6737) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _6738 / (1000 * _6737) + (997 * t)
                                continue 
                            _8473 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8473] = return_data.size
                            mem[_8473 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6738 / (1000 * _6737) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_8473 + 32] == mem[_8473 + 44 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[_8473 + 32]
                            t = 997 * t * _6738 / (1000 * _6737) + (997 * t)
                            continue 
                        mem[_7197 + mem[_7197] + 36] = 0
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7197] + _7197 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6738 / (1000 * _6737) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6738 / (1000 * _6737) + (997 * t)
                            continue 
                        _8553 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8553] = return_data.size
                        mem[_8553 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6738 / (1000 * _6737) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8553 + 32] == mem[_8553 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8553 + 32]
                        t = 997 * t * _6738 / (1000 * _6737) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[160] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[128] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _7294 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7294 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7294 + 36 len 28]
                    s = 0
                    while s < mem[_7294]:
                        mem[s + _7294 + 36] = mem[s + _7294 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7294]) <= mem[_7294]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7294] + _7294 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6737 / (1000 * _6738) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6737 / (1000 * _6738) + (997 * t)
                            continue 
                        _8475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8475] = return_data.size
                        mem[_8475 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6737 / (1000 * _6738) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8475 + 32] == mem[_8475 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8475 + 32]
                        t = 997 * t * _6737 / (1000 * _6738) + (997 * t)
                        continue 
                    mem[_7294 + mem[_7294] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7294] + _7294 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6737 / (1000 * _6738) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6737 / (1000 * _6738) + (997 * t)
                        continue 
                    _8554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8554] = return_data.size
                    mem[_8554 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6737 / (1000 * _6738) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8554 + 32] == mem[_8554 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8554 + 32]
                    t = 997 * t * _6737 / (1000 * _6738) + (997 * t)
                    continue 
                _6669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6669] = return_data.size
                mem[_6669 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _6739 = mem[_6669 + 32]
                _6740 = mem[_6669 + 64]
                if not address(s):
                    if mem[_6669 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_6669 + 64] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[_6669 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_6669 + 32] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[_6669 + 64] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[_6669 + 32]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_6669 + 64] / (1000 * mem[_6669 + 32]) + (997 * t)
                        continue 
                    _7200 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7200 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7200 + 36 len 28]
                    s = 0
                    while s < mem[_7200]:
                        mem[s + _7200 + 36] = mem[s + _7200 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7200]) <= mem[_7200]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7200] + _7200 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6740 / (1000 * _6739) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6740 / (1000 * _6739) + (997 * t)
                            continue 
                        _8477 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8477] = return_data.size
                        mem[_8477 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6740 / (1000 * _6739) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8477 + 32] == mem[_8477 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8477 + 32]
                        t = 997 * t * _6740 / (1000 * _6739) + (997 * t)
                        continue 
                    mem[_7200 + mem[_7200] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7200] + _7200 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6740 / (1000 * _6739) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6740 / (1000 * _6739) + (997 * t)
                        continue 
                    _8555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8555] = return_data.size
                    mem[_8555 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6740 / (1000 * _6739) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8555 + 32] == mem[_8555 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8555 + 32]
                    t = 997 * t * _6740 / (1000 * _6739) + (997 * t)
                    continue 
                if mem[_6669 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_6669 + 32] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6669 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6669 + 64] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6669 + 32] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6669 + 64]) + (997 * t):
                    revert with 0, 18
                if address(s):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_6669 + 32] / (1000 * mem[_6669 + 64]) + (997 * t)
                    continue 
                _7298 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7298 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7298 + 36 len 28]
                s = 0
                while s < mem[_7298]:
                    mem[s + _7298 + 36] = mem[s + _7298 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7298]) <= mem[_7298]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7298] + _7298 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6739 / (1000 * _6740) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6739 / (1000 * _6740) + (997 * t)
                        continue 
                    _8479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8479] = return_data.size
                    mem[_8479 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6739 / (1000 * _6740) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8479 + 32] == mem[_8479 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8479 + 32]
                    t = 997 * t * _6739 / (1000 * _6740) + (997 * t)
                    continue 
                mem[_7298 + mem[_7298] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7298] + _7298 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6739 / (1000 * _6740) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6739 / (1000 * _6740) + (997 * t)
                    continue 
                _8556 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8556] = return_data.size
                mem[_8556 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6739 / (1000 * _6740) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8556 + 32] == mem[_8556 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8556 + 32]
                t = 997 * t * _6739 / (1000 * _6740) + (997 * t)
                continue 
            mem[_5011 + mem[_5011] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5011] + _5011 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _6769 = mem[128]
                _6770 = mem[160]
                if not address(s):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[128] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[160] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[128]) + (997 * t):
                        revert with 0, 18
                    if address(s):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _7301 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7301 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7301 + 36 len 28]
                    s = 0
                    while s < mem[_7301]:
                        mem[s + _7301 + 36] = mem[s + _7301 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7301]) <= mem[_7301]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7301] + _7301 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6770 / (1000 * _6769) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6770 / (1000 * _6769) + (997 * t)
                            continue 
                        _8481 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8481] = return_data.size
                        mem[_8481 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6770 / (1000 * _6769) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8481 + 32] == mem[_8481 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8481 + 32]
                        t = 997 * t * _6770 / (1000 * _6769) + (997 * t)
                        continue 
                    mem[_7301 + mem[_7301] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7301] + _7301 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6770 / (1000 * _6769) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6770 / (1000 * _6769) + (997 * t)
                        continue 
                    _8557 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8557] = return_data.size
                    mem[_8557 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6770 / (1000 * _6769) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8557 + 32] == mem[_8557 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8557 + 32]
                    t = 997 * t * _6770 / (1000 * _6769) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[160] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[128] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[160]) + (997 * t):
                    revert with 0, 18
                if address(s):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _7384 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7384 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7384 + 36 len 28]
                s = 0
                while s < mem[_7384]:
                    mem[s + _7384 + 36] = mem[s + _7384 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7384]) <= mem[_7384]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7384] + _7384 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6769 / (1000 * _6770) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6769 / (1000 * _6770) + (997 * t)
                        continue 
                    _8483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8483] = return_data.size
                    mem[_8483 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6769 / (1000 * _6770) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8483 + 32] == mem[_8483 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8483 + 32]
                    t = 997 * t * _6769 / (1000 * _6770) + (997 * t)
                    continue 
                mem[_7384 + mem[_7384] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7384] + _7384 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6769 / (1000 * _6770) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6769 / (1000 * _6770) + (997 * t)
                    continue 
                _8558 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8558] = return_data.size
                mem[_8558 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6769 / (1000 * _6770) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8558 + 32] == mem[_8558 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8558 + 32]
                t = 997 * t * _6769 / (1000 * _6770) + (997 * t)
                continue 
            _6679 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6679] = return_data.size
            mem[_6679 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _6771 = mem[_6679 + 32]
            _6772 = mem[_6679 + 64]
            if not address(s):
                if mem[_6679 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_6679 + 64] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6679 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6679 + 32] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6679 + 64] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6679 + 32]) + (997 * t):
                    revert with 0, 18
                if address(s):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_6679 + 64] / (1000 * mem[_6679 + 32]) + (997 * t)
                    continue 
                _7304 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7304 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7304 + 36 len 28]
                s = 0
                while s < mem[_7304]:
                    mem[s + _7304 + 36] = mem[s + _7304 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7304]) <= mem[_7304]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7304] + _7304 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6772 / (1000 * _6771) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6772 / (1000 * _6771) + (997 * t)
                        continue 
                    _8485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8485] = return_data.size
                    mem[_8485 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6772 / (1000 * _6771) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8485 + 32] == mem[_8485 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8485 + 32]
                    t = 997 * t * _6772 / (1000 * _6771) + (997 * t)
                    continue 
                mem[_7304 + mem[_7304] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7304] + _7304 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6772 / (1000 * _6771) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6772 / (1000 * _6771) + (997 * t)
                    continue 
                _8559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8559] = return_data.size
                mem[_8559 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6772 / (1000 * _6771) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8559 + 32] == mem[_8559 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8559 + 32]
                t = 997 * t * _6772 / (1000 * _6771) + (997 * t)
                continue 
            if mem[_6679 + 64] <= 0:
                revert with 0, 'l'
            if mem[_6679 + 32] <= 0:
                revert with 0, 'l'
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if mem[_6679 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_6679 + 64] > !(997 * t):
                revert with 0, 17
            if 997 * t and mem[_6679 + 32] > -1 / 997 * t:
                revert with 0, 17
            if not (1000 * mem[_6679 + 64]) + (997 * t):
                revert with 0, 18
            if address(s):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * mem[_6679 + 32] / (1000 * mem[_6679 + 64]) + (997 * t)
                continue 
            _7388 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_7388 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7388 + 36 len 28]
            s = 0
            while s < mem[_7388]:
                mem[s + _7388 + 36] = mem[s + _7388 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_7388]) <= mem[_7388]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7388] + _7388 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6771 / (1000 * _6772) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6771 / (1000 * _6772) + (997 * t)
                    continue 
                _8487 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8487] = return_data.size
                mem[_8487 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6771 / (1000 * _6772) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8487 + 32] == mem[_8487 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8487 + 32]
                t = 997 * t * _6771 / (1000 * _6772) + (997 * t)
                continue 
            mem[_7388 + mem[_7388] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_7388] + _7388 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6771 / (1000 * _6772) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _6771 / (1000 * _6772) + (997 * t)
                continue 
            _8560 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8560] = return_data.size
            mem[_8560 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * _6771 / (1000 * _6772) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_8560 + 32] == mem[_8560 + 44 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_8560 + 32]
            t = 997 * t * _6771 / (1000 * _6772) + (997 * t)
            continue 
        require return_data.size >= 32
        _5014 = mem[_4992 + 32]
        require mem[_4992 + 32] == mem[_4992 + 44 len 20]
        _5040 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_5040 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_5040 + 36 len 28]
        u = 0
        while u < mem[_5040]:
            mem[u + _5040 + 36] = mem[u + _5040 + 32]
            u = u + 32
            continue 
        if ceil32(mem[_5040]) <= mem[_5040]:
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5040] + _5040 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _6741 = mem[128]
                _6742 = mem[160]
                if address(s) == address(_5014):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 0, 17
                    if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[128] > !(997 * t):
                        revert with 0, 17
                    if 997 * t and mem[160] > -1 / 997 * t:
                        revert with 0, 17
                    if not (1000 * mem[128]) + (997 * t):
                        revert with 0, 18
                    if address(s) != address(_5014):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5014
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _7203 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7203 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7203 + 36 len 28]
                    s = 0
                    while s < mem[_7203]:
                        mem[s + _7203 + 36] = mem[s + _7203 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_7203]) <= mem[_7203]:
                        staticcall address(_3328).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_7203] + _7203 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _6742 / (1000 * _6741) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _6742 / (1000 * _6741) + (997 * t)
                            continue 
                        _8489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8489] = return_data.size
                        mem[_8489 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6742 / (1000 * _6741) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_8489 + 32] == mem[_8489 + 44 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_8489 + 32]
                        t = 997 * t * _6742 / (1000 * _6741) + (997 * t)
                        continue 
                    mem[_7203 + mem[_7203] + 36] = 0
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7203] + _7203 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6742 / (1000 * _6741) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6742 / (1000 * _6741) + (997 * t)
                        continue 
                    _8561 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8561] = return_data.size
                    mem[_8561 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6742 / (1000 * _6741) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8561 + 32] == mem[_8561 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8561 + 32]
                    t = 997 * t * _6742 / (1000 * _6741) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[160] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[128] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[160]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5014):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5014
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _7308 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7308 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7308 + 36 len 28]
                s = 0
                while s < mem[_7308]:
                    mem[s + _7308 + 36] = mem[s + _7308 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7308]) <= mem[_7308]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7308] + _7308 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6741 / (1000 * _6742) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6741 / (1000 * _6742) + (997 * t)
                        continue 
                    _8491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8491] = return_data.size
                    mem[_8491 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6741 / (1000 * _6742) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8491 + 32] == mem[_8491 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8491 + 32]
                    t = 997 * t * _6741 / (1000 * _6742) + (997 * t)
                    continue 
                mem[_7308 + mem[_7308] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7308] + _7308 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6741 / (1000 * _6742) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6741 / (1000 * _6742) + (997 * t)
                    continue 
                _8562 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8562] = return_data.size
                mem[_8562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6741 / (1000 * _6742) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8562 + 32] == mem[_8562 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8562 + 32]
                t = 997 * t * _6741 / (1000 * _6742) + (997 * t)
                continue 
            _6671 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6671] = return_data.size
            mem[_6671 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _6743 = mem[_6671 + 32]
            _6744 = mem[_6671 + 64]
            if address(s) == address(_5014):
                if mem[_6671 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_6671 + 64] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[_6671 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_6671 + 32] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[_6671 + 64] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[_6671 + 32]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5014):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5014
                    t = 997 * t * mem[_6671 + 64] / (1000 * mem[_6671 + 32]) + (997 * t)
                    continue 
                _7206 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7206 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7206 + 36 len 28]
                s = 0
                while s < mem[_7206]:
                    mem[s + _7206 + 36] = mem[s + _7206 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7206]) <= mem[_7206]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7206] + _7206 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6744 / (1000 * _6743) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6744 / (1000 * _6743) + (997 * t)
                        continue 
                    _8493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8493] = return_data.size
                    mem[_8493 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6744 / (1000 * _6743) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8493 + 32] == mem[_8493 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8493 + 32]
                    t = 997 * t * _6744 / (1000 * _6743) + (997 * t)
                    continue 
                mem[_7206 + mem[_7206] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7206] + _7206 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6744 / (1000 * _6743) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6744 / (1000 * _6743) + (997 * t)
                    continue 
                _8563 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8563] = return_data.size
                mem[_8563 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6744 / (1000 * _6743) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8563 + 32] == mem[_8563 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8563 + 32]
                t = 997 * t * _6744 / (1000 * _6743) + (997 * t)
                continue 
            if mem[_6671 + 64] <= 0:
                revert with 0, 'l'
            if mem[_6671 + 32] <= 0:
                revert with 0, 'l'
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if mem[_6671 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_6671 + 64] > !(997 * t):
                revert with 0, 17
            if 997 * t and mem[_6671 + 32] > -1 / 997 * t:
                revert with 0, 17
            if not (1000 * mem[_6671 + 64]) + (997 * t):
                revert with 0, 18
            if address(s) != address(_5014):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5014
                t = 997 * t * mem[_6671 + 32] / (1000 * mem[_6671 + 64]) + (997 * t)
                continue 
            _7312 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_7312 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7312 + 36 len 28]
            s = 0
            while s < mem[_7312]:
                mem[s + _7312 + 36] = mem[s + _7312 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_7312]) <= mem[_7312]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7312] + _7312 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6743 / (1000 * _6744) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6743 / (1000 * _6744) + (997 * t)
                    continue 
                _8495 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8495] = return_data.size
                mem[_8495 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6743 / (1000 * _6744) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8495 + 32] == mem[_8495 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8495 + 32]
                t = 997 * t * _6743 / (1000 * _6744) + (997 * t)
                continue 
            mem[_7312 + mem[_7312] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_7312] + _7312 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6743 / (1000 * _6744) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _6743 / (1000 * _6744) + (997 * t)
                continue 
            _8564 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8564] = return_data.size
            mem[_8564 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * _6743 / (1000 * _6744) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_8564 + 32] == mem[_8564 + 44 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_8564 + 32]
            t = 997 * t * _6743 / (1000 * _6744) + (997 * t)
            continue 
        mem[_5040 + mem[_5040] + 36] = 0
        staticcall address(_3328).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len mem[_5040] + _5040 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'l'
            require mem[96] >= 64
            _6773 = mem[128]
            _6774 = mem[160]
            if address(s) == address(_5014):
                if mem[128] <= 0:
                    revert with 0, 'l'
                if mem[160] <= 0:
                    revert with 0, 'l'
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if mem[128] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[128] > !(997 * t):
                    revert with 0, 17
                if 997 * t and mem[160] > -1 / 997 * t:
                    revert with 0, 17
                if not (1000 * mem[128]) + (997 * t):
                    revert with 0, 18
                if address(s) != address(_5014):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5014
                    t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                    continue 
                _7315 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7315 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7315 + 36 len 28]
                s = 0
                while s < mem[_7315]:
                    mem[s + _7315 + 36] = mem[s + _7315 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_7315]) <= mem[_7315]:
                    staticcall address(_3328).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_7315] + _7315 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _6774 / (1000 * _6773) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _6774 / (1000 * _6773) + (997 * t)
                        continue 
                    _8497 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_8497] = return_data.size
                    mem[_8497 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6774 / (1000 * _6773) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_8497 + 32] == mem[_8497 + 44 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[_8497 + 32]
                    t = 997 * t * _6774 / (1000 * _6773) + (997 * t)
                    continue 
                mem[_7315 + mem[_7315] + 36] = 0
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7315] + _7315 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6774 / (1000 * _6773) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6774 / (1000 * _6773) + (997 * t)
                    continue 
                _8565 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8565] = return_data.size
                mem[_8565 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6774 / (1000 * _6773) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8565 + 32] == mem[_8565 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8565 + 32]
                t = 997 * t * _6774 / (1000 * _6773) + (997 * t)
                continue 
            if mem[160] <= 0:
                revert with 0, 'l'
            if mem[128] <= 0:
                revert with 0, 'l'
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if mem[160] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[160] > !(997 * t):
                revert with 0, 17
            if 997 * t and mem[128] > -1 / 997 * t:
                revert with 0, 17
            if not (1000 * mem[160]) + (997 * t):
                revert with 0, 18
            if address(s) != address(_5014):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5014
                t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                continue 
            _7394 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_7394 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7394 + 36 len 28]
            s = 0
            while s < mem[_7394]:
                mem[s + _7394 + 36] = mem[s + _7394 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_7394]) <= mem[_7394]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7394] + _7394 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6773 / (1000 * _6774) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6773 / (1000 * _6774) + (997 * t)
                    continue 
                _8499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8499] = return_data.size
                mem[_8499 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6773 / (1000 * _6774) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8499 + 32] == mem[_8499 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8499 + 32]
                t = 997 * t * _6773 / (1000 * _6774) + (997 * t)
                continue 
            mem[_7394 + mem[_7394] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_7394] + _7394 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6773 / (1000 * _6774) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _6773 / (1000 * _6774) + (997 * t)
                continue 
            _8566 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8566] = return_data.size
            mem[_8566 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * _6773 / (1000 * _6774) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_8566 + 32] == mem[_8566 + 44 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_8566 + 32]
            t = 997 * t * _6773 / (1000 * _6774) + (997 * t)
            continue 
        _6680 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_6680] = return_data.size
        mem[_6680 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'l'
        require return_data.size >= 64
        _6775 = mem[_6680 + 32]
        _6776 = mem[_6680 + 64]
        if address(s) == address(_5014):
            if mem[_6680 + 32] <= 0:
                revert with 0, 'l'
            if mem[_6680 + 64] <= 0:
                revert with 0, 'l'
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if mem[_6680 + 32] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_6680 + 32] > !(997 * t):
                revert with 0, 17
            if 997 * t and mem[_6680 + 64] > -1 / 997 * t:
                revert with 0, 17
            if not (1000 * mem[_6680 + 32]) + (997 * t):
                revert with 0, 18
            if address(s) != address(_5014):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5014
                t = 997 * t * mem[_6680 + 64] / (1000 * mem[_6680 + 32]) + (997 * t)
                continue 
            _7318 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_7318 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7318 + 36 len 28]
            s = 0
            while s < mem[_7318]:
                mem[s + _7318 + 36] = mem[s + _7318 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_7318]) <= mem[_7318]:
                staticcall address(_3328).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_7318] + _7318 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _6776 / (1000 * _6775) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _6776 / (1000 * _6775) + (997 * t)
                    continue 
                _8501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_8501] = return_data.size
                mem[_8501 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6776 / (1000 * _6775) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_8501 + 32] == mem[_8501 + 44 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_8501 + 32]
                t = 997 * t * _6776 / (1000 * _6775) + (997 * t)
                continue 
            mem[_7318 + mem[_7318] + 36] = 0
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_7318] + _7318 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6776 / (1000 * _6775) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _6776 / (1000 * _6775) + (997 * t)
                continue 
            _8567 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8567] = return_data.size
            mem[_8567 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * _6776 / (1000 * _6775) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_8567 + 32] == mem[_8567 + 44 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_8567 + 32]
            t = 997 * t * _6776 / (1000 * _6775) + (997 * t)
            continue 
        if mem[_6680 + 64] <= 0:
            revert with 0, 'l'
        if mem[_6680 + 32] <= 0:
            revert with 0, 'l'
        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if mem[_6680 + 64] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_6680 + 64] > !(997 * t):
            revert with 0, 17
        if 997 * t and mem[_6680 + 32] > -1 / 997 * t:
            revert with 0, 17
        if not (1000 * mem[_6680 + 64]) + (997 * t):
            revert with 0, 18
        if address(s) != address(_5014):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5014
            t = 997 * t * mem[_6680 + 32] / (1000 * mem[_6680 + 64]) + (997 * t)
            continue 
        _7398 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_7398 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_7398 + 36 len 28]
        s = 0
        while s < mem[_7398]:
            mem[s + _7398 + 36] = mem[s + _7398 + 32]
            s = s + 32
            continue 
        if ceil32(mem[_7398]) <= mem[_7398]:
            staticcall address(_3328).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_7398] + _7398 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _6775 / (1000 * _6776) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _6775 / (1000 * _6776) + (997 * t)
                continue 
            _8503 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_8503] = return_data.size
            mem[_8503 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * _6775 / (1000 * _6776) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_8503 + 32] == mem[_8503 + 44 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_8503 + 32]
            t = 997 * t * _6775 / (1000 * _6776) + (997 * t)
            continue 
        mem[_7398 + mem[_7398] + 36] = 0
        staticcall address(_3328).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len mem[_7398] + _7398 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                t = 997 * t * _6775 / (1000 * _6776) + (997 * t)
                continue 
            require mem[96] >= 32
            require mem[128] == mem[140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[128]
            t = 997 * t * _6775 / (1000 * _6776) + (997 * t)
            continue 
        _8568 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_8568] = return_data.size
        mem[_8568 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 0
            t = 997 * t * _6775 / (1000 * _6776) + (997 * t)
            continue 
        require return_data.size >= 32
        require mem[_8568 + 32] == mem[_8568 + 44 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_8568 + 32]
        t = 997 * t * _6775 / (1000 * _6776) + (997 * t)
        continue 
    return t, address(s)
}



}
