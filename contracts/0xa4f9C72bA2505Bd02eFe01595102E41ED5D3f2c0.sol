contract main {




// =====================  Runtime code  =====================


#
#  - checkTokenFee(uint256 arg1, address[2] arg2, address arg3, uint256 arg4)
#  - _fallback()
#
address stor0;

function runCmd(address[] arg1, uint256[] arg2, bytes[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 99 < 98 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 99
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130
    while idx < arg3.length:
        require cd[s] <= test266151307()
        require arg3 + cd[s] + 67 < calldata.size
        if cd[(arg3 + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _83 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1
        mem[_83] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_83 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[_83 + cd[(arg3 + cd[s] + 36)] + 32] = 0
        mem[t] = _83
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'ad'
    _107 = mem[96]
    idx = 0
    while idx < _107:
        if idx >= mem[96]:
            revert with 0, 50
        _109 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _111 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if idx >= mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]:
            revert with 0, 50
        _113 = mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130]
        _114 = mem[64]
        _115 = mem[mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130]]
        s = 0
        while s < _115:
            mem[s + _114] = mem[_113 + s + 32]
            _107 = mem[96]
            s = s + 32
            continue 
        if ceil32(_115) <= _115:
            call address(_109).mem[mem[64] len 4] with:
               value _111 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _115 + _114 + -mem[64] - 4]
            if return_data.size:
                _131 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_131] = return_data.size
                mem[_131 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_114 + _115] = 0
            call address(_109).mem[mem[64] len 4] with:
               value _111 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _115 + _114 + -mem[64] - 4]
            if return_data.size:
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_133] = return_data.size
                mem[_133 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'cmdE'
        if idx == -1:
            revert with 0, 17
        _107 = mem[96]
        idx = idx + 1
        continue 
}

function checkDex(uint256 arg1, address[2] arg2, address arg3) {
    require calldata.size - 4 >= 128
    require 67 < calldata.size
    require 100 <= calldata.size
    require arg2 == address(arg2)
    mem[96] = arg2
    require arg3 == arg3
    mem[128] = arg3
    require cd[100] == address(cd[100])
    if stor0 != msg.sender:
        revert with 0, 'ad'
    if 15 > !block.timestamp:
        revert with 0, 17
    mem[160] = 2
    mem[256] = 2
    mem[288 len 64] = call.data[calldata.size len 64]
    mem[192] = address(arg2)
    mem[224] = arg3
    mem[352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[356] = arg1
    mem[388] = 64
    mem[420] = 2
    idx = 0
    s = 192
    t = 452
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[100]))
    call address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg1, Array(len=2, data=mem[452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 352
    require return_data.size >= 32
    _411 = mem[352 len 4], Mask(224, 32, arg1) >> 32
    require mem[352 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 352 > mem[352 len 4], Mask(224, 32, arg1) >> 32 + 383
    _412 = mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]
    if mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 353 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]) + 353
    mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg1) >> 32 + 352]
    require _411 + (32 * _412) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 384 len 32 * _412] = mem[_411 + 384 len 32 * _412]
    if 1 >= _412:
        revert with 0, 50
    _806 = mem[ceil32(return_data.size) + 416]
    _808 = mem[64]
    mem[mem[64] + 36] = address(cd[100])
    mem[mem[64] + 68] = arg1
    _809 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_809 + 32 len 4] = approve(address rg1, uint256 rg2)
    _812 = mem[_809]
    mem[_808 + 100 len ceil32(mem[_809])] = mem[_809 + 32 len ceil32(mem[_809])]
    if ceil32(_812) <= _812:
        call address(arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _812 + _808 + -mem[64] + 96]
        if not return_data.size:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _806
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 192
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 15
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, _806, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1583 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1587 = mem[_1583]
            require mem[_1583] <= test266151307()
            require _1583 + return_data.size > _1583 + mem[_1583] + 31
            _1591 = mem[_1583 + mem[_1583]]
            if mem[_1583 + mem[_1583]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_1583 + mem[_1583]]) + 1 < 0 or _1583 + ceil32(return_data.size) + ceil32(32 * mem[_1583 + mem[_1583]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1583 + ceil32(return_data.size) + ceil32(32 * mem[_1583 + mem[_1583]]) + 1
            mem[_1583 + ceil32(return_data.size)] = _1591
            require _1587 + (32 * _1591) + 32 <= return_data.size
            mem[_1583 + ceil32(return_data.size) + 32 len 32 * _1591] = mem[_1583 + _1587 + 32 len 32 * _1591]
            if 1 >= _1591:
                revert with 0, 50
            _1951 = mem[_1583 + ceil32(return_data.size) + 64]
            mem[mem[64]] = _806
            mem[mem[64] + 32] = _1951
            emit 0xe16a670a: _806, _1951
            if 1 >= _1591:
                revert with 0, 50
            _1967 = mem[_1583 + ceil32(return_data.size) + 64]
            mem[192] = arg3
            mem[224] = address(arg2)
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1967
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 192
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[100]))
            call address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args _1967, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2295 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2299 = mem[_2295]
            require mem[_2295] <= test266151307()
            require _2295 + return_data.size > _2295 + mem[_2295] + 31
            _2303 = mem[_2295 + mem[_2295]]
            if mem[_2295 + mem[_2295]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2295 + mem[_2295]]) + 1 < 0 or _2295 + ceil32(return_data.size) + ceil32(32 * mem[_2295 + mem[_2295]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2295 + ceil32(return_data.size) + ceil32(32 * mem[_2295 + mem[_2295]]) + 1
            mem[_2295 + ceil32(return_data.size)] = _2303
            require _2299 + (32 * _2303) + 32 <= return_data.size
            mem[_2295 + ceil32(return_data.size) + 32 len 32 * _2303] = mem[_2295 + _2299 + 32 len 32 * _2303]
            if 1 >= _2303:
                revert with 0, 50
            _2587 = mem[_2295 + ceil32(return_data.size) + 64]
            _2595 = mem[192]
            _2596 = mem[64]
            mem[mem[64] + 36] = address(cd[100])
            mem[mem[64] + 68] = _1967
            _2603 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2603 + 32 len 4] = approve(address rg1, uint256 rg2)
            _2615 = mem[_2603]
            mem[_2596 + 100 len ceil32(mem[_2603])] = mem[_2603 + 32 len ceil32(mem[_2603])]
            if ceil32(_2615) <= _2615:
                call address(_2595) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2615 + _2596 + -mem[64] + 96]
                if not return_data.size:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1967
                    mem[mem[64] + 36] = _2587
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1967, _2587, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3107 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3123 = mem[_3107]
                    require mem[_3107] <= test266151307()
                    require _3107 + return_data.size > _3107 + mem[_3107] + 31
                    _3139 = mem[_3107 + mem[_3107]]
                    if mem[_3107 + mem[_3107]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3107 + mem[_3107]]) + 1 < 0 or _3107 + ceil32(return_data.size) + ceil32(32 * mem[_3107 + mem[_3107]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3107 + ceil32(return_data.size) + ceil32(32 * mem[_3107 + mem[_3107]]) + 1
                    mem[_3107 + ceil32(return_data.size)] = _3139
                    require _3123 + (32 * _3139) + 32 <= return_data.size
                    mem[_3107 + ceil32(return_data.size) + 32 len 32 * _3139] = mem[_3107 + _3123 + 32 len 32 * _3139]
                    if 1 >= _3139:
                        revert with 0, 50
                    emit 0xe16a670a: _2587, mem[_3107 + ceil32(return_data.size) + 64]
                else:
                    _2855 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2855] = return_data.size
                    mem[_2855 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1967
                    mem[mem[64] + 36] = _2587
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1967, _2587, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3108 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3124 = mem[_3108]
                    require mem[_3108] <= test266151307()
                    require _3108 + return_data.size > _3108 + mem[_3108] + 31
                    _3140 = mem[_3108 + mem[_3108]]
                    if mem[_3108 + mem[_3108]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3108 + mem[_3108]]) + 1 < 0 or _3108 + ceil32(return_data.size) + ceil32(32 * mem[_3108 + mem[_3108]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3108 + ceil32(return_data.size) + ceil32(32 * mem[_3108 + mem[_3108]]) + 1
                    mem[_3108 + ceil32(return_data.size)] = _3140
                    require _3124 + (32 * _3140) + 32 <= return_data.size
                    mem[_3108 + ceil32(return_data.size) + 32 len 32 * _3140] = mem[_3108 + _3124 + 32 len 32 * _3140]
                    if 1 >= _3140:
                        revert with 0, 50
                    emit 0xe16a670a: _2587, mem[_3108 + ceil32(return_data.size) + 64]
            else:
                mem[_2596 + _2615 + 100] = 0
                call address(_2595) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2615 + _2596 + -mem[64] + 96]
                if not return_data.size:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1967
                    mem[mem[64] + 36] = _2587
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1967, _2587, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3109 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3125 = mem[_3109]
                    require mem[_3109] <= test266151307()
                    require _3109 + return_data.size > _3109 + mem[_3109] + 31
                    _3141 = mem[_3109 + mem[_3109]]
                    if mem[_3109 + mem[_3109]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3109 + mem[_3109]]) + 1 < 0 or _3109 + ceil32(return_data.size) + ceil32(32 * mem[_3109 + mem[_3109]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3109 + ceil32(return_data.size) + ceil32(32 * mem[_3109 + mem[_3109]]) + 1
                    mem[_3109 + ceil32(return_data.size)] = _3141
                    require _3125 + (32 * _3141) + 32 <= return_data.size
                    mem[_3109 + ceil32(return_data.size) + 32 len 32 * _3141] = mem[_3109 + _3125 + 32 len 32 * _3141]
                    if 1 >= _3141:
                        revert with 0, 50
                    emit 0xe16a670a: _2587, mem[_3109 + ceil32(return_data.size) + 64]
                else:
                    _2865 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2865] = return_data.size
                    mem[_2865 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1967
                    mem[mem[64] + 36] = _2587
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1967, _2587, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3110 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3126 = mem[_3110]
                    require mem[_3110] <= test266151307()
                    require _3110 + return_data.size > _3110 + mem[_3110] + 31
                    _3142 = mem[_3110 + mem[_3110]]
                    if mem[_3110 + mem[_3110]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3110 + mem[_3110]]) + 1 < 0 or _3110 + ceil32(return_data.size) + ceil32(32 * mem[_3110 + mem[_3110]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3110 + ceil32(return_data.size) + ceil32(32 * mem[_3110 + mem[_3110]]) + 1
                    mem[_3110 + ceil32(return_data.size)] = _3142
                    require _3126 + (32 * _3142) + 32 <= return_data.size
                    mem[_3110 + ceil32(return_data.size) + 32 len 32 * _3142] = mem[_3110 + _3126 + 32 len 32 * _3142]
                    if 1 >= _3142:
                        revert with 0, 50
                    emit 0xe16a670a: _2587, mem[_3110 + ceil32(return_data.size) + 64]
        else:
            _1196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1196] = return_data.size
            mem[_1196 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _806
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 192
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 15
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, _806, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1584 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1588 = mem[_1584]
            require mem[_1584] <= test266151307()
            require _1584 + return_data.size > _1584 + mem[_1584] + 31
            _1592 = mem[_1584 + mem[_1584]]
            if mem[_1584 + mem[_1584]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_1584 + mem[_1584]]) + 1 < 0 or _1584 + ceil32(return_data.size) + ceil32(32 * mem[_1584 + mem[_1584]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1584 + ceil32(return_data.size) + ceil32(32 * mem[_1584 + mem[_1584]]) + 1
            mem[_1584 + ceil32(return_data.size)] = _1592
            require _1588 + (32 * _1592) + 32 <= return_data.size
            mem[_1584 + ceil32(return_data.size) + 32 len 32 * _1592] = mem[_1584 + _1588 + 32 len 32 * _1592]
            if 1 >= _1592:
                revert with 0, 50
            _1953 = mem[_1584 + ceil32(return_data.size) + 64]
            mem[mem[64]] = _806
            mem[mem[64] + 32] = _1953
            emit 0xe16a670a: _806, _1953
            if 1 >= _1592:
                revert with 0, 50
            _1968 = mem[_1584 + ceil32(return_data.size) + 64]
            mem[192] = arg3
            mem[224] = address(arg2)
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1968
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 192
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[100]))
            call address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args _1968, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2296 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2300 = mem[_2296]
            require mem[_2296] <= test266151307()
            require _2296 + return_data.size > _2296 + mem[_2296] + 31
            _2304 = mem[_2296 + mem[_2296]]
            if mem[_2296 + mem[_2296]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2296 + mem[_2296]]) + 1 < 0 or _2296 + ceil32(return_data.size) + ceil32(32 * mem[_2296 + mem[_2296]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2296 + ceil32(return_data.size) + ceil32(32 * mem[_2296 + mem[_2296]]) + 1
            mem[_2296 + ceil32(return_data.size)] = _2304
            require _2300 + (32 * _2304) + 32 <= return_data.size
            mem[_2296 + ceil32(return_data.size) + 32 len 32 * _2304] = mem[_2296 + _2300 + 32 len 32 * _2304]
            if 1 >= _2304:
                revert with 0, 50
            _2589 = mem[_2296 + ceil32(return_data.size) + 64]
            _2597 = mem[192]
            _2598 = mem[64]
            mem[mem[64] + 36] = address(cd[100])
            mem[mem[64] + 68] = _1968
            _2606 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2606 + 32 len 4] = approve(address rg1, uint256 rg2)
            _2616 = mem[_2606]
            mem[_2598 + 100 len ceil32(mem[_2606])] = mem[_2606 + 32 len ceil32(mem[_2606])]
            if ceil32(_2616) <= _2616:
                call address(_2597) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2616 + _2598 + -mem[64] + 96]
                if not return_data.size:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1968
                    mem[mem[64] + 36] = _2589
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1968, _2589, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3111 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3127 = mem[_3111]
                    require mem[_3111] <= test266151307()
                    require _3111 + return_data.size > _3111 + mem[_3111] + 31
                    _3143 = mem[_3111 + mem[_3111]]
                    if mem[_3111 + mem[_3111]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3111 + mem[_3111]]) + 1 < 0 or _3111 + ceil32(return_data.size) + ceil32(32 * mem[_3111 + mem[_3111]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3111 + ceil32(return_data.size) + ceil32(32 * mem[_3111 + mem[_3111]]) + 1
                    mem[_3111 + ceil32(return_data.size)] = _3143
                    require _3127 + (32 * _3143) + 32 <= return_data.size
                    mem[_3111 + ceil32(return_data.size) + 32 len 32 * _3143] = mem[_3111 + _3127 + 32 len 32 * _3143]
                    if 1 >= _3143:
                        revert with 0, 50
                    emit 0xe16a670a: _2589, mem[_3111 + ceil32(return_data.size) + 64]
                else:
                    _2857 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2857] = return_data.size
                    mem[_2857 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1968
                    mem[mem[64] + 36] = _2589
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1968, _2589, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3112 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3128 = mem[_3112]
                    require mem[_3112] <= test266151307()
                    require _3112 + return_data.size > _3112 + mem[_3112] + 31
                    _3144 = mem[_3112 + mem[_3112]]
                    if mem[_3112 + mem[_3112]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3112 + mem[_3112]]) + 1 < 0 or _3112 + ceil32(return_data.size) + ceil32(32 * mem[_3112 + mem[_3112]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3112 + ceil32(return_data.size) + ceil32(32 * mem[_3112 + mem[_3112]]) + 1
                    mem[_3112 + ceil32(return_data.size)] = _3144
                    require _3128 + (32 * _3144) + 32 <= return_data.size
                    mem[_3112 + ceil32(return_data.size) + 32 len 32 * _3144] = mem[_3112 + _3128 + 32 len 32 * _3144]
                    if 1 >= _3144:
                        revert with 0, 50
                    emit 0xe16a670a: _2589, mem[_3112 + ceil32(return_data.size) + 64]
            else:
                mem[_2598 + _2616 + 100] = 0
                call address(_2597) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2616 + _2598 + -mem[64] + 96]
                if not return_data.size:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1968
                    mem[mem[64] + 36] = _2589
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < mem[160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 15, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3113 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3129 = mem[_3113]
                    require mem[_3113] <= test266151307()
                    require _3113 + return_data.size > _3113 + mem[_3113] + 31
                    _3145 = mem[_3113 + mem[_3113]]
                    if mem[_3113 + mem[_3113]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3113 + mem[_3113]]) + 1 < 0 or _3113 + ceil32(return_data.size) + ceil32(32 * mem[_3113 + mem[_3113]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3113 + ceil32(return_data.size) + ceil32(32 * mem[_3113 + mem[_3113]]) + 1
                    mem[_3113 + ceil32(return_data.size)] = _3145
                    require _3129 + (32 * _3145) + 32 <= return_data.size
                    mem[_3113 + ceil32(return_data.size) + 32 len 32 * _3145] = mem[_3113 + _3129 + 32 len 32 * _3145]
                    if 1 >= _3145:
                        revert with 0, 50
                    emit 0xe16a670a: _2589, mem[_3113 + ceil32(return_data.size) + 64]
                else:
                    _2868 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2868] = return_data.size
                    mem[_2868 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1968
                    mem[mem[64] + 36] = _2589
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1968, _2589, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3114 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3130 = mem[_3114]
                    require mem[_3114] <= test266151307()
                    require _3114 + return_data.size > _3114 + mem[_3114] + 31
                    _3146 = mem[_3114 + mem[_3114]]
                    if mem[_3114 + mem[_3114]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3114 + mem[_3114]]) + 1 < 0 or _3114 + ceil32(return_data.size) + ceil32(32 * mem[_3114 + mem[_3114]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3114 + ceil32(return_data.size) + ceil32(32 * mem[_3114 + mem[_3114]]) + 1
                    mem[_3114 + ceil32(return_data.size)] = _3146
                    require _3130 + (32 * _3146) + 32 <= return_data.size
                    mem[_3114 + ceil32(return_data.size) + 32 len 32 * _3146] = mem[_3114 + _3130 + 32 len 32 * _3146]
                    if 1 >= _3146:
                        revert with 0, 50
                    emit 0xe16a670a: _2589, mem[_3114 + ceil32(return_data.size) + 64]
    else:
        mem[_808 + _812 + 100] = 0
        call address(arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _812 + _808 + -mem[64] + 96]
        if not return_data.size:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _806
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 192
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 15
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, _806, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1585 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1589 = mem[_1585]
            require mem[_1585] <= test266151307()
            require _1585 + return_data.size > _1585 + mem[_1585] + 31
            _1593 = mem[_1585 + mem[_1585]]
            if mem[_1585 + mem[_1585]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_1585 + mem[_1585]]) + 1 < 0 or _1585 + ceil32(return_data.size) + ceil32(32 * mem[_1585 + mem[_1585]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1585 + ceil32(return_data.size) + ceil32(32 * mem[_1585 + mem[_1585]]) + 1
            mem[_1585 + ceil32(return_data.size)] = _1593
            require _1589 + (32 * _1593) + 32 <= return_data.size
            mem[_1585 + ceil32(return_data.size) + 32 len 32 * _1593] = mem[_1585 + _1589 + 32 len 32 * _1593]
            if 1 >= _1593:
                revert with 0, 50
            _1955 = mem[_1585 + ceil32(return_data.size) + 64]
            mem[mem[64]] = _806
            mem[mem[64] + 32] = _1955
            emit 0xe16a670a: _806, _1955
            if 1 >= _1593:
                revert with 0, 50
            _1969 = mem[_1585 + ceil32(return_data.size) + 64]
            mem[192] = arg3
            mem[224] = address(arg2)
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1969
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 192
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[100]))
            call address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args _1969, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2297 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2301 = mem[_2297]
            require mem[_2297] <= test266151307()
            require _2297 + return_data.size > _2297 + mem[_2297] + 31
            _2305 = mem[_2297 + mem[_2297]]
            if mem[_2297 + mem[_2297]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2297 + mem[_2297]]) + 1 < 0 or _2297 + ceil32(return_data.size) + ceil32(32 * mem[_2297 + mem[_2297]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2297 + ceil32(return_data.size) + ceil32(32 * mem[_2297 + mem[_2297]]) + 1
            mem[_2297 + ceil32(return_data.size)] = _2305
            require _2301 + (32 * _2305) + 32 <= return_data.size
            mem[_2297 + ceil32(return_data.size) + 32 len 32 * _2305] = mem[_2297 + _2301 + 32 len 32 * _2305]
            if 1 >= _2305:
                revert with 0, 50
            _2591 = mem[_2297 + ceil32(return_data.size) + 64]
            _2599 = mem[192]
            _2600 = mem[64]
            mem[mem[64] + 36] = address(cd[100])
            mem[mem[64] + 68] = _1969
            _2609 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2609 + 32 len 4] = approve(address rg1, uint256 rg2)
            _2617 = mem[_2609]
            mem[_2600 + 100 len ceil32(mem[_2609])] = mem[_2609 + 32 len ceil32(mem[_2609])]
            if ceil32(_2617) <= _2617:
                call address(_2599) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2617 + _2600 + -mem[64] + 96]
                if not return_data.size:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1969
                    mem[mem[64] + 36] = _2591
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < mem[160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 15, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3115 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3131 = mem[_3115]
                    require mem[_3115] <= test266151307()
                    require _3115 + return_data.size > _3115 + mem[_3115] + 31
                    _3147 = mem[_3115 + mem[_3115]]
                    if mem[_3115 + mem[_3115]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3115 + mem[_3115]]) + 1 < 0 or _3115 + ceil32(return_data.size) + ceil32(32 * mem[_3115 + mem[_3115]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3115 + ceil32(return_data.size) + ceil32(32 * mem[_3115 + mem[_3115]]) + 1
                    mem[_3115 + ceil32(return_data.size)] = _3147
                    require _3131 + (32 * _3147) + 32 <= return_data.size
                    mem[_3115 + ceil32(return_data.size) + 32 len 32 * _3147] = mem[_3115 + _3131 + 32 len 32 * _3147]
                    if 1 >= _3147:
                        revert with 0, 50
                    emit 0xe16a670a: _2591, mem[_3115 + ceil32(return_data.size) + 64]
                else:
                    _2859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2859] = return_data.size
                    mem[_2859 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1969
                    mem[mem[64] + 36] = _2591
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < mem[160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 15, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3116 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3132 = mem[_3116]
                    require mem[_3116] <= test266151307()
                    require _3116 + return_data.size > _3116 + mem[_3116] + 31
                    _3148 = mem[_3116 + mem[_3116]]
                    if mem[_3116 + mem[_3116]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3116 + mem[_3116]]) + 1 < 0 or _3116 + ceil32(return_data.size) + ceil32(32 * mem[_3116 + mem[_3116]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3116 + ceil32(return_data.size) + ceil32(32 * mem[_3116 + mem[_3116]]) + 1
                    mem[_3116 + ceil32(return_data.size)] = _3148
                    require _3132 + (32 * _3148) + 32 <= return_data.size
                    mem[_3116 + ceil32(return_data.size) + 32 len 32 * _3148] = mem[_3116 + _3132 + 32 len 32 * _3148]
                    if 1 >= _3148:
                        revert with 0, 50
                    emit 0xe16a670a: _2591, mem[_3116 + ceil32(return_data.size) + 64]
            else:
                mem[_2600 + _2617 + 100] = 0
                call address(_2599) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2617 + _2600 + -mem[64] + 96]
                if not return_data.size:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1969
                    mem[mem[64] + 36] = _2591
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < mem[160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 15, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3117 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3133 = mem[_3117]
                    require mem[_3117] <= test266151307()
                    require _3117 + return_data.size > _3117 + mem[_3117] + 31
                    _3149 = mem[_3117 + mem[_3117]]
                    if mem[_3117 + mem[_3117]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3117 + mem[_3117]]) + 1 < 0 or _3117 + ceil32(return_data.size) + ceil32(32 * mem[_3117 + mem[_3117]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3117 + ceil32(return_data.size) + ceil32(32 * mem[_3117 + mem[_3117]]) + 1
                    mem[_3117 + ceil32(return_data.size)] = _3149
                    require _3133 + (32 * _3149) + 32 <= return_data.size
                    mem[_3117 + ceil32(return_data.size) + 32 len 32 * _3149] = mem[_3117 + _3133 + 32 len 32 * _3149]
                    if 1 >= _3149:
                        revert with 0, 50
                    emit 0xe16a670a: _2591, mem[_3117 + ceil32(return_data.size) + 64]
                else:
                    _2871 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2871] = return_data.size
                    mem[_2871 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1969
                    mem[mem[64] + 36] = _2591
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1969, _2591, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3118 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3134 = mem[_3118]
                    require mem[_3118] <= test266151307()
                    require _3118 + return_data.size > _3118 + mem[_3118] + 31
                    _3150 = mem[_3118 + mem[_3118]]
                    if mem[_3118 + mem[_3118]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3118 + mem[_3118]]) + 1 < 0 or _3118 + ceil32(return_data.size) + ceil32(32 * mem[_3118 + mem[_3118]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3118 + ceil32(return_data.size) + ceil32(32 * mem[_3118 + mem[_3118]]) + 1
                    mem[_3118 + ceil32(return_data.size)] = _3150
                    require _3134 + (32 * _3150) + 32 <= return_data.size
                    mem[_3118 + ceil32(return_data.size) + 32 len 32 * _3150] = mem[_3118 + _3134 + 32 len 32 * _3150]
                    if 1 >= _3150:
                        revert with 0, 50
                    emit 0xe16a670a: _2591, mem[_3118 + ceil32(return_data.size) + 64]
        else:
            _1200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1200] = return_data.size
            mem[_1200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _806
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 192
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 15
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, _806, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1586 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1590 = mem[_1586]
            require mem[_1586] <= test266151307()
            require _1586 + return_data.size > _1586 + mem[_1586] + 31
            _1594 = mem[_1586 + mem[_1586]]
            if mem[_1586 + mem[_1586]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_1586 + mem[_1586]]) + 1 < 0 or _1586 + ceil32(return_data.size) + ceil32(32 * mem[_1586 + mem[_1586]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1586 + ceil32(return_data.size) + ceil32(32 * mem[_1586 + mem[_1586]]) + 1
            mem[_1586 + ceil32(return_data.size)] = _1594
            require _1590 + (32 * _1594) + 32 <= return_data.size
            mem[_1586 + ceil32(return_data.size) + 32 len 32 * _1594] = mem[_1586 + _1590 + 32 len 32 * _1594]
            if 1 >= _1594:
                revert with 0, 50
            _1957 = mem[_1586 + ceil32(return_data.size) + 64]
            mem[mem[64]] = _806
            mem[mem[64] + 32] = _1957
            emit 0xe16a670a: _806, _1957
            if 1 >= _1594:
                revert with 0, 50
            _1970 = mem[_1586 + ceil32(return_data.size) + 64]
            mem[192] = arg3
            mem[224] = address(arg2)
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1970
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 2
            idx = 0
            s = 192
            t = mem[64] + 100
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[100]))
            call address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args _1970, Array(len=2, data=mem[mem[64] + 100 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2298 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2302 = mem[_2298]
            require mem[_2298] <= test266151307()
            require _2298 + return_data.size > _2298 + mem[_2298] + 31
            _2306 = mem[_2298 + mem[_2298]]
            if mem[_2298 + mem[_2298]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2298 + mem[_2298]]) + 1 < 0 or _2298 + ceil32(return_data.size) + ceil32(32 * mem[_2298 + mem[_2298]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2298 + ceil32(return_data.size) + ceil32(32 * mem[_2298 + mem[_2298]]) + 1
            mem[_2298 + ceil32(return_data.size)] = _2306
            require _2302 + (32 * _2306) + 32 <= return_data.size
            mem[_2298 + ceil32(return_data.size) + 32 len 32 * _2306] = mem[_2298 + _2302 + 32 len 32 * _2306]
            if 1 >= _2306:
                revert with 0, 50
            _2593 = mem[_2298 + ceil32(return_data.size) + 64]
            _2601 = mem[192]
            _2602 = mem[64]
            mem[mem[64] + 36] = address(cd[100])
            mem[mem[64] + 68] = _1970
            _2612 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2612 + 32 len 4] = approve(address rg1, uint256 rg2)
            _2618 = mem[_2612]
            mem[_2602 + 100 len ceil32(mem[_2612])] = mem[_2612 + 32 len ceil32(mem[_2612])]
            if ceil32(_2618) <= _2618:
                call address(_2601) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2618 + _2602 + -mem[64] + 96]
                if not return_data.size:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1970
                    mem[mem[64] + 36] = _2593
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1970, _2593, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3119 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3135 = mem[_3119]
                    require mem[_3119] <= test266151307()
                    require _3119 + return_data.size > _3119 + mem[_3119] + 31
                    _3151 = mem[_3119 + mem[_3119]]
                    if mem[_3119 + mem[_3119]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3119 + mem[_3119]]) + 1 < 0 or _3119 + ceil32(return_data.size) + ceil32(32 * mem[_3119 + mem[_3119]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3119 + ceil32(return_data.size) + ceil32(32 * mem[_3119 + mem[_3119]]) + 1
                    mem[_3119 + ceil32(return_data.size)] = _3151
                    require _3135 + (32 * _3151) + 32 <= return_data.size
                    mem[_3119 + ceil32(return_data.size) + 32 len 32 * _3151] = mem[_3119 + _3135 + 32 len 32 * _3151]
                    if 1 >= _3151:
                        revert with 0, 50
                    emit 0xe16a670a: _2593, mem[_3119 + ceil32(return_data.size) + 64]
                else:
                    _2861 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2861] = return_data.size
                    mem[_2861 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1970
                    mem[mem[64] + 36] = _2593
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < mem[160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 15, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3120 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3136 = mem[_3120]
                    require mem[_3120] <= test266151307()
                    require _3120 + return_data.size > _3120 + mem[_3120] + 31
                    _3152 = mem[_3120 + mem[_3120]]
                    if mem[_3120 + mem[_3120]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3120 + mem[_3120]]) + 1 < 0 or _3120 + ceil32(return_data.size) + ceil32(32 * mem[_3120 + mem[_3120]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3120 + ceil32(return_data.size) + ceil32(32 * mem[_3120 + mem[_3120]]) + 1
                    mem[_3120 + ceil32(return_data.size)] = _3152
                    require _3136 + (32 * _3152) + 32 <= return_data.size
                    mem[_3120 + ceil32(return_data.size) + 32 len 32 * _3152] = mem[_3120 + _3136 + 32 len 32 * _3152]
                    if 1 >= _3152:
                        revert with 0, 50
                    emit 0xe16a670a: _2593, mem[_3120 + ceil32(return_data.size) + 64]
            else:
                mem[_2602 + _2618 + 100] = 0
                call address(_2601) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2618 + _2602 + -mem[64] + 96]
                if not return_data.size:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1970
                    mem[mem[64] + 36] = _2593
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < mem[160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp + 15, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3121 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3137 = mem[_3121]
                    require mem[_3121] <= test266151307()
                    require _3121 + return_data.size > _3121 + mem[_3121] + 31
                    _3153 = mem[_3121 + mem[_3121]]
                    if mem[_3121 + mem[_3121]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3121 + mem[_3121]]) + 1 < 0 or _3121 + ceil32(return_data.size) + ceil32(32 * mem[_3121 + mem[_3121]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3121 + ceil32(return_data.size) + ceil32(32 * mem[_3121 + mem[_3121]]) + 1
                    mem[_3121 + ceil32(return_data.size)] = _3153
                    require _3137 + (32 * _3153) + 32 <= return_data.size
                    mem[_3121 + ceil32(return_data.size) + 32 len 32 * _3153] = mem[_3121 + _3137 + 32 len 32 * _3153]
                    if 1 >= _3153:
                        revert with 0, 50
                    emit 0xe16a670a: _2593, mem[_3121 + ceil32(return_data.size) + 64]
                else:
                    _2874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2874] = return_data.size
                    mem[_2874 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1970
                    mem[mem[64] + 36] = _2593
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 192
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _1970, _2593, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3122 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3138 = mem[_3122]
                    require mem[_3122] <= test266151307()
                    require _3122 + return_data.size > _3122 + mem[_3122] + 31
                    _3154 = mem[_3122 + mem[_3122]]
                    if mem[_3122 + mem[_3122]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_3122 + mem[_3122]]) + 1 < 0 or _3122 + ceil32(return_data.size) + ceil32(32 * mem[_3122 + mem[_3122]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3122 + ceil32(return_data.size) + ceil32(32 * mem[_3122 + mem[_3122]]) + 1
                    mem[_3122 + ceil32(return_data.size)] = _3154
                    require _3138 + (32 * _3154) + 32 <= return_data.size
                    mem[_3122 + ceil32(return_data.size) + 32 len 32 * _3154] = mem[_3122 + _3138 + 32 len 32 * _3154]
                    if 1 >= _3154:
                        revert with 0, 50
                    emit 0xe16a670a: _2593, mem[_3122 + ceil32(return_data.size) + 64]
}



}
