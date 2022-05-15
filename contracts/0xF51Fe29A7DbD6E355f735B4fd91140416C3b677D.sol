contract main {




// =====================  Runtime code  =====================


#
#  - sub_048606fd(?)
#  - sub_0773b509(?)
#
address stor0;
mapping of uint8 stor2;

function _fallback() payable {
  stop
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    stor2[address(arg1)] = 1
}

function sub_9886ccd5(?) {
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5b8bfaea(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(arg1)
    call arg1.burn(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_3412b979(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6d9cec22(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(address(arg1 xor msg.sender + arg2 - 3735932941))
    call address(arg1 xor msg.sender + arg2 - 3735932941).skim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0363e1a8(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(address(arg1 xor msg.sender + arg2 - 275969102669431))
    call address(arg1 xor msg.sender + arg2 - 275969102669431).skim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fbec2796(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(address(arg1 xor msg.sender + arg2 - 45724226011116378546927736))
    call address(arg1 xor msg.sender + arg2 - 45724226011116378546927736).skim(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function payout(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
}

function sub_7be91022(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        mem[132] = cd[((32 * idx) + cd[36] + 36)]
        mem[164] = 96
        mem[196] = ('cd', 68).length
        mem[228 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + 228] = 0
        require ext_code.size(this.address)
        staticcall this.address.0x96919a5a with:
                gas gas_remaining wei
               args address(cd[4]), cd[((32 * idx) + cd[36] + 36)], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)])
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] <= cd[((32 * idx) + cd[36] + 36)]:
            idx = idx + 1
            continue 
        if ext_call.return_data[0] - cd[((32 * idx) + cd[36] + 36)] > 0:
            idx = idx + 1
            continue 
        if ext_call.return_data[0] - cd[((32 * idx) + cd[36] + 36)] >= 0:
            idx = idx + 1
            continue 
        else:
            return 0
    return 0
}

function sub_96919a5a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = address(cd[4])
    t = cd[36]
    while idx < ('cd', 68).length:
        _526 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_526 + 32] = 0xdfe168100000000000000000000000000000000000000000000000000000000 or mem[_526 + 36 len 28]
        v = _526 + 32
        w = _526 + 36
        u = mem[_526]
        while u >= 32:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u - 32
            continue 
        mem[_526 + floor32(mem[_526]) + 36] = mem[_526 + -(mem[_526] % 32) + floor32(mem[_526]) + 64 len mem[_526] % 32] or Mask(8 * -(mem[_526] % 32) + 32, -(8 * -(mem[_526] % 32) + 32) + 256, mem[_526 + floor32(mem[_526]) + 36])
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + 36 len 4] with:
                gas gas_remaining wei
               args mem[_526 + 40 len mem[_526] - 4]
        if not return_data.size:
            if not ext_call.success:
                mem[_526 + 36] = 4
                mem[64] = _526 + 72
                mem[_526 + 68] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_526 + 72 len 28]
                v = _526 + 68
                w = _526 + 72
                u = 4
                while u >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                mem[_526 + 72] = mem[_526 + 96 len 4] or Mask(224, 32, mem[_526 + 72])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + 72 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _1592 = mem[128]
                    _1593 = mem[160]
                    if not address(s):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        require (1000 * mem[128]) + (997 * t)
                        if address(s):
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        mem[_526 + 72] = 4
                        mem[64] = _526 + 108
                        mem[_526 + 104] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + 108 len 28]
                        mem[_526 + 108] = mem[_526 + 132 len 4] or Mask(224, 32, mem[_526 + 108])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + 108 len 4] with:
                                gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                            continue 
                        mem[64] = _526 + ceil32(return_data.size) + 109
                        mem[_526 + 108] = return_data.size
                        mem[_526 + 140 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_526 + 140]
                        t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    require (1000 * mem[160]) + (997 * t)
                    if address(s):
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    mem[_526 + 72] = 4
                    mem[64] = _526 + 108
                    mem[_526 + 104] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + 108 len 28]
                    mem[_526 + 108] = mem[_526 + 132 len 4] or Mask(224, 32, mem[_526 + 108])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + 108 len 4] with:
                            gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                        continue 
                    mem[64] = _526 + ceil32(return_data.size) + 109
                    mem[_526 + 108] = return_data.size
                    mem[_526 + 140 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_526 + 140]
                    t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                    continue 
                mem[64] = _526 + ceil32(return_data.size) + 73
                mem[_526 + 72] = return_data.size
                mem[_526 + 104 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _1594 = mem[_526 + 104]
                _1595 = mem[_526 + 136]
                if not address(s):
                    if mem[_526 + 104] <= 0:
                        revert with 0, 'l'
                    if mem[_526 + 136] <= 0:
                        revert with 0, 'l'
                    require (1000 * mem[_526 + 104]) + (997 * t)
                    if address(s):
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_526 + 136] / (1000 * mem[_526 + 104]) + (997 * t)
                        continue 
                    mem[_526 + ceil32(return_data.size) + 73] = 4
                    mem[64] = _526 + ceil32(return_data.size) + 109
                    mem[_526 + ceil32(return_data.size) + 105] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 109 len 28]
                    mem[_526 + ceil32(return_data.size) + 109] = mem[_526 + ceil32(return_data.size) + 133 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 109])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 109 len 4] with:
                            gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                        continue 
                    mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
                    mem[_526 + ceil32(return_data.size) + 109] = return_data.size
                    mem[_526 + ceil32(return_data.size) + 141 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_526 + ceil32(return_data.size) + 141]
                    t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                    continue 
                if mem[_526 + 136] <= 0:
                    revert with 0, 'l'
                if mem[_526 + 104] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[_526 + 136]) + (997 * t)
                if address(s):
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_526 + 104] / (1000 * mem[_526 + 136]) + (997 * t)
                    continue 
                mem[_526 + ceil32(return_data.size) + 73] = 4
                mem[64] = _526 + ceil32(return_data.size) + 109
                mem[_526 + ceil32(return_data.size) + 105] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 109 len 28]
                mem[_526 + ceil32(return_data.size) + 109] = mem[_526 + ceil32(return_data.size) + 133 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 109])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 109 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                    continue 
                mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
                mem[_526 + ceil32(return_data.size) + 109] = return_data.size
                mem[_526 + ceil32(return_data.size) + 141 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_526 + ceil32(return_data.size) + 141]
                t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                continue 
            require mem[96] >= 32
            _1054 = mem[128]
            mem[_526 + 36] = 4
            mem[64] = _526 + 72
            mem[_526 + 68] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_526 + 72 len 28]
            v = _526 + 68
            w = _526 + 72
            u = 4
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[_526 + 72] = mem[_526 + 96 len 4] or Mask(224, 32, mem[_526 + 72])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + 72 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _1596 = mem[128]
                _1597 = mem[160]
                if address(s) == address(_1054):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    require (1000 * mem[128]) + (997 * t)
                    if address(s) != address(_1054):
                        idx = idx + 1
                        s = _1054
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    mem[_526 + 72] = 4
                    mem[64] = _526 + 108
                    mem[_526 + 104] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + 108 len 28]
                    mem[_526 + 108] = mem[_526 + 132 len 4] or Mask(224, 32, mem[_526 + 108])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + 108 len 4] with:
                            gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                        continue 
                    mem[64] = _526 + ceil32(return_data.size) + 109
                    mem[_526 + 108] = return_data.size
                    mem[_526 + 140 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_526 + 140]
                    t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[160]) + (997 * t)
                if address(s) != address(_1054):
                    idx = idx + 1
                    s = _1054
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                mem[_526 + 72] = 4
                mem[64] = _526 + 108
                mem[_526 + 104] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + 108 len 28]
                mem[_526 + 108] = mem[_526 + 132 len 4] or Mask(224, 32, mem[_526 + 108])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + 108 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                    continue 
                mem[64] = _526 + ceil32(return_data.size) + 109
                mem[_526 + 108] = return_data.size
                mem[_526 + 140 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_526 + 140]
                t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                continue 
            mem[64] = _526 + ceil32(return_data.size) + 73
            mem[_526 + 72] = return_data.size
            mem[_526 + 104 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _1598 = mem[_526 + 104]
            _1599 = mem[_526 + 136]
            if address(s) == address(_1054):
                if mem[_526 + 104] <= 0:
                    revert with 0, 'l'
                if mem[_526 + 136] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[_526 + 104]) + (997 * t)
                if address(s) != address(_1054):
                    idx = idx + 1
                    s = _1054
                    t = 997 * t * mem[_526 + 136] / (1000 * mem[_526 + 104]) + (997 * t)
                    continue 
                mem[_526 + ceil32(return_data.size) + 73] = 4
                mem[64] = _526 + ceil32(return_data.size) + 109
                mem[_526 + ceil32(return_data.size) + 105] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 109 len 28]
                mem[_526 + ceil32(return_data.size) + 109] = mem[_526 + ceil32(return_data.size) + 133 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 109])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 109 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                    continue 
                mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
                mem[_526 + ceil32(return_data.size) + 109] = return_data.size
                mem[_526 + ceil32(return_data.size) + 141 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_526 + ceil32(return_data.size) + 141]
                t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                continue 
            if mem[_526 + 136] <= 0:
                revert with 0, 'l'
            if mem[_526 + 104] <= 0:
                revert with 0, 'l'
            require (1000 * mem[_526 + 136]) + (997 * t)
            if address(s) != address(_1054):
                idx = idx + 1
                s = _1054
                t = 997 * t * mem[_526 + 104] / (1000 * mem[_526 + 136]) + (997 * t)
                continue 
            mem[_526 + ceil32(return_data.size) + 73] = 4
            mem[64] = _526 + ceil32(return_data.size) + 109
            mem[_526 + ceil32(return_data.size) + 105] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 109 len 28]
            mem[_526 + ceil32(return_data.size) + 109] = mem[_526 + ceil32(return_data.size) + 133 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 109])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 109 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                continue 
            mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
            mem[_526 + ceil32(return_data.size) + 109] = return_data.size
            mem[_526 + ceil32(return_data.size) + 141 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_526 + ceil32(return_data.size) + 141]
            t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
            continue 
        mem[64] = _526 + ceil32(return_data.size) + 37
        mem[_526 + 36] = return_data.size
        mem[_526 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[_526 + ceil32(return_data.size) + 37] = 4
            mem[64] = _526 + ceil32(return_data.size) + 73
            mem[_526 + ceil32(return_data.size) + 69] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 73 len 28]
            v = _526 + ceil32(return_data.size) + 69
            w = _526 + ceil32(return_data.size) + 73
            u = 4
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[_526 + ceil32(return_data.size) + 73] = mem[_526 + ceil32(return_data.size) + 97 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 73])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 73 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _1600 = mem[128]
                _1601 = mem[160]
                if not address(s):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    require (1000 * mem[128]) + (997 * t)
                    if address(s):
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    mem[_526 + ceil32(return_data.size) + 73] = 4
                    mem[64] = _526 + ceil32(return_data.size) + 109
                    mem[_526 + ceil32(return_data.size) + 105] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 109 len 28]
                    mem[_526 + ceil32(return_data.size) + 109] = mem[_526 + ceil32(return_data.size) + 133 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 109])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 109 len 4] with:
                            gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                        continue 
                    mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
                    mem[_526 + ceil32(return_data.size) + 109] = return_data.size
                    mem[_526 + ceil32(return_data.size) + 141 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_526 + ceil32(return_data.size) + 141]
                    t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[160]) + (997 * t)
                if address(s):
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                mem[_526 + ceil32(return_data.size) + 73] = 4
                mem[64] = _526 + ceil32(return_data.size) + 109
                mem[_526 + ceil32(return_data.size) + 105] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 109 len 28]
                mem[_526 + ceil32(return_data.size) + 109] = mem[_526 + ceil32(return_data.size) + 133 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 109])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 109 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                    continue 
                mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
                mem[_526 + ceil32(return_data.size) + 109] = return_data.size
                mem[_526 + ceil32(return_data.size) + 141 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_526 + ceil32(return_data.size) + 141]
                t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                continue 
            mem[64] = _526 + (2 * ceil32(return_data.size)) + 74
            mem[_526 + ceil32(return_data.size) + 73] = return_data.size
            mem[_526 + ceil32(return_data.size) + 105 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'l',
                            mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require return_data.size >= 64
            _1602 = mem[_526 + ceil32(return_data.size) + 105]
            _1603 = mem[_526 + ceil32(return_data.size) + 137]
            if not address(s):
                if mem[_526 + ceil32(return_data.size) + 105] <= 0:
                    revert with 0, 
                                'l',
                                mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if mem[_526 + ceil32(return_data.size) + 137] <= 0:
                    revert with 0, 
                                'l',
                                mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require (1000 * mem[_526 + ceil32(return_data.size) + 105]) + (997 * t)
                if address(s):
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_526 + ceil32(return_data.size) + 137] / (1000 * mem[_526 + ceil32(return_data.size) + 105]) + (997 * t)
                    continue 
                mem[_526 + (2 * ceil32(return_data.size)) + 74] = 4
                mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
                mem[_526 + (2 * ceil32(return_data.size)) + 106] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + (2 * ceil32(return_data.size)) + 110 len 28]
                mem[_526 + (2 * ceil32(return_data.size)) + 110] = mem[_526 + (2 * ceil32(return_data.size)) + 134 len 4] or Mask(224, 32, mem[_526 + (2 * ceil32(return_data.size)) + 110])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + (2 * ceil32(return_data.size)) + 110 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                    continue 
                mem[64] = _526 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 111
                mem[_526 + (2 * ceil32(return_data.size)) + 110] = return_data.size
                mem[_526 + (2 * ceil32(return_data.size)) + 142 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_526 + (2 * ceil32(return_data.size)) + 142]
                t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                continue 
            if mem[_526 + ceil32(return_data.size) + 137] <= 0:
                revert with 0, 
                            'l',
                            mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if mem[_526 + ceil32(return_data.size) + 105] <= 0:
                revert with 0, 
                            'l',
                            mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require (1000 * mem[_526 + ceil32(return_data.size) + 137]) + (997 * t)
            if address(s):
                idx = idx + 1
                s = 0
                t = 997 * t * mem[_526 + ceil32(return_data.size) + 105] / (1000 * mem[_526 + ceil32(return_data.size) + 137]) + (997 * t)
                continue 
            mem[_526 + (2 * ceil32(return_data.size)) + 74] = 4
            mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
            mem[_526 + (2 * ceil32(return_data.size)) + 106] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + (2 * ceil32(return_data.size)) + 110 len 28]
            mem[_526 + (2 * ceil32(return_data.size)) + 110] = mem[_526 + (2 * ceil32(return_data.size)) + 134 len 4] or Mask(224, 32, mem[_526 + (2 * ceil32(return_data.size)) + 110])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + (2 * ceil32(return_data.size)) + 110 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                continue 
            mem[64] = _526 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 111
            mem[_526 + (2 * ceil32(return_data.size)) + 110] = return_data.size
            mem[_526 + (2 * ceil32(return_data.size)) + 142 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_526 + (2 * ceil32(return_data.size)) + 142]
            t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
            continue 
        require return_data.size >= 32
        _1055 = mem[_526 + 68]
        mem[_526 + ceil32(return_data.size) + 37] = 4
        mem[64] = _526 + ceil32(return_data.size) + 73
        mem[_526 + ceil32(return_data.size) + 69] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 73 len 28]
        v = _526 + ceil32(return_data.size) + 69
        w = _526 + ceil32(return_data.size) + 73
        u = 4
        while u >= 32:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u - 32
            continue 
        mem[_526 + ceil32(return_data.size) + 73] = mem[_526 + ceil32(return_data.size) + 97 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 73])
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 73 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'l'
            require mem[96] >= 64
            _1604 = mem[128]
            _1605 = mem[160]
            if address(s) == address(_1055):
                if mem[128] <= 0:
                    revert with 0, 'l'
                if mem[160] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[128]) + (997 * t)
                if address(s) != address(_1055):
                    idx = idx + 1
                    s = _1055
                    t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                    continue 
                mem[_526 + ceil32(return_data.size) + 73] = 4
                mem[64] = _526 + ceil32(return_data.size) + 109
                mem[_526 + ceil32(return_data.size) + 105] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 109 len 28]
                mem[_526 + ceil32(return_data.size) + 109] = mem[_526 + ceil32(return_data.size) + 133 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 109])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 109 len 4] with:
                        gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                    continue 
                mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
                mem[_526 + ceil32(return_data.size) + 109] = return_data.size
                mem[_526 + ceil32(return_data.size) + 141 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_526 + ceil32(return_data.size) + 141]
                t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                continue 
            if mem[160] <= 0:
                revert with 0, 'l'
            if mem[128] <= 0:
                revert with 0, 'l'
            require (1000 * mem[160]) + (997 * t)
            if address(s) != address(_1055):
                idx = idx + 1
                s = _1055
                t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                continue 
            mem[_526 + ceil32(return_data.size) + 73] = 4
            mem[64] = _526 + ceil32(return_data.size) + 109
            mem[_526 + ceil32(return_data.size) + 105] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + ceil32(return_data.size) + 109 len 28]
            mem[_526 + ceil32(return_data.size) + 109] = mem[_526 + ceil32(return_data.size) + 133 len 4] or Mask(224, 32, mem[_526 + ceil32(return_data.size) + 109])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + ceil32(return_data.size) + 109 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                continue 
            mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
            mem[_526 + ceil32(return_data.size) + 109] = return_data.size
            mem[_526 + ceil32(return_data.size) + 141 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_526 + ceil32(return_data.size) + 141]
            t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
            continue 
        mem[64] = _526 + (2 * ceil32(return_data.size)) + 74
        mem[_526 + ceil32(return_data.size) + 73] = return_data.size
        mem[_526 + ceil32(return_data.size) + 105 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'l',
                        mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require return_data.size >= 64
        _1606 = mem[_526 + ceil32(return_data.size) + 105]
        _1607 = mem[_526 + ceil32(return_data.size) + 137]
        if address(s) == address(_1055):
            if mem[_526 + ceil32(return_data.size) + 105] <= 0:
                revert with 0, 
                            'l',
                            mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if mem[_526 + ceil32(return_data.size) + 137] <= 0:
                revert with 0, 
                            'l',
                            mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require (1000 * mem[_526 + ceil32(return_data.size) + 105]) + (997 * t)
            if address(s) != address(_1055):
                idx = idx + 1
                s = _1055
                t = 997 * t * mem[_526 + ceil32(return_data.size) + 137] / (1000 * mem[_526 + ceil32(return_data.size) + 105]) + (997 * t)
                continue 
            mem[_526 + (2 * ceil32(return_data.size)) + 74] = 4
            mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
            mem[_526 + (2 * ceil32(return_data.size)) + 106] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + (2 * ceil32(return_data.size)) + 110 len 28]
            mem[_526 + (2 * ceil32(return_data.size)) + 110] = mem[_526 + (2 * ceil32(return_data.size)) + 134 len 4] or Mask(224, 32, mem[_526 + (2 * ceil32(return_data.size)) + 110])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + (2 * ceil32(return_data.size)) + 110 len 4] with:
                    gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                continue 
            mem[64] = _526 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 111
            mem[_526 + (2 * ceil32(return_data.size)) + 110] = return_data.size
            mem[_526 + (2 * ceil32(return_data.size)) + 142 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_526 + (2 * ceil32(return_data.size)) + 142]
            t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
            continue 
        if mem[_526 + ceil32(return_data.size) + 137] <= 0:
            revert with 0, 
                        'l',
                        mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if mem[_526 + ceil32(return_data.size) + 105] <= 0:
            revert with 0, 
                        'l',
                        mem[_526 + (2 * ceil32(return_data.size)) + 174 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require (1000 * mem[_526 + ceil32(return_data.size) + 137]) + (997 * t)
        if address(s) != address(_1055):
            idx = idx + 1
            s = _1055
            t = 997 * t * mem[_526 + ceil32(return_data.size) + 105] / (1000 * mem[_526 + ceil32(return_data.size) + 137]) + (997 * t)
            continue 
        mem[_526 + (2 * ceil32(return_data.size)) + 74] = 4
        mem[64] = _526 + (2 * ceil32(return_data.size)) + 110
        mem[_526 + (2 * ceil32(return_data.size)) + 106] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_526 + (2 * ceil32(return_data.size)) + 110 len 28]
        mem[_526 + (2 * ceil32(return_data.size)) + 110] = mem[_526 + (2 * ceil32(return_data.size)) + 134 len 4] or Mask(224, 32, mem[_526 + (2 * ceil32(return_data.size)) + 110])
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_526 + (2 * ceil32(return_data.size)) + 110 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
                continue 
            require mem[96] >= 32
            idx = idx + 1
            s = mem[128]
            t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
            continue 
        mem[64] = _526 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 111
        mem[_526 + (2 * ceil32(return_data.size)) + 110] = return_data.size
        mem[_526 + (2 * ceil32(return_data.size)) + 142 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            idx = idx + 1
            s = 0
            t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
            continue 
        require return_data.size >= 32
        idx = idx + 1
        s = mem[_526 + (2 * ceil32(return_data.size)) + 142]
        t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
        continue 
    return t, address(s)
}



}
