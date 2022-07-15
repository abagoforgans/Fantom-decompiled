contract main {




// =====================  Runtime code  =====================


#
#  - sendToken(address arg1, address arg2, uint256 arg3)
#  - sub_3b309a57(?)
#  - sub_51eb11b4(?)
#  - sub_5e19c3a8(?)
#  - _fallback()
#
address stor0;
address stor1;

function destroy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'HongCoinBot:IS NOT OWner'
    selfdestruct(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'HongCoinBot:IS NOT OWner'
    require arg1
    stor0 = arg1
}

function sendETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'HongCoinBot:IS NOT OWner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'HongCoinBot:ETH transfer failed'
}

function sub_8cf17cc7(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    while idx < cd[4]:
        if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 100).length
            s = 0
            t = cd[100] + 36
            u = mem[64] + 196
            while s < ('cd', 100).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(cd[36]))
            call address(cd[36]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 100).length
            s = 0
            t = cd[100] + 36
            u = mem[64] + 196
            while s < ('cd', 100).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(cd[36]))
            call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22 = mem[_21]
            require mem[_21] <= test266151307()
            require _21 + mem[_21] + 31 < _21 + return_data.size
            _23 = mem[_21 + mem[_21]]
            if mem[_21 + mem[_21]] > test266151307():
                revert with 0, 65
            if _21 + ceil32(return_data.size) + ceil32(32 * mem[_21 + mem[_21]]) + 1 > test266151307() or ceil32(32 * mem[_21 + mem[_21]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _21 + ceil32(return_data.size) + ceil32(32 * mem[_21 + mem[_21]]) + 1
            mem[_21 + ceil32(return_data.size)] = _23
            require return_data.size >= _22 + (32 * _23) + 32
            t = _21 + _22 + 32
            u = _21 + ceil32(return_data.size) + 32
            s = 0
            while s < _23:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_07f04f38(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = ('cd', 68).length
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 68).length) + 132] = msg.value
    mem[(32 * ('cd', 68).length) + 164] = 64
    mem[(32 * ('cd', 68).length) + 196] = ('cd', 68).length
    idx = 0
    s = (32 * ('cd', 68).length) + 228
    t = 128
    while idx < ('cd', 68).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 68).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _81 = mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32
    require mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require (32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 159 < (32 * ('cd', 68).length) + return_data.size + 128
    _82 = mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
    if mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 1 < 0:
        revert with 0, 65
    mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 129
    mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
    require return_data.size >= _81 + (32 * _82) + 32
    mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 160 len 32 * _82] = mem[(32 * ('cd', 68).length) + _81 + 160 len 32 * _82]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _155 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _156 = mem[_155]
    require mem[_155] == mem[_155 + 12 len 20]
    if ('cd', 68).length < 1:
        revert with 0, 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 0, 50
    if ('cd', 68).length < 2:
        revert with 0, 17
    if ('cd', 68).length - 2 >= ('cd', 68).length:
        revert with 0, 50
    mem[mem[64] + 4] = mem[(32 * ('cd', 68).length - 1) + 140 len 20]
    mem[mem[64] + 36] = mem[(32 * ('cd', 68).length - 2) + 140 len 20]
    require ext_code.size(address(_156))
    staticcall address(_156).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len 64]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _165 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_165] == mem[_165 + 12 len 20]
    if ('cd', 68).length < 1:
        revert with 0, 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 0, 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
    staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _169 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _170 = mem[_169]
    if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 68).length
        if 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f == address(cd[4]):
            idx = 0
            s = cd[68] + 36
            t = mem[64] + 164
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = msg.sender
            mem[mem[64] + 100] = block.timestamp
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x50e27df3 with:
               value msg.value wei
                 gas gas_remaining wei
                args 1, Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_233] < _170:
                revert with 0, 17
            if mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] < 1:
                revert with 0, 17
            if mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160]:
                revert with 0, 17
            if mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_233] - _170:
                revert with 0, 'HongCoinBot:BURN!'
        else:
            if address(cd[4]) != 0xbd67d157502a23309db761c41965600c2ec788b2:
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 164
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = block.timestamp
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 1, Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_232] < _170:
                    revert with 0, 17
                if mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160]:
                    revert with 0, 17
                if mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_232] - _170:
                    revert with 0, 'HongCoinBot:BURN!'
            else:
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 164
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = block.timestamp
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x50e27df3 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 1, Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_234] < _170:
                    revert with 0, 17
                if mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160]:
                    revert with 0, 17
                if mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_234] - _170:
                    revert with 0, 'HongCoinBot:BURN!'
    else:
        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = mem[64] + 164
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = msg.sender
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 1, Array(len=('cd', 68).length, data=mem[mem[64] + 164 len 32 * ('cd', 68).length]), msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _231 = mem[_224]
        require mem[_224] <= test266151307()
        require _224 + mem[_224] + 31 < _224 + return_data.size
        _235 = mem[_224 + mem[_224]]
        if mem[_224 + mem[_224]] > test266151307():
            revert with 0, 65
        if _224 + ceil32(return_data.size) + ceil32(32 * mem[_224 + mem[_224]]) + 1 > test266151307() or ceil32(32 * mem[_224 + mem[_224]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _224 + ceil32(return_data.size) + ceil32(32 * mem[_224 + mem[_224]]) + 1
        mem[_224 + ceil32(return_data.size)] = _235
        require return_data.size >= _231 + (32 * _235) + 32
        mem[_224 + ceil32(return_data.size) + 32 len 32 * _235] = mem[_224 + _231 + 32 len 32 * _235]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _268 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_268] < _170:
            revert with 0, 17
        if mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] < 1:
            revert with 0, 17
        if mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128]:
            revert with 0, 50
        if mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160]:
            revert with 0, 17
        if mem[(32 * mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_268] - _170:
            revert with 0, 'HongCoinBot:BURN!'
}

function sub_e13dba6c(?) {
    require calldata.size - 4 >= 160
    require cd[36] == address(cd[36])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[96] = ('cd', 132).length
    mem[128 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 132).length) + 132] = cd[100]
    mem[(32 * ('cd', 132).length) + 164] = 64
    mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
    idx = 0
    s = (32 * ('cd', 132).length) + 228
    t = 128
    while idx < ('cd', 132).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _314 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32
    require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
    _315 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]
    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128] > test266151307():
        revert with 0, 65
    if (32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 1 < 0:
        revert with 0, 65
    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, cd[100]) >> 32 + 128]) + 129
    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = _315
    require return_data.size >= _314 + (32 * _315) + 32
    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 160 len 32 * _315] = mem[(32 * ('cd', 132).length) + _314 + 160 len 32 * _315]
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _621 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _622 = mem[_621]
    require mem[_621] == mem[_621 + 12 len 20]
    if ('cd', 132).length < 1:
        revert with 0, 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 0, 50
    if ('cd', 132).length < 2:
        revert with 0, 17
    if ('cd', 132).length - 2 >= ('cd', 132).length:
        revert with 0, 50
    _628 = mem[(32 * ('cd', 132).length - 2) + 128]
    mem[mem[64] + 4] = mem[(32 * ('cd', 132).length - 1) + 140 len 20]
    mem[mem[64] + 36] = address(_628)
    require ext_code.size(address(_622))
    staticcall address(_622).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_628)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _631 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_631] == mem[_631 + 12 len 20]
    if cd[100] and cd[4] > -1 / cd[100]:
        revert with 0, 17
    _633 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = cd[100] * cd[4]
    _634 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_634 + 32 len 4] = unknown_0x23b872dd(?????)
    _637 = mem[_634]
    mem[_633 + 132 len ceil32(mem[_634])] = mem[_634 + 32 len ceil32(mem[_634])]
    if ceil32(_637) <= _637:
        call stor1 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _637 + _633 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
            if not ('cd', 132).length:
                if ('cd', 132).length < 1:
                    revert with 0, 17
                if ('cd', 132).length - 1 >= ('cd', 132).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _960 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _964 = mem[_960]
                if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    _978 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_978 + 100] = this.address
                    mem[_978 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _978 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1248 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1248] < _964:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1248] - _964:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    _979 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_979 + 100] = this.address
                    mem[_979 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _979 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1216 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1240 = mem[_1216]
                    require mem[_1216] <= test266151307()
                    require _1216 + mem[_1216] + 31 < _1216 + return_data.size
                    _1256 = mem[_1216 + mem[_1216]]
                    if mem[_1216 + mem[_1216]] > test266151307():
                        revert with 0, 65
                    if _1216 + ceil32(return_data.size) + ceil32(32 * mem[_1216 + mem[_1216]]) + 1 > test266151307() or ceil32(32 * mem[_1216 + mem[_1216]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1216 + ceil32(return_data.size) + ceil32(32 * mem[_1216 + mem[_1216]]) + 1
                    mem[_1216 + ceil32(return_data.size)] = _1256
                    require return_data.size >= _1240 + (32 * _1256) + 32
                    mem[_1216 + ceil32(return_data.size) + 32 len 32 * _1256] = mem[_1216 + _1240 + 32 len 32 * _1256]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1424] < _964:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1424] - _964:
                        revert with 0, 'HongCoinBot:BURN!'
            else:
                require ('cd', 132).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
                if ('cd', 132).length < 1:
                    revert with 0, 17
                if ('cd', 132).length - 1 >= ('cd', 132).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _976 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _984 = mem[_976]
                if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    _992 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_992 + 100] = this.address
                    mem[_992 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _992 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1249] < _984:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1249] - _984:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    _993 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_993 + 100] = this.address
                    mem[_993 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _993 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1217 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1241 = mem[_1217]
                    require mem[_1217] <= test266151307()
                    require _1217 + mem[_1217] + 31 < _1217 + return_data.size
                    _1257 = mem[_1217 + mem[_1217]]
                    if mem[_1217 + mem[_1217]] > test266151307():
                        revert with 0, 65
                    if _1217 + ceil32(return_data.size) + ceil32(32 * mem[_1217 + mem[_1217]]) + 1 > test266151307() or ceil32(32 * mem[_1217 + mem[_1217]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1217 + ceil32(return_data.size) + ceil32(32 * mem[_1217 + mem[_1217]]) + 1
                    mem[_1217 + ceil32(return_data.size)] = _1257
                    require return_data.size >= _1241 + (32 * _1257) + 32
                    mem[_1217 + ceil32(return_data.size) + 32 len 32 * _1257] = mem[_1217 + _1241 + 32 len 32 * _1257]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1425] < _984:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1425] - _984:
                        revert with 0, 'HongCoinBot:BURN!'
        else:
            _921 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_921] = return_data.size
            mem[_921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
            if not return_data.size:
                if ('cd', 132).length < 1:
                    revert with 0, 17
                if ('cd', 132).length - 1 >= ('cd', 132).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _961 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _967 = mem[_961]
                if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    _980 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_980 + 100] = this.address
                    mem[_980 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _980 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1250 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1250] < _967:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1250] - _967:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    _981 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_981 + 100] = this.address
                    mem[_981 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _981 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1218 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1242 = mem[_1218]
                    require mem[_1218] <= test266151307()
                    require _1218 + mem[_1218] + 31 < _1218 + return_data.size
                    _1258 = mem[_1218 + mem[_1218]]
                    if mem[_1218 + mem[_1218]] > test266151307():
                        revert with 0, 65
                    if _1218 + ceil32(return_data.size) + ceil32(32 * mem[_1218 + mem[_1218]]) + 1 > test266151307() or ceil32(32 * mem[_1218 + mem[_1218]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1218 + ceil32(return_data.size) + ceil32(32 * mem[_1218 + mem[_1218]]) + 1
                    mem[_1218 + ceil32(return_data.size)] = _1258
                    require return_data.size >= _1242 + (32 * _1258) + 32
                    mem[_1218 + ceil32(return_data.size) + 32 len 32 * _1258] = mem[_1218 + _1242 + 32 len 32 * _1258]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1426] < _967:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1426] - _967:
                        revert with 0, 'HongCoinBot:BURN!'
            else:
                require return_data.size >= 32
                require mem[_921 + 32] == bool(mem[_921 + 32])
                if not mem[_921 + 32]:
                    revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
                if ('cd', 132).length < 1:
                    revert with 0, 17
                if ('cd', 132).length - 1 >= ('cd', 132).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _977 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _985 = mem[_977]
                if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    _994 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_994 + 100] = this.address
                    mem[_994 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _994 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1251] < _985:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1251] - _985:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    _995 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_995 + 100] = this.address
                    mem[_995 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _995 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1219 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1243 = mem[_1219]
                    require mem[_1219] <= test266151307()
                    require _1219 + mem[_1219] + 31 < _1219 + return_data.size
                    _1259 = mem[_1219 + mem[_1219]]
                    if mem[_1219 + mem[_1219]] > test266151307():
                        revert with 0, 65
                    if _1219 + ceil32(return_data.size) + ceil32(32 * mem[_1219 + mem[_1219]]) + 1 > test266151307() or ceil32(32 * mem[_1219 + mem[_1219]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1219 + ceil32(return_data.size) + ceil32(32 * mem[_1219 + mem[_1219]]) + 1
                    mem[_1219 + ceil32(return_data.size)] = _1259
                    require return_data.size >= _1243 + (32 * _1259) + 32
                    mem[_1219 + ceil32(return_data.size) + 32 len 32 * _1259] = mem[_1219 + _1243 + 32 len 32 * _1259]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1427] < _985:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1427] - _985:
                        revert with 0, 'HongCoinBot:BURN!'
    else:
        mem[_633 + _637 + 132] = 0
        call stor1 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _637 + _633 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
            if not ('cd', 132).length:
                if ('cd', 132).length < 1:
                    revert with 0, 17
                if ('cd', 132).length - 1 >= ('cd', 132).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _962 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _970 = mem[_962]
                if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    _986 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_986 + 100] = this.address
                    mem[_986 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _986 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1252] < _970:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1252] - _970:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    _987 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_987 + 100] = this.address
                    mem[_987 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _987 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1220 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1244 = mem[_1220]
                    require mem[_1220] <= test266151307()
                    require _1220 + mem[_1220] + 31 < _1220 + return_data.size
                    _1260 = mem[_1220 + mem[_1220]]
                    if mem[_1220 + mem[_1220]] > test266151307():
                        revert with 0, 65
                    if _1220 + ceil32(return_data.size) + ceil32(32 * mem[_1220 + mem[_1220]]) + 1 > test266151307() or ceil32(32 * mem[_1220 + mem[_1220]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1220 + ceil32(return_data.size) + ceil32(32 * mem[_1220 + mem[_1220]]) + 1
                    mem[_1220 + ceil32(return_data.size)] = _1260
                    require return_data.size >= _1244 + (32 * _1260) + 32
                    mem[_1220 + ceil32(return_data.size) + 32 len 32 * _1260] = mem[_1220 + _1244 + 32 len 32 * _1260]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1428] < _970:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1428] - _970:
                        revert with 0, 'HongCoinBot:BURN!'
            else:
                require ('cd', 132).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
                if ('cd', 132).length < 1:
                    revert with 0, 17
                if ('cd', 132).length - 1 >= ('cd', 132).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _990 = mem[_982]
                if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    _996 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_996 + 100] = this.address
                    mem[_996 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _996 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1253] < _990:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1253] - _990:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    _997 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_997 + 100] = this.address
                    mem[_997 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _997 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1221 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1245 = mem[_1221]
                    require mem[_1221] <= test266151307()
                    require _1221 + mem[_1221] + 31 < _1221 + return_data.size
                    _1261 = mem[_1221 + mem[_1221]]
                    if mem[_1221 + mem[_1221]] > test266151307():
                        revert with 0, 65
                    if _1221 + ceil32(return_data.size) + ceil32(32 * mem[_1221 + mem[_1221]]) + 1 > test266151307() or ceil32(32 * mem[_1221 + mem[_1221]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1221 + ceil32(return_data.size) + ceil32(32 * mem[_1221 + mem[_1221]]) + 1
                    mem[_1221 + ceil32(return_data.size)] = _1261
                    require return_data.size >= _1245 + (32 * _1261) + 32
                    mem[_1221 + ceil32(return_data.size) + 32 len 32 * _1261] = mem[_1221 + _1245 + 32 len 32 * _1261]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1429] < _990:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1429] - _990:
                        revert with 0, 'HongCoinBot:BURN!'
        else:
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_923] = return_data.size
            mem[_923 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
            if not return_data.size:
                if ('cd', 132).length < 1:
                    revert with 0, 17
                if ('cd', 132).length - 1 >= ('cd', 132).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _963 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _973 = mem[_963]
                if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    _988 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_988 + 100] = this.address
                    mem[_988 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _988 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1254] < _973:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1254] - _973:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    _989 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_989 + 100] = this.address
                    mem[_989 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _989 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1222 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1246 = mem[_1222]
                    require mem[_1222] <= test266151307()
                    require _1222 + mem[_1222] + 31 < _1222 + return_data.size
                    _1262 = mem[_1222 + mem[_1222]]
                    if mem[_1222 + mem[_1222]] > test266151307():
                        revert with 0, 65
                    if _1222 + ceil32(return_data.size) + ceil32(32 * mem[_1222 + mem[_1222]]) + 1 > test266151307() or ceil32(32 * mem[_1222 + mem[_1222]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1222 + ceil32(return_data.size) + ceil32(32 * mem[_1222 + mem[_1222]]) + 1
                    mem[_1222 + ceil32(return_data.size)] = _1262
                    require return_data.size >= _1246 + (32 * _1262) + 32
                    mem[_1222 + ceil32(return_data.size) + 32 len 32 * _1262] = mem[_1222 + _1246 + 32 len 32 * _1262]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1430] < _973:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1430] - _973:
                        revert with 0, 'HongCoinBot:BURN!'
            else:
                require return_data.size >= 32
                require mem[_923 + 32] == bool(mem[_923 + 32])
                if not mem[_923 + 32]:
                    revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
                if ('cd', 132).length < 1:
                    revert with 0, 17
                if ('cd', 132).length - 1 >= ('cd', 132).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _983 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _991 = mem[_983]
                if address(cd[36]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    _998 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_998 + 100] = this.address
                    mem[_998 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _998 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1255] < _991:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1255] - _991:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    _999 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_999 + 100] = this.address
                    mem[_999 + 132] = block.timestamp
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _999 + (32 * ('cd', 132).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1223 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1247 = mem[_1223]
                    require mem[_1223] <= test266151307()
                    require _1223 + mem[_1223] + 31 < _1223 + return_data.size
                    _1263 = mem[_1223 + mem[_1223]]
                    if mem[_1223 + mem[_1223]] > test266151307():
                        revert with 0, 65
                    if _1223 + ceil32(return_data.size) + ceil32(32 * mem[_1223 + mem[_1223]]) + 1 > test266151307() or ceil32(32 * mem[_1223 + mem[_1223]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1223 + ceil32(return_data.size) + ceil32(32 * mem[_1223 + mem[_1223]]) + 1
                    mem[_1223 + ceil32(return_data.size)] = _1263
                    require return_data.size >= _1247 + (32 * _1263) + 32
                    mem[_1223 + ceil32(return_data.size) + 32 len 32 * _1263] = mem[_1223 + _1247 + 32 len 32 * _1263]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1431 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1431] < _991:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and cd[68] > -1 / mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] * cd[68] / 100 > mem[_1431] - _991:
                        revert with 0, 'HongCoinBot:BURN!'
}

function sub_50442305(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[96] = ('cd', 100).length
    mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 100).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 100).length) + 132] = cd[68]
    mem[(32 * ('cd', 100).length) + 164] = 64
    mem[(32 * ('cd', 100).length) + 196] = ('cd', 100).length
    idx = 0
    s = (32 * ('cd', 100).length) + 228
    t = 128
    while idx < ('cd', 100).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 100).length) + 132 len (96 * ('cd', 100).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 100).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 100).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _314 = mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require (32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 159 < (32 * ('cd', 100).length) + return_data.size + 128
    _315 = mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]
    if mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128] > test266151307():
        revert with 0, 65
    if (32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 1 < 0:
        revert with 0, 65
    mem[64] = (32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]) + 129
    mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 100).length) + mem[(32 * ('cd', 100).length) + 128 len 4], Mask(224, 32, cd[68]) >> 32 + 128]
    require return_data.size >= _314 + (32 * _315) + 32
    mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 160 len 32 * _315] = mem[(32 * ('cd', 100).length) + _314 + 160 len 32 * _315]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _621 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _622 = mem[_621]
    require mem[_621] == mem[_621 + 12 len 20]
    if ('cd', 100).length < 1:
        revert with 0, 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 0, 50
    if ('cd', 100).length < 2:
        revert with 0, 17
    if ('cd', 100).length - 2 >= ('cd', 100).length:
        revert with 0, 50
    mem[mem[64] + 4] = mem[(32 * ('cd', 100).length - 1) + 140 len 20]
    mem[mem[64] + 36] = mem[(32 * ('cd', 100).length - 2) + 140 len 20]
    require ext_code.size(address(_622))
    staticcall address(_622).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len 64]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _631 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_631] == mem[_631 + 12 len 20]
    _633 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = cd[68]
    _634 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_634 + 32 len 4] = unknown_0x23b872dd(?????)
    _637 = mem[_634]
    mem[_633 + 132 len ceil32(mem[_634])] = mem[_634 + 32 len ceil32(mem[_634])]
    if ceil32(_637) <= _637:
        call stor1 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _637 + _633 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
            if not ('cd', 100).length:
                if ('cd', 100).length < 1:
                    revert with 0, 17
                if ('cd', 100).length - 1 >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _960 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _964 = mem[_960]
                if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1248 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1248] < _964:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1248] - _964:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1216 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1240 = mem[_1216]
                    require mem[_1216] <= test266151307()
                    require _1216 + mem[_1216] + 31 < _1216 + return_data.size
                    _1256 = mem[_1216 + mem[_1216]]
                    if mem[_1216 + mem[_1216]] > test266151307():
                        revert with 0, 65
                    if _1216 + ceil32(return_data.size) + ceil32(32 * mem[_1216 + mem[_1216]]) + 1 > test266151307() or ceil32(32 * mem[_1216 + mem[_1216]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1216 + ceil32(return_data.size) + ceil32(32 * mem[_1216 + mem[_1216]]) + 1
                    mem[_1216 + ceil32(return_data.size)] = _1256
                    require return_data.size >= _1240 + (32 * _1256) + 32
                    mem[_1216 + ceil32(return_data.size) + 32 len 32 * _1256] = mem[_1216 + _1240 + 32 len 32 * _1256]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1424] < _964:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1424] - _964:
                        revert with 0, 'HongCoinBot:BURN!'
            else:
                require ('cd', 100).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
                if ('cd', 100).length < 1:
                    revert with 0, 17
                if ('cd', 100).length - 1 >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _976 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _984 = mem[_976]
                if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1249] < _984:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1249] - _984:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1217 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1241 = mem[_1217]
                    require mem[_1217] <= test266151307()
                    require _1217 + mem[_1217] + 31 < _1217 + return_data.size
                    _1257 = mem[_1217 + mem[_1217]]
                    if mem[_1217 + mem[_1217]] > test266151307():
                        revert with 0, 65
                    if _1217 + ceil32(return_data.size) + ceil32(32 * mem[_1217 + mem[_1217]]) + 1 > test266151307() or ceil32(32 * mem[_1217 + mem[_1217]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1217 + ceil32(return_data.size) + ceil32(32 * mem[_1217 + mem[_1217]]) + 1
                    mem[_1217 + ceil32(return_data.size)] = _1257
                    require return_data.size >= _1241 + (32 * _1257) + 32
                    mem[_1217 + ceil32(return_data.size) + 32 len 32 * _1257] = mem[_1217 + _1241 + 32 len 32 * _1257]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1425] < _984:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1425] - _984:
                        revert with 0, 'HongCoinBot:BURN!'
        else:
            _921 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_921] = return_data.size
            mem[_921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
            if not return_data.size:
                if ('cd', 100).length < 1:
                    revert with 0, 17
                if ('cd', 100).length - 1 >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _961 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _967 = mem[_961]
                if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1250 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1250] < _967:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1250] - _967:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1218 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1242 = mem[_1218]
                    require mem[_1218] <= test266151307()
                    require _1218 + mem[_1218] + 31 < _1218 + return_data.size
                    _1258 = mem[_1218 + mem[_1218]]
                    if mem[_1218 + mem[_1218]] > test266151307():
                        revert with 0, 65
                    if _1218 + ceil32(return_data.size) + ceil32(32 * mem[_1218 + mem[_1218]]) + 1 > test266151307() or ceil32(32 * mem[_1218 + mem[_1218]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1218 + ceil32(return_data.size) + ceil32(32 * mem[_1218 + mem[_1218]]) + 1
                    mem[_1218 + ceil32(return_data.size)] = _1258
                    require return_data.size >= _1242 + (32 * _1258) + 32
                    mem[_1218 + ceil32(return_data.size) + 32 len 32 * _1258] = mem[_1218 + _1242 + 32 len 32 * _1258]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1426] < _967:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1426] - _967:
                        revert with 0, 'HongCoinBot:BURN!'
            else:
                require return_data.size >= 32
                require mem[_921 + 32] == bool(mem[_921 + 32])
                if not mem[_921 + 32]:
                    revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
                if ('cd', 100).length < 1:
                    revert with 0, 17
                if ('cd', 100).length - 1 >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _977 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _985 = mem[_977]
                if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1251] < _985:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1251] - _985:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1219 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1243 = mem[_1219]
                    require mem[_1219] <= test266151307()
                    require _1219 + mem[_1219] + 31 < _1219 + return_data.size
                    _1259 = mem[_1219 + mem[_1219]]
                    if mem[_1219 + mem[_1219]] > test266151307():
                        revert with 0, 65
                    if _1219 + ceil32(return_data.size) + ceil32(32 * mem[_1219 + mem[_1219]]) + 1 > test266151307() or ceil32(32 * mem[_1219 + mem[_1219]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1219 + ceil32(return_data.size) + ceil32(32 * mem[_1219 + mem[_1219]]) + 1
                    mem[_1219 + ceil32(return_data.size)] = _1259
                    require return_data.size >= _1243 + (32 * _1259) + 32
                    mem[_1219 + ceil32(return_data.size) + 32 len 32 * _1259] = mem[_1219 + _1243 + 32 len 32 * _1259]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1427] < _985:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1427] - _985:
                        revert with 0, 'HongCoinBot:BURN!'
    else:
        mem[_633 + _637 + 132] = 0
        call stor1 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _637 + _633 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
            if not ('cd', 100).length:
                if ('cd', 100).length < 1:
                    revert with 0, 17
                if ('cd', 100).length - 1 >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _962 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _970 = mem[_962]
                if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1252] < _970:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1252] - _970:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1220 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1244 = mem[_1220]
                    require mem[_1220] <= test266151307()
                    require _1220 + mem[_1220] + 31 < _1220 + return_data.size
                    _1260 = mem[_1220 + mem[_1220]]
                    if mem[_1220 + mem[_1220]] > test266151307():
                        revert with 0, 65
                    if _1220 + ceil32(return_data.size) + ceil32(32 * mem[_1220 + mem[_1220]]) + 1 > test266151307() or ceil32(32 * mem[_1220 + mem[_1220]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1220 + ceil32(return_data.size) + ceil32(32 * mem[_1220 + mem[_1220]]) + 1
                    mem[_1220 + ceil32(return_data.size)] = _1260
                    require return_data.size >= _1244 + (32 * _1260) + 32
                    mem[_1220 + ceil32(return_data.size) + 32 len 32 * _1260] = mem[_1220 + _1244 + 32 len 32 * _1260]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1428] < _970:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1428] - _970:
                        revert with 0, 'HongCoinBot:BURN!'
            else:
                require ('cd', 100).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
                if ('cd', 100).length < 1:
                    revert with 0, 17
                if ('cd', 100).length - 1 >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _990 = mem[_982]
                if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1253] < _990:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1253] - _990:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1221 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1245 = mem[_1221]
                    require mem[_1221] <= test266151307()
                    require _1221 + mem[_1221] + 31 < _1221 + return_data.size
                    _1261 = mem[_1221 + mem[_1221]]
                    if mem[_1221 + mem[_1221]] > test266151307():
                        revert with 0, 65
                    if _1221 + ceil32(return_data.size) + ceil32(32 * mem[_1221 + mem[_1221]]) + 1 > test266151307() or ceil32(32 * mem[_1221 + mem[_1221]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1221 + ceil32(return_data.size) + ceil32(32 * mem[_1221 + mem[_1221]]) + 1
                    mem[_1221 + ceil32(return_data.size)] = _1261
                    require return_data.size >= _1245 + (32 * _1261) + 32
                    mem[_1221 + ceil32(return_data.size) + 32 len 32 * _1261] = mem[_1221 + _1245 + 32 len 32 * _1261]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1429] < _990:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1429] - _990:
                        revert with 0, 'HongCoinBot:BURN!'
        else:
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_923] = return_data.size
            mem[_923 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
            if not return_data.size:
                if ('cd', 100).length < 1:
                    revert with 0, 17
                if ('cd', 100).length - 1 >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _963 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _973 = mem[_963]
                if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1254] < _973:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1254] - _973:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1222 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1246 = mem[_1222]
                    require mem[_1222] <= test266151307()
                    require _1222 + mem[_1222] + 31 < _1222 + return_data.size
                    _1262 = mem[_1222 + mem[_1222]]
                    if mem[_1222 + mem[_1222]] > test266151307():
                        revert with 0, 65
                    if _1222 + ceil32(return_data.size) + ceil32(32 * mem[_1222 + mem[_1222]]) + 1 > test266151307() or ceil32(32 * mem[_1222 + mem[_1222]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1222 + ceil32(return_data.size) + ceil32(32 * mem[_1222 + mem[_1222]]) + 1
                    mem[_1222 + ceil32(return_data.size)] = _1262
                    require return_data.size >= _1246 + (32 * _1262) + 32
                    mem[_1222 + ceil32(return_data.size) + 32 len 32 * _1262] = mem[_1222 + _1246 + 32 len 32 * _1262]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1430] < _973:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1430] - _973:
                        revert with 0, 'HongCoinBot:BURN!'
            else:
                require return_data.size >= 32
                require mem[_923 + 32] == bool(mem[_923 + 32])
                if not mem[_923 + 32]:
                    revert with 0, 'HongCoinBot: TRANSFER_FROM_FAILED'
                if ('cd', 100).length < 1:
                    revert with 0, 17
                if ('cd', 100).length - 1 >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _983 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _991 = mem[_983]
                if address(cd[4]) != 0x789c11212eaca5312d4aa6d63148613e658ccfad:
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1255] < _991:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1255] - _991:
                        revert with 0, 'HongCoinBot:BURN!'
                else:
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 100).length
                    idx = 0
                    s = cd[100] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 100).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[68], 1, Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1223 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1247 = mem[_1223]
                    require mem[_1223] <= test266151307()
                    require _1223 + mem[_1223] + 31 < _1223 + return_data.size
                    _1263 = mem[_1223 + mem[_1223]]
                    if mem[_1223 + mem[_1223]] > test266151307():
                        revert with 0, 65
                    if _1223 + ceil32(return_data.size) + ceil32(32 * mem[_1223 + mem[_1223]]) + 1 > test266151307() or ceil32(32 * mem[_1223 + mem[_1223]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1223 + ceil32(return_data.size) + ceil32(32 * mem[_1223 + mem[_1223]]) + 1
                    mem[_1223 + ceil32(return_data.size)] = _1263
                    require return_data.size >= _1247 + (32 * _1263) + 32
                    mem[_1223 + ceil32(return_data.size) + 32 len 32 * _1263] = mem[_1223 + _1247 + 32 len 32 * _1263]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1431 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1431] < _991:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1 >= mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128]:
                        revert with 0, 50
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] and cd[36] > -1 / mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160]:
                        revert with 0, 17
                    if mem[(32 * mem[(32 * ('cd', 100).length) + ceil32(return_data.size) + 128] - 1) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] * cd[36] / 100 > mem[_1431] - _991:
                        revert with 0, 'HongCoinBot:BURN!'
}



}
