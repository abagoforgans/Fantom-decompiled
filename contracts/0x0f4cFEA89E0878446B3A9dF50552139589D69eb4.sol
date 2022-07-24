contract main {




// =====================  Runtime code  =====================


#
#  - sub_d08ab02a(?)
#
address _owner;

function get_owner() {
    return _owner
}

function _fallback() payable {
    revert
}

function get_balance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function get_allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ab034f8c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '[set_allowance] Not approved'
}

function sub_e12b1d04(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '[remove_token] Empty balance'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bcc26088(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    _47 = mem[128]
    mem[ceil32(32 * ('cd', 36).length) + 101] = address(cd[4])
    mem[ceil32(32 * ('cd', 36).length) + 133] = cd[68]
    require ext_code.size(address(_47))
    call address(_47).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), cd[68]
    mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 101] = cd[68]
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 133] = 64
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 165] = ('cd', 36).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 197
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 197 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _91 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128
    _92 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = _92
    require _91 + (32 * _92) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _92)] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + _91 + 129 len ceil32(32 * _92)]
    if 1 >= _92:
        revert with 0, 50
    _123 = mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 161]
    if mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 161] != cd[68]:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = _123
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = cd[100]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 96], address(this.address), cd[100], mem[mem[64] + 164 len (32 * ('cd', 36).length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_152] <= test266151307()
        require _152 + return_data.size > _152 + mem[_152] + 31
        if mem[_152 + mem[_152]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_152 + mem[_152]]) + 1 < 0 or _152 + ceil32(return_data.size) + ceil32(32 * mem[_152 + mem[_152]]) + 1 > test266151307():
            revert with 0, 65
        require mem[_152] + (32 * mem[_152 + mem[_152]]) + 32 <= return_data.size
        return _123
    if 0 >= _92:
        revert with 0, 50
    _126 = mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129]
    _128 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = _126
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 36).length
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_128 + 100] = this.address
    mem[_128 + 132] = cd[100]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _128 + (32 * ('cd', 36).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _153 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_153] <= test266151307()
    require _153 + return_data.size > _153 + mem[_153] + 31
    if mem[_153 + mem[_153]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_153 + mem[_153]]) + 1 < 0 or _153 + ceil32(return_data.size) + ceil32(32 * mem[_153 + mem[_153]]) + 1 > test266151307():
        revert with 0, 65
    require mem[_153] + (32 * mem[_153 + mem[_153]]) + 32 <= return_data.size
    return _126
}

function sub_9c887877(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = ('cd', 68).length
    idx = 0
    s = ceil32(return_data.size) + 196
    t = cd[68] + 36
    while idx < ('cd', 68).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _529 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
    _530 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _529 + (32 * _530) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _530)] = mem[ceil32(return_data.size) + _529 + 128 len ceil32(32 * _530)]
    if 1 >= _530:
        revert with 0, 50
    _1049 = mem[(2 * ceil32(return_data.size)) + 160]
    if mem[(2 * ceil32(return_data.size)) + 160] != ext_call.return_data[0]:
        _1050 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1049
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 100).length
        idx = 0
        s = mem[64] + 100
        t = cd[100] + 36
        while idx < ('cd', 100).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1050 + (32 * ('cd', 100).length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1564 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1566 = mem[_1564]
        require mem[_1564] <= test266151307()
        require _1564 + return_data.size > _1564 + mem[_1564] + 31
        _1568 = mem[_1564 + mem[_1564]]
        if mem[_1564 + mem[_1564]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1564 + mem[_1564]]) + 1 < 0 or _1564 + ceil32(return_data.size) + ceil32(32 * mem[_1564 + mem[_1564]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1564 + ceil32(return_data.size) + ceil32(32 * mem[_1564 + mem[_1564]]) + 1
        mem[_1564 + ceil32(return_data.size)] = _1568
        require _1566 + (32 * _1568) + 32 <= return_data.size
        mem[_1564 + ceil32(return_data.size) + 32 len ceil32(32 * _1568)] = mem[_1564 + _1566 + 32 len ceil32(32 * _1568)]
        if 1 >= _1568:
            revert with 0, 50
        if mem[_1564 + ceil32(return_data.size) + 64] != _1049:
            if mem[_1564 + ceil32(return_data.size) + 64] <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
            _2078 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_2078] = ('cd', 68).length
            mem[_2078 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_2078 + (32 * ('cd', 68).length) + 32] = 0
            if _owner != msg.sender:
                revert with 0, 'Not the owner'
            if 0 >= ('cd', 68).length:
                revert with 0, 50
            _2094 = mem[_2078 + 32]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(address(_2094))
            call address(_2094).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2108 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2108] == bool(mem[_2108])
            _2122 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 68).length
            idx = 0
            s = _2078 + 32
            t = mem[64] + 100
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2122 + (32 * ('cd', 68).length) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2576 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2580 = mem[_2576]
            require mem[_2576] <= test266151307()
            require _2576 + return_data.size > _2576 + mem[_2576] + 31
            _2584 = mem[_2576 + mem[_2576]]
            if mem[_2576 + mem[_2576]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2576 + mem[_2576]]) + 1 < 0 or _2576 + ceil32(return_data.size) + ceil32(32 * mem[_2576 + mem[_2576]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2576 + ceil32(return_data.size) + ceil32(32 * mem[_2576 + mem[_2576]]) + 1
            mem[_2576 + ceil32(return_data.size)] = _2584
            require _2580 + (32 * _2584) + 32 <= return_data.size
            mem[_2576 + ceil32(return_data.size) + 32 len ceil32(32 * _2584)] = mem[_2576 + _2580 + 32 len ceil32(32 * _2584)]
            if 1 >= _2584:
                revert with 0, 50
            _3012 = mem[_2576 + ceil32(return_data.size) + 64]
            if mem[_2576 + ceil32(return_data.size) + 64] != ext_call.return_data[0]:
                _3016 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _3012
                mem[mem[64] + 68] = 160
                _3028 = mem[_2078]
                mem[mem[64] + 164] = mem[_2078]
                idx = 0
                s = _2078 + 32
                t = mem[64] + 196
                while idx < _3028:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3016 + 100] = this.address
                mem[_3016 + 132] = cd[132]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3016 + (32 * _3028) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3432 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3440 = mem[_3432]
                require mem[_3432] <= test266151307()
                require _3432 + return_data.size > _3432 + mem[_3432] + 31
                _3448 = mem[_3432 + mem[_3432]]
                if mem[_3432 + mem[_3432]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_3432 + mem[_3432]]) + 1 < 0 or _3432 + ceil32(return_data.size) + ceil32(32 * mem[_3432 + mem[_3432]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3432 + ceil32(return_data.size) + ceil32(32 * mem[_3432 + mem[_3432]]) + 1
                mem[_3432 + ceil32(return_data.size)] = _3448
                require _3440 + (32 * _3448) + 32 <= return_data.size
                mem[_3432 + ceil32(return_data.size) + 32 len ceil32(32 * _3448)] = mem[_3432 + _3440 + 32 len ceil32(32 * _3448)]
                _3800 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_3800] = ('cd', 100).length
                mem[_3800 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_3800 + (32 * ('cd', 100).length) + 32] = 0
                if _owner != msg.sender:
                    revert with 0, 'Not the owner'
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                _3824 = mem[_3800 + 32]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1049
                require ext_code.size(address(_3824))
                call address(_3824).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _1049
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3856 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3856] == bool(mem[_3856])
                _3872 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1049
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 100).length
                idx = 0
                s = _3800 + 32
                t = mem[64] + 100
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3872 + (32 * ('cd', 100).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4136 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4144 = mem[_4136]
                require mem[_4136] <= test266151307()
                require _4136 + return_data.size > _4136 + mem[_4136] + 31
                _4152 = mem[_4136 + mem[_4136]]
                if mem[_4136 + mem[_4136]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_4136 + mem[_4136]]) + 1 < 0 or _4136 + ceil32(return_data.size) + ceil32(32 * mem[_4136 + mem[_4136]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _4136 + ceil32(return_data.size) + ceil32(32 * mem[_4136 + mem[_4136]]) + 1
                mem[_4136 + ceil32(return_data.size)] = _4152
                require _4144 + (32 * _4152) + 32 <= return_data.size
                mem[_4136 + ceil32(return_data.size) + 32 len ceil32(32 * _4152)] = mem[_4136 + _4144 + 32 len ceil32(32 * _4152)]
                if 1 >= _4152:
                    revert with 0, 50
                _4368 = mem[_4136 + ceil32(return_data.size) + 64]
                if mem[_4136 + ceil32(return_data.size) + 64] != _1049:
                    _4376 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1049
                    mem[mem[64] + 36] = _4368
                    mem[mem[64] + 68] = 160
                    _4400 = mem[_3800]
                    mem[mem[64] + 164] = mem[_3800]
                    idx = 0
                    s = _3800 + 32
                    t = mem[64] + 196
                    while idx < _4400:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4376 + 100] = this.address
                    mem[_4376 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4376 + (32 * _4400) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4568 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4568] <= test266151307()
                    require _4568 + return_data.size > _4568 + mem[_4568] + 31
                    if mem[_4568 + mem[_4568]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4568 + mem[_4568]]) + 1 < 0 or _4568 + ceil32(return_data.size) + ceil32(32 * mem[_4568 + mem[_4568]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4568] + (32 * mem[_4568 + mem[_4568]]) + 32 <= return_data.size
                else:
                    if 0 >= _4152:
                        revert with 0, 50
                    _4392 = mem[_4136 + ceil32(return_data.size) + 32]
                    _4401 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1049
                    mem[mem[64] + 36] = _4392
                    mem[mem[64] + 68] = 160
                    _4417 = mem[_3800]
                    mem[mem[64] + 164] = mem[_3800]
                    idx = 0
                    s = _3800 + 32
                    t = mem[64] + 196
                    while idx < _4417:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4401 + 100] = this.address
                    mem[_4401 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4401 + (32 * _4417) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4569 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4569] <= test266151307()
                    require _4569 + return_data.size > _4569 + mem[_4569] + 31
                    if mem[_4569 + mem[_4569]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4569 + mem[_4569]]) + 1 < 0 or _4569 + ceil32(return_data.size) + ceil32(32 * mem[_4569 + mem[_4569]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4569] + (32 * mem[_4569 + mem[_4569]]) + 32 <= return_data.size
            else:
                if 0 >= _2584:
                    revert with 0, 50
                _3024 = mem[_2576 + ceil32(return_data.size) + 32]
                _3029 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _3024
                mem[mem[64] + 68] = 160
                _3037 = mem[_2078]
                mem[mem[64] + 164] = mem[_2078]
                idx = 0
                s = _2078 + 32
                t = mem[64] + 196
                while idx < _3037:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3029 + 100] = this.address
                mem[_3029 + 132] = cd[132]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3029 + (32 * _3037) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3433 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3441 = mem[_3433]
                require mem[_3433] <= test266151307()
                require _3433 + return_data.size > _3433 + mem[_3433] + 31
                _3449 = mem[_3433 + mem[_3433]]
                if mem[_3433 + mem[_3433]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_3433 + mem[_3433]]) + 1 < 0 or _3433 + ceil32(return_data.size) + ceil32(32 * mem[_3433 + mem[_3433]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3433 + ceil32(return_data.size) + ceil32(32 * mem[_3433 + mem[_3433]]) + 1
                mem[_3433 + ceil32(return_data.size)] = _3449
                require _3441 + (32 * _3449) + 32 <= return_data.size
                mem[_3433 + ceil32(return_data.size) + 32 len ceil32(32 * _3449)] = mem[_3433 + _3441 + 32 len ceil32(32 * _3449)]
                _3801 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_3801] = ('cd', 100).length
                mem[_3801 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_3801 + (32 * ('cd', 100).length) + 32] = 0
                if _owner != msg.sender:
                    revert with 0, 'Not the owner'
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                _3827 = mem[_3801 + 32]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1049
                require ext_code.size(address(_3827))
                call address(_3827).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _1049
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3857 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3857] == bool(mem[_3857])
                _3873 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1049
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 100).length
                idx = 0
                s = _3801 + 32
                t = mem[64] + 100
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3873 + (32 * ('cd', 100).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4137 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4145 = mem[_4137]
                require mem[_4137] <= test266151307()
                require _4137 + return_data.size > _4137 + mem[_4137] + 31
                _4153 = mem[_4137 + mem[_4137]]
                if mem[_4137 + mem[_4137]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_4137 + mem[_4137]]) + 1 < 0 or _4137 + ceil32(return_data.size) + ceil32(32 * mem[_4137 + mem[_4137]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _4137 + ceil32(return_data.size) + ceil32(32 * mem[_4137 + mem[_4137]]) + 1
                mem[_4137 + ceil32(return_data.size)] = _4153
                require _4145 + (32 * _4153) + 32 <= return_data.size
                mem[_4137 + ceil32(return_data.size) + 32 len ceil32(32 * _4153)] = mem[_4137 + _4145 + 32 len ceil32(32 * _4153)]
                if 1 >= _4153:
                    revert with 0, 50
                _4369 = mem[_4137 + ceil32(return_data.size) + 64]
                if mem[_4137 + ceil32(return_data.size) + 64] != _1049:
                    _4378 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1049
                    mem[mem[64] + 36] = _4369
                    mem[mem[64] + 68] = 160
                    _4402 = mem[_3801]
                    mem[mem[64] + 164] = mem[_3801]
                    idx = 0
                    s = _3801 + 32
                    t = mem[64] + 196
                    while idx < _4402:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4378 + 100] = this.address
                    mem[_4378 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4378 + (32 * _4402) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4570 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4570] <= test266151307()
                    require _4570 + return_data.size > _4570 + mem[_4570] + 31
                    if mem[_4570 + mem[_4570]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4570 + mem[_4570]]) + 1 < 0 or _4570 + ceil32(return_data.size) + ceil32(32 * mem[_4570 + mem[_4570]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4570] + (32 * mem[_4570 + mem[_4570]]) + 32 <= return_data.size
                else:
                    if 0 >= _4153:
                        revert with 0, 50
                    _4393 = mem[_4137 + ceil32(return_data.size) + 32]
                    _4403 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1049
                    mem[mem[64] + 36] = _4393
                    mem[mem[64] + 68] = 160
                    _4419 = mem[_3801]
                    mem[mem[64] + 164] = mem[_3801]
                    idx = 0
                    s = _3801 + 32
                    t = mem[64] + 196
                    while idx < _4419:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4403 + 100] = this.address
                    mem[_4403 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4403 + (32 * _4419) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4571 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4571] <= test266151307()
                    require _4571 + return_data.size > _4571 + mem[_4571] + 31
                    if mem[_4571 + mem[_4571]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4571 + mem[_4571]]) + 1 < 0 or _4571 + ceil32(return_data.size) + ceil32(32 * mem[_4571 + mem[_4571]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4571] + (32 * mem[_4571 + mem[_4571]]) + 32 <= return_data.size
        else:
            if 0 >= _1568:
                revert with 0, 50
            if mem[_1564 + ceil32(return_data.size) + 32] <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
            _2088 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_2088] = ('cd', 68).length
            mem[_2088 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_2088 + (32 * ('cd', 68).length) + 32] = 0
            if _owner != msg.sender:
                revert with 0, 'Not the owner'
            if 0 >= ('cd', 68).length:
                revert with 0, 50
            _2109 = mem[_2088 + 32]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(address(_2109))
            call address(_2109).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2119] == bool(mem[_2119])
            _2127 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 68).length
            idx = 0
            s = _2088 + 32
            t = mem[64] + 100
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2127 + (32 * ('cd', 68).length) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2577 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2581 = mem[_2577]
            require mem[_2577] <= test266151307()
            require _2577 + return_data.size > _2577 + mem[_2577] + 31
            _2585 = mem[_2577 + mem[_2577]]
            if mem[_2577 + mem[_2577]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2577 + mem[_2577]]) + 1 < 0 or _2577 + ceil32(return_data.size) + ceil32(32 * mem[_2577 + mem[_2577]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2577 + ceil32(return_data.size) + ceil32(32 * mem[_2577 + mem[_2577]]) + 1
            mem[_2577 + ceil32(return_data.size)] = _2585
            require _2581 + (32 * _2585) + 32 <= return_data.size
            mem[_2577 + ceil32(return_data.size) + 32 len ceil32(32 * _2585)] = mem[_2577 + _2581 + 32 len ceil32(32 * _2585)]
            if 1 >= _2585:
                revert with 0, 50
            _3013 = mem[_2577 + ceil32(return_data.size) + 64]
            if mem[_2577 + ceil32(return_data.size) + 64] != ext_call.return_data[0]:
                _3018 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _3013
                mem[mem[64] + 68] = 160
                _3030 = mem[_2088]
                mem[mem[64] + 164] = mem[_2088]
                idx = 0
                s = _2088 + 32
                t = mem[64] + 196
                while idx < _3030:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3018 + 100] = this.address
                mem[_3018 + 132] = cd[132]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3018 + (32 * _3030) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3434 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3442 = mem[_3434]
                require mem[_3434] <= test266151307()
                require _3434 + return_data.size > _3434 + mem[_3434] + 31
                _3450 = mem[_3434 + mem[_3434]]
                if mem[_3434 + mem[_3434]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_3434 + mem[_3434]]) + 1 < 0 or _3434 + ceil32(return_data.size) + ceil32(32 * mem[_3434 + mem[_3434]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3434 + ceil32(return_data.size) + ceil32(32 * mem[_3434 + mem[_3434]]) + 1
                mem[_3434 + ceil32(return_data.size)] = _3450
                require _3442 + (32 * _3450) + 32 <= return_data.size
                mem[_3434 + ceil32(return_data.size) + 32 len ceil32(32 * _3450)] = mem[_3434 + _3442 + 32 len ceil32(32 * _3450)]
                _3802 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_3802] = ('cd', 100).length
                mem[_3802 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_3802 + (32 * ('cd', 100).length) + 32] = 0
                if _owner != msg.sender:
                    revert with 0, 'Not the owner'
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                _3830 = mem[_3802 + 32]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1049
                require ext_code.size(address(_3830))
                call address(_3830).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _1049
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3858 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3858] == bool(mem[_3858])
                _3874 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1049
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 100).length
                idx = 0
                s = _3802 + 32
                t = mem[64] + 100
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3874 + (32 * ('cd', 100).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4138 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4146 = mem[_4138]
                require mem[_4138] <= test266151307()
                require _4138 + return_data.size > _4138 + mem[_4138] + 31
                _4154 = mem[_4138 + mem[_4138]]
                if mem[_4138 + mem[_4138]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_4138 + mem[_4138]]) + 1 < 0 or _4138 + ceil32(return_data.size) + ceil32(32 * mem[_4138 + mem[_4138]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _4138 + ceil32(return_data.size) + ceil32(32 * mem[_4138 + mem[_4138]]) + 1
                mem[_4138 + ceil32(return_data.size)] = _4154
                require _4146 + (32 * _4154) + 32 <= return_data.size
                mem[_4138 + ceil32(return_data.size) + 32 len ceil32(32 * _4154)] = mem[_4138 + _4146 + 32 len ceil32(32 * _4154)]
                if 1 >= _4154:
                    revert with 0, 50
                _4370 = mem[_4138 + ceil32(return_data.size) + 64]
                if mem[_4138 + ceil32(return_data.size) + 64] != _1049:
                    _4380 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1049
                    mem[mem[64] + 36] = _4370
                    mem[mem[64] + 68] = 160
                    _4404 = mem[_3802]
                    mem[mem[64] + 164] = mem[_3802]
                    idx = 0
                    s = _3802 + 32
                    t = mem[64] + 196
                    while idx < _4404:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4380 + 100] = this.address
                    mem[_4380 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4380 + (32 * _4404) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4572 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4572] <= test266151307()
                    require _4572 + return_data.size > _4572 + mem[_4572] + 31
                    if mem[_4572 + mem[_4572]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4572 + mem[_4572]]) + 1 < 0 or _4572 + ceil32(return_data.size) + ceil32(32 * mem[_4572 + mem[_4572]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4572] + (32 * mem[_4572 + mem[_4572]]) + 32 <= return_data.size
                else:
                    if 0 >= _4154:
                        revert with 0, 50
                    _4394 = mem[_4138 + ceil32(return_data.size) + 32]
                    _4405 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1049
                    mem[mem[64] + 36] = _4394
                    mem[mem[64] + 68] = 160
                    _4421 = mem[_3802]
                    mem[mem[64] + 164] = mem[_3802]
                    idx = 0
                    s = _3802 + 32
                    t = mem[64] + 196
                    while idx < _4421:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4405 + 100] = this.address
                    mem[_4405 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4405 + (32 * _4421) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4573 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4573] <= test266151307()
                    require _4573 + return_data.size > _4573 + mem[_4573] + 31
                    if mem[_4573 + mem[_4573]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4573 + mem[_4573]]) + 1 < 0 or _4573 + ceil32(return_data.size) + ceil32(32 * mem[_4573 + mem[_4573]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4573] + (32 * mem[_4573 + mem[_4573]]) + 32 <= return_data.size
            else:
                if 0 >= _2585:
                    revert with 0, 50
                _3025 = mem[_2577 + ceil32(return_data.size) + 32]
                _3031 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _3025
                mem[mem[64] + 68] = 160
                _3039 = mem[_2088]
                mem[mem[64] + 164] = mem[_2088]
                idx = 0
                s = _2088 + 32
                t = mem[64] + 196
                while idx < _3039:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3031 + 100] = this.address
                mem[_3031 + 132] = cd[132]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3031 + (32 * _3039) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3435 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3443 = mem[_3435]
                require mem[_3435] <= test266151307()
                require _3435 + return_data.size > _3435 + mem[_3435] + 31
                _3451 = mem[_3435 + mem[_3435]]
                if mem[_3435 + mem[_3435]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_3435 + mem[_3435]]) + 1 < 0 or _3435 + ceil32(return_data.size) + ceil32(32 * mem[_3435 + mem[_3435]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3435 + ceil32(return_data.size) + ceil32(32 * mem[_3435 + mem[_3435]]) + 1
                mem[_3435 + ceil32(return_data.size)] = _3451
                require _3443 + (32 * _3451) + 32 <= return_data.size
                mem[_3435 + ceil32(return_data.size) + 32 len ceil32(32 * _3451)] = mem[_3435 + _3443 + 32 len ceil32(32 * _3451)]
                _3803 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_3803] = ('cd', 100).length
                mem[_3803 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_3803 + (32 * ('cd', 100).length) + 32] = 0
                if _owner != msg.sender:
                    revert with 0, 'Not the owner'
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                _3833 = mem[_3803 + 32]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1049
                require ext_code.size(address(_3833))
                call address(_3833).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _1049
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3859] == bool(mem[_3859])
                _3875 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1049
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 100).length
                idx = 0
                s = _3803 + 32
                t = mem[64] + 100
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3875 + (32 * ('cd', 100).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4139 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4147 = mem[_4139]
                require mem[_4139] <= test266151307()
                require _4139 + return_data.size > _4139 + mem[_4139] + 31
                _4155 = mem[_4139 + mem[_4139]]
                if mem[_4139 + mem[_4139]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_4139 + mem[_4139]]) + 1 < 0 or _4139 + ceil32(return_data.size) + ceil32(32 * mem[_4139 + mem[_4139]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _4139 + ceil32(return_data.size) + ceil32(32 * mem[_4139 + mem[_4139]]) + 1
                mem[_4139 + ceil32(return_data.size)] = _4155
                require _4147 + (32 * _4155) + 32 <= return_data.size
                mem[_4139 + ceil32(return_data.size) + 32 len ceil32(32 * _4155)] = mem[_4139 + _4147 + 32 len ceil32(32 * _4155)]
                if 1 >= _4155:
                    revert with 0, 50
                _4371 = mem[_4139 + ceil32(return_data.size) + 64]
                if mem[_4139 + ceil32(return_data.size) + 64] != _1049:
                    _4382 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1049
                    mem[mem[64] + 36] = _4371
                    mem[mem[64] + 68] = 160
                    _4406 = mem[_3803]
                    mem[mem[64] + 164] = mem[_3803]
                    idx = 0
                    s = _3803 + 32
                    t = mem[64] + 196
                    while idx < _4406:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4382 + 100] = this.address
                    mem[_4382 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4382 + (32 * _4406) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4574 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4574] <= test266151307()
                    require _4574 + return_data.size > _4574 + mem[_4574] + 31
                    if mem[_4574 + mem[_4574]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4574 + mem[_4574]]) + 1 < 0 or _4574 + ceil32(return_data.size) + ceil32(32 * mem[_4574 + mem[_4574]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4574] + (32 * mem[_4574 + mem[_4574]]) + 32 <= return_data.size
                else:
                    if 0 >= _4155:
                        revert with 0, 50
                    _4395 = mem[_4139 + ceil32(return_data.size) + 32]
                    _4407 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1049
                    mem[mem[64] + 36] = _4395
                    mem[mem[64] + 68] = 160
                    _4423 = mem[_3803]
                    mem[mem[64] + 164] = mem[_3803]
                    idx = 0
                    s = _3803 + 32
                    t = mem[64] + 196
                    while idx < _4423:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4407 + 100] = this.address
                    mem[_4407 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4407 + (32 * _4423) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4575 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4575] <= test266151307()
                    require _4575 + return_data.size > _4575 + mem[_4575] + 31
                    if mem[_4575 + mem[_4575]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4575 + mem[_4575]]) + 1 < 0 or _4575 + ceil32(return_data.size) + ceil32(32 * mem[_4575 + mem[_4575]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4575] + (32 * mem[_4575 + mem[_4575]]) + 32 <= return_data.size
    else:
        if 0 >= _530:
            revert with 0, 50
        _1052 = mem[(2 * ceil32(return_data.size)) + 128]
        _1053 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1052
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 100).length
        idx = 0
        s = mem[64] + 100
        t = cd[100] + 36
        while idx < ('cd', 100).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1053 + (32 * ('cd', 100).length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1565 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1567 = mem[_1565]
        require mem[_1565] <= test266151307()
        require _1565 + return_data.size > _1565 + mem[_1565] + 31
        _1569 = mem[_1565 + mem[_1565]]
        if mem[_1565 + mem[_1565]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1565 + mem[_1565]]) + 1 < 0 or _1565 + ceil32(return_data.size) + ceil32(32 * mem[_1565 + mem[_1565]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1565 + ceil32(return_data.size) + ceil32(32 * mem[_1565 + mem[_1565]]) + 1
        mem[_1565 + ceil32(return_data.size)] = _1569
        require _1567 + (32 * _1569) + 32 <= return_data.size
        mem[_1565 + ceil32(return_data.size) + 32 len ceil32(32 * _1569)] = mem[_1565 + _1567 + 32 len ceil32(32 * _1569)]
        if 1 >= _1569:
            revert with 0, 50
        if mem[_1565 + ceil32(return_data.size) + 64] != _1052:
            if mem[_1565 + ceil32(return_data.size) + 64] <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
            _2081 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_2081] = ('cd', 68).length
            mem[_2081 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_2081 + (32 * ('cd', 68).length) + 32] = 0
            if _owner != msg.sender:
                revert with 0, 'Not the owner'
            if 0 >= ('cd', 68).length:
                revert with 0, 50
            _2098 = mem[_2081 + 32]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(address(_2098))
            call address(_2098).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2112 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2112] == bool(mem[_2112])
            _2124 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 68).length
            idx = 0
            s = _2081 + 32
            t = mem[64] + 100
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2124 + (32 * ('cd', 68).length) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2578 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2582 = mem[_2578]
            require mem[_2578] <= test266151307()
            require _2578 + return_data.size > _2578 + mem[_2578] + 31
            _2586 = mem[_2578 + mem[_2578]]
            if mem[_2578 + mem[_2578]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2578 + mem[_2578]]) + 1 < 0 or _2578 + ceil32(return_data.size) + ceil32(32 * mem[_2578 + mem[_2578]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2578 + ceil32(return_data.size) + ceil32(32 * mem[_2578 + mem[_2578]]) + 1
            mem[_2578 + ceil32(return_data.size)] = _2586
            require _2582 + (32 * _2586) + 32 <= return_data.size
            mem[_2578 + ceil32(return_data.size) + 32 len ceil32(32 * _2586)] = mem[_2578 + _2582 + 32 len ceil32(32 * _2586)]
            if 1 >= _2586:
                revert with 0, 50
            _3014 = mem[_2578 + ceil32(return_data.size) + 64]
            if mem[_2578 + ceil32(return_data.size) + 64] != ext_call.return_data[0]:
                _3020 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _3014
                mem[mem[64] + 68] = 160
                _3032 = mem[_2081]
                mem[mem[64] + 164] = mem[_2081]
                idx = 0
                s = _2081 + 32
                t = mem[64] + 196
                while idx < _3032:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3020 + 100] = this.address
                mem[_3020 + 132] = cd[132]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3020 + (32 * _3032) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3436 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3444 = mem[_3436]
                require mem[_3436] <= test266151307()
                require _3436 + return_data.size > _3436 + mem[_3436] + 31
                _3452 = mem[_3436 + mem[_3436]]
                if mem[_3436 + mem[_3436]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_3436 + mem[_3436]]) + 1 < 0 or _3436 + ceil32(return_data.size) + ceil32(32 * mem[_3436 + mem[_3436]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3436 + ceil32(return_data.size) + ceil32(32 * mem[_3436 + mem[_3436]]) + 1
                mem[_3436 + ceil32(return_data.size)] = _3452
                require _3444 + (32 * _3452) + 32 <= return_data.size
                mem[_3436 + ceil32(return_data.size) + 32 len ceil32(32 * _3452)] = mem[_3436 + _3444 + 32 len ceil32(32 * _3452)]
                _3804 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_3804] = ('cd', 100).length
                mem[_3804 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_3804 + (32 * ('cd', 100).length) + 32] = 0
                if _owner != msg.sender:
                    revert with 0, 'Not the owner'
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                _3836 = mem[_3804 + 32]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1052
                require ext_code.size(address(_3836))
                call address(_3836).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _1052
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3860 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3860] == bool(mem[_3860])
                _3876 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1052
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 100).length
                idx = 0
                s = _3804 + 32
                t = mem[64] + 100
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3876 + (32 * ('cd', 100).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4140 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4148 = mem[_4140]
                require mem[_4140] <= test266151307()
                require _4140 + return_data.size > _4140 + mem[_4140] + 31
                _4156 = mem[_4140 + mem[_4140]]
                if mem[_4140 + mem[_4140]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_4140 + mem[_4140]]) + 1 < 0 or _4140 + ceil32(return_data.size) + ceil32(32 * mem[_4140 + mem[_4140]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _4140 + ceil32(return_data.size) + ceil32(32 * mem[_4140 + mem[_4140]]) + 1
                mem[_4140 + ceil32(return_data.size)] = _4156
                require _4148 + (32 * _4156) + 32 <= return_data.size
                mem[_4140 + ceil32(return_data.size) + 32 len ceil32(32 * _4156)] = mem[_4140 + _4148 + 32 len ceil32(32 * _4156)]
                if 1 >= _4156:
                    revert with 0, 50
                _4372 = mem[_4140 + ceil32(return_data.size) + 64]
                if mem[_4140 + ceil32(return_data.size) + 64] != _1052:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1052
                    mem[mem[64] + 36] = _4372
                    mem[mem[64] + 68] = 160
                    _4408 = mem[_3804]
                    mem[mem[64] + 164] = mem[_3804]
                    idx = 0
                    s = _3804 + 32
                    t = mem[64] + 196
                    while idx < _4408:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1052, _4372, 160, address(this.address), cd[132], mem[mem[64] + 164 len (32 * _4408) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4576 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4576] <= test266151307()
                    require _4576 + return_data.size > _4576 + mem[_4576] + 31
                    if mem[_4576 + mem[_4576]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4576 + mem[_4576]]) + 1 < 0 or _4576 + ceil32(return_data.size) + ceil32(32 * mem[_4576 + mem[_4576]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4576] + (32 * mem[_4576 + mem[_4576]]) + 32 <= return_data.size
                else:
                    if 0 >= _4156:
                        revert with 0, 50
                    _4396 = mem[_4140 + ceil32(return_data.size) + 32]
                    _4409 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1052
                    mem[mem[64] + 36] = _4396
                    mem[mem[64] + 68] = 160
                    _4425 = mem[_3804]
                    mem[mem[64] + 164] = mem[_3804]
                    idx = 0
                    s = _3804 + 32
                    t = mem[64] + 196
                    while idx < _4425:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4409 + 100] = this.address
                    mem[_4409 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4409 + (32 * _4425) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4577 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4577] <= test266151307()
                    require _4577 + return_data.size > _4577 + mem[_4577] + 31
                    if mem[_4577 + mem[_4577]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4577 + mem[_4577]]) + 1 < 0 or _4577 + ceil32(return_data.size) + ceil32(32 * mem[_4577 + mem[_4577]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4577] + (32 * mem[_4577 + mem[_4577]]) + 32 <= return_data.size
            else:
                if 0 >= _2586:
                    revert with 0, 50
                _3026 = mem[_2578 + ceil32(return_data.size) + 32]
                _3033 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _3026
                mem[mem[64] + 68] = 160
                _3041 = mem[_2081]
                mem[mem[64] + 164] = mem[_2081]
                idx = 0
                s = _2081 + 32
                t = mem[64] + 196
                while idx < _3041:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3033 + 100] = this.address
                mem[_3033 + 132] = cd[132]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3033 + (32 * _3041) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3437 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3445 = mem[_3437]
                require mem[_3437] <= test266151307()
                require _3437 + return_data.size > _3437 + mem[_3437] + 31
                _3453 = mem[_3437 + mem[_3437]]
                if mem[_3437 + mem[_3437]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_3437 + mem[_3437]]) + 1 < 0 or _3437 + ceil32(return_data.size) + ceil32(32 * mem[_3437 + mem[_3437]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3437 + ceil32(return_data.size) + ceil32(32 * mem[_3437 + mem[_3437]]) + 1
                mem[_3437 + ceil32(return_data.size)] = _3453
                require _3445 + (32 * _3453) + 32 <= return_data.size
                mem[_3437 + ceil32(return_data.size) + 32 len ceil32(32 * _3453)] = mem[_3437 + _3445 + 32 len ceil32(32 * _3453)]
                _3805 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_3805] = ('cd', 100).length
                mem[_3805 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_3805 + (32 * ('cd', 100).length) + 32] = 0
                if _owner != msg.sender:
                    revert with 0, 'Not the owner'
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                _3839 = mem[_3805 + 32]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1052
                require ext_code.size(address(_3839))
                call address(_3839).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _1052
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3861 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3861] == bool(mem[_3861])
                _3877 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1052
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 100).length
                idx = 0
                s = _3805 + 32
                t = mem[64] + 100
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3877 + (32 * ('cd', 100).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4141 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4149 = mem[_4141]
                require mem[_4141] <= test266151307()
                require _4141 + return_data.size > _4141 + mem[_4141] + 31
                _4157 = mem[_4141 + mem[_4141]]
                if mem[_4141 + mem[_4141]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_4141 + mem[_4141]]) + 1 < 0 or _4141 + ceil32(return_data.size) + ceil32(32 * mem[_4141 + mem[_4141]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _4141 + ceil32(return_data.size) + ceil32(32 * mem[_4141 + mem[_4141]]) + 1
                mem[_4141 + ceil32(return_data.size)] = _4157
                require _4149 + (32 * _4157) + 32 <= return_data.size
                mem[_4141 + ceil32(return_data.size) + 32 len ceil32(32 * _4157)] = mem[_4141 + _4149 + 32 len ceil32(32 * _4157)]
                if 1 >= _4157:
                    revert with 0, 50
                _4373 = mem[_4141 + ceil32(return_data.size) + 64]
                if mem[_4141 + ceil32(return_data.size) + 64] != _1052:
                    _4386 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1052
                    mem[mem[64] + 36] = _4373
                    mem[mem[64] + 68] = 160
                    _4410 = mem[_3805]
                    mem[mem[64] + 164] = mem[_3805]
                    idx = 0
                    s = _3805 + 32
                    t = mem[64] + 196
                    while idx < _4410:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4386 + 100] = this.address
                    mem[_4386 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4386 + (32 * _4410) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4578 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4578] <= test266151307()
                    require _4578 + return_data.size > _4578 + mem[_4578] + 31
                    if mem[_4578 + mem[_4578]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4578 + mem[_4578]]) + 1 < 0 or _4578 + ceil32(return_data.size) + ceil32(32 * mem[_4578 + mem[_4578]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4578] + (32 * mem[_4578 + mem[_4578]]) + 32 <= return_data.size
                else:
                    if 0 >= _4157:
                        revert with 0, 50
                    _4397 = mem[_4141 + ceil32(return_data.size) + 32]
                    _4411 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1052
                    mem[mem[64] + 36] = _4397
                    mem[mem[64] + 68] = 160
                    _4427 = mem[_3805]
                    mem[mem[64] + 164] = mem[_3805]
                    idx = 0
                    s = _3805 + 32
                    t = mem[64] + 196
                    while idx < _4427:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4411 + 100] = this.address
                    mem[_4411 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4411 + (32 * _4427) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4579 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4579] <= test266151307()
                    require _4579 + return_data.size > _4579 + mem[_4579] + 31
                    if mem[_4579 + mem[_4579]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4579 + mem[_4579]]) + 1 < 0 or _4579 + ceil32(return_data.size) + ceil32(32 * mem[_4579 + mem[_4579]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4579] + (32 * mem[_4579 + mem[_4579]]) + 32 <= return_data.size
        else:
            if 0 >= _1569:
                revert with 0, 50
            if mem[_1565 + ceil32(return_data.size) + 32] <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
            _2092 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_2092] = ('cd', 68).length
            mem[_2092 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_2092 + (32 * ('cd', 68).length) + 32] = 0
            if _owner != msg.sender:
                revert with 0, 'Not the owner'
            if 0 >= ('cd', 68).length:
                revert with 0, 50
            _2113 = mem[_2092 + 32]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = ext_call.return_data[0]
            require ext_code.size(address(_2113))
            call address(_2113).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2121] == bool(mem[_2121])
            _2129 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 68).length
            idx = 0
            s = _2092 + 32
            t = mem[64] + 100
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2129 + (32 * ('cd', 68).length) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2579 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2583 = mem[_2579]
            require mem[_2579] <= test266151307()
            require _2579 + return_data.size > _2579 + mem[_2579] + 31
            _2587 = mem[_2579 + mem[_2579]]
            if mem[_2579 + mem[_2579]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2579 + mem[_2579]]) + 1 < 0 or _2579 + ceil32(return_data.size) + ceil32(32 * mem[_2579 + mem[_2579]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2579 + ceil32(return_data.size) + ceil32(32 * mem[_2579 + mem[_2579]]) + 1
            mem[_2579 + ceil32(return_data.size)] = _2587
            require _2583 + (32 * _2587) + 32 <= return_data.size
            mem[_2579 + ceil32(return_data.size) + 32 len ceil32(32 * _2587)] = mem[_2579 + _2583 + 32 len ceil32(32 * _2587)]
            if 1 >= _2587:
                revert with 0, 50
            _3015 = mem[_2579 + ceil32(return_data.size) + 64]
            if mem[_2579 + ceil32(return_data.size) + 64] != ext_call.return_data[0]:
                _3022 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _3015
                mem[mem[64] + 68] = 160
                _3034 = mem[_2092]
                mem[mem[64] + 164] = mem[_2092]
                idx = 0
                s = _2092 + 32
                t = mem[64] + 196
                while idx < _3034:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3022 + 100] = this.address
                mem[_3022 + 132] = cd[132]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3022 + (32 * _3034) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3438 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3446 = mem[_3438]
                require mem[_3438] <= test266151307()
                require _3438 + return_data.size > _3438 + mem[_3438] + 31
                _3454 = mem[_3438 + mem[_3438]]
                if mem[_3438 + mem[_3438]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_3438 + mem[_3438]]) + 1 < 0 or _3438 + ceil32(return_data.size) + ceil32(32 * mem[_3438 + mem[_3438]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3438 + ceil32(return_data.size) + ceil32(32 * mem[_3438 + mem[_3438]]) + 1
                mem[_3438 + ceil32(return_data.size)] = _3454
                require _3446 + (32 * _3454) + 32 <= return_data.size
                mem[_3438 + ceil32(return_data.size) + 32 len ceil32(32 * _3454)] = mem[_3438 + _3446 + 32 len ceil32(32 * _3454)]
                _3806 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_3806] = ('cd', 100).length
                mem[_3806 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_3806 + (32 * ('cd', 100).length) + 32] = 0
                if _owner != msg.sender:
                    revert with 0, 'Not the owner'
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                _3842 = mem[_3806 + 32]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1052
                require ext_code.size(address(_3842))
                call address(_3842).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _1052
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3862 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3862] == bool(mem[_3862])
                _3878 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1052
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 100).length
                idx = 0
                s = _3806 + 32
                t = mem[64] + 100
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3878 + (32 * ('cd', 100).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4142 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4150 = mem[_4142]
                require mem[_4142] <= test266151307()
                require _4142 + return_data.size > _4142 + mem[_4142] + 31
                _4158 = mem[_4142 + mem[_4142]]
                if mem[_4142 + mem[_4142]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_4142 + mem[_4142]]) + 1 < 0 or _4142 + ceil32(return_data.size) + ceil32(32 * mem[_4142 + mem[_4142]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _4142 + ceil32(return_data.size) + ceil32(32 * mem[_4142 + mem[_4142]]) + 1
                mem[_4142 + ceil32(return_data.size)] = _4158
                require _4150 + (32 * _4158) + 32 <= return_data.size
                mem[_4142 + ceil32(return_data.size) + 32 len ceil32(32 * _4158)] = mem[_4142 + _4150 + 32 len ceil32(32 * _4158)]
                if 1 >= _4158:
                    revert with 0, 50
                _4374 = mem[_4142 + ceil32(return_data.size) + 64]
                if mem[_4142 + ceil32(return_data.size) + 64] != _1052:
                    _4388 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1052
                    mem[mem[64] + 36] = _4374
                    mem[mem[64] + 68] = 160
                    _4412 = mem[_3806]
                    mem[mem[64] + 164] = mem[_3806]
                    idx = 0
                    s = _3806 + 32
                    t = mem[64] + 196
                    while idx < _4412:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4388 + 100] = this.address
                    mem[_4388 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4388 + (32 * _4412) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4580 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4580] <= test266151307()
                    require _4580 + return_data.size > _4580 + mem[_4580] + 31
                    if mem[_4580 + mem[_4580]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4580 + mem[_4580]]) + 1 < 0 or _4580 + ceil32(return_data.size) + ceil32(32 * mem[_4580 + mem[_4580]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4580] + (32 * mem[_4580 + mem[_4580]]) + 32 <= return_data.size
                else:
                    if 0 >= _4158:
                        revert with 0, 50
                    _4398 = mem[_4142 + ceil32(return_data.size) + 32]
                    _4413 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1052
                    mem[mem[64] + 36] = _4398
                    mem[mem[64] + 68] = 160
                    _4429 = mem[_3806]
                    mem[mem[64] + 164] = mem[_3806]
                    idx = 0
                    s = _3806 + 32
                    t = mem[64] + 196
                    while idx < _4429:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4413 + 100] = this.address
                    mem[_4413 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4413 + (32 * _4429) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4581 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4581] <= test266151307()
                    require _4581 + return_data.size > _4581 + mem[_4581] + 31
                    if mem[_4581 + mem[_4581]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4581 + mem[_4581]]) + 1 < 0 or _4581 + ceil32(return_data.size) + ceil32(32 * mem[_4581 + mem[_4581]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4581] + (32 * mem[_4581 + mem[_4581]]) + 32 <= return_data.size
            else:
                if 0 >= _2587:
                    revert with 0, 50
                _3027 = mem[_2579 + ceil32(return_data.size) + 32]
                _3035 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _3027
                mem[mem[64] + 68] = 160
                _3043 = mem[_2092]
                mem[mem[64] + 164] = mem[_2092]
                idx = 0
                s = _2092 + 32
                t = mem[64] + 196
                while idx < _3043:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3035 + 100] = this.address
                mem[_3035 + 132] = cd[132]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3035 + (32 * _3043) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3439 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3447 = mem[_3439]
                require mem[_3439] <= test266151307()
                require _3439 + return_data.size > _3439 + mem[_3439] + 31
                _3455 = mem[_3439 + mem[_3439]]
                if mem[_3439 + mem[_3439]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_3439 + mem[_3439]]) + 1 < 0 or _3439 + ceil32(return_data.size) + ceil32(32 * mem[_3439 + mem[_3439]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _3439 + ceil32(return_data.size) + ceil32(32 * mem[_3439 + mem[_3439]]) + 1
                mem[_3439 + ceil32(return_data.size)] = _3455
                require _3447 + (32 * _3455) + 32 <= return_data.size
                mem[_3439 + ceil32(return_data.size) + 32 len ceil32(32 * _3455)] = mem[_3439 + _3447 + 32 len ceil32(32 * _3455)]
                _3807 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_3807] = ('cd', 100).length
                mem[_3807 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_3807 + (32 * ('cd', 100).length) + 32] = 0
                if _owner != msg.sender:
                    revert with 0, 'Not the owner'
                if 0 >= ('cd', 100).length:
                    revert with 0, 50
                _3845 = mem[_3807 + 32]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1052
                require ext_code.size(address(_3845))
                call address(_3845).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), _1052
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3863 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3863] == bool(mem[_3863])
                _3879 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1052
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = ('cd', 100).length
                idx = 0
                s = _3807 + 32
                t = mem[64] + 100
                while idx < ('cd', 100).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3879 + (32 * ('cd', 100).length) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4143 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4151 = mem[_4143]
                require mem[_4143] <= test266151307()
                require _4143 + return_data.size > _4143 + mem[_4143] + 31
                _4159 = mem[_4143 + mem[_4143]]
                if mem[_4143 + mem[_4143]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_4143 + mem[_4143]]) + 1 < 0 or _4143 + ceil32(return_data.size) + ceil32(32 * mem[_4143 + mem[_4143]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _4143 + ceil32(return_data.size) + ceil32(32 * mem[_4143 + mem[_4143]]) + 1
                mem[_4143 + ceil32(return_data.size)] = _4159
                require _4151 + (32 * _4159) + 32 <= return_data.size
                mem[_4143 + ceil32(return_data.size) + 32 len ceil32(32 * _4159)] = mem[_4143 + _4151 + 32 len ceil32(32 * _4159)]
                if 1 >= _4159:
                    revert with 0, 50
                _4375 = mem[_4143 + ceil32(return_data.size) + 64]
                if mem[_4143 + ceil32(return_data.size) + 64] != _1052:
                    _4390 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1052
                    mem[mem[64] + 36] = _4375
                    mem[mem[64] + 68] = 160
                    _4414 = mem[_3807]
                    mem[mem[64] + 164] = mem[_3807]
                    idx = 0
                    s = _3807 + 32
                    t = mem[64] + 196
                    while idx < _4414:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4390 + 100] = this.address
                    mem[_4390 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4390 + (32 * _4414) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4582 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4582] <= test266151307()
                    require _4582 + return_data.size > _4582 + mem[_4582] + 31
                    if mem[_4582 + mem[_4582]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4582 + mem[_4582]]) + 1 < 0 or _4582 + ceil32(return_data.size) + ceil32(32 * mem[_4582 + mem[_4582]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4582] + (32 * mem[_4582 + mem[_4582]]) + 32 <= return_data.size
                else:
                    if 0 >= _4159:
                        revert with 0, 50
                    _4399 = mem[_4143 + ceil32(return_data.size) + 32]
                    _4415 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1052
                    mem[mem[64] + 36] = _4399
                    mem[mem[64] + 68] = 160
                    _4431 = mem[_3807]
                    mem[mem[64] + 164] = mem[_3807]
                    idx = 0
                    s = _3807 + 32
                    t = mem[64] + 196
                    while idx < _4431:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4415 + 100] = this.address
                    mem[_4415 + 132] = cd[132]
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4415 + (32 * _4431) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4583 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4583] <= test266151307()
                    require _4583 + return_data.size > _4583 + mem[_4583] + 31
                    if mem[_4583 + mem[_4583]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_4583 + mem[_4583]]) + 1 < 0 or _4583 + ceil32(return_data.size) + ceil32(32 * mem[_4583 + mem[_4583]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_4583] + (32 * mem[_4583 + mem[_4583]]) + 32 <= return_data.size
}



}
