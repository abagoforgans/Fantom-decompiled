contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_d247d72d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Insuffisant funds'
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer error'
}

function sub_8802bf89(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -31:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg4
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, arg5, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e129eb2b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -31:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8cdcf40a(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg7 <= 50:
        revert with 0, 'Less than 50% out'
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _76 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 223 < return_data.size + 192
    _77 = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require _76 + (32 * _77) + 32 <= return_data.size
    idx = 0
    s = _76 + 224
    t = ceil32(return_data.size) + 224
    while idx < _77:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= _77:
        revert with 'NH{q', 50
    _182 = mem[ceil32(return_data.size) + 224]
    if not arg7:
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_186] == bool(mem[_186])
        if address(arg3) < address(arg4):
            _190 = mem[64]
            mem[64] = mem[64] + 32
            mem[_190] = 0
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164 len 0] = None
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_309] == mem[_309]
            if mem[_309] <= 0:
                revert with 0, 'Output tokens < amountOutMin'
            if mem[_309] < arg6:
                revert with 0, 'Output tokens < amountOutMin'
        else:
            _192 = mem[64]
            mem[64] = mem[64] + 32
            mem[_192] = 0
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164 len 0] = None
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_310] == mem[_310]
            if mem[_310] <= 0:
                revert with 0, 'Output tokens < amountOutMin'
            if mem[_310] < arg6:
                revert with 0, 'Output tokens < amountOutMin'
    else:
        if mem[ceil32(return_data.size) + 224] and arg7 > -1 / mem[ceil32(return_data.size) + 224]:
            revert with 'NH{q', 17
        if not arg7:
            revert with 'NH{q', 18
        if mem[ceil32(return_data.size) + 224] * arg7 / arg7 != mem[ceil32(return_data.size) + 224]:
            revert with 0, 'ds-math-mul-overflow'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg5
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _195 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_195] == bool(mem[_195])
        if address(arg3) < address(arg4):
            _197 = mem[64]
            mem[64] = mem[64] + 32
            mem[_197] = 0
            mem[mem[64] + 36] = _182 * arg7 / 100
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164 len 0] = None
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _182 * arg7 / 100, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_311] == mem[_311]
            if mem[_311] <= 0:
                revert with 0, 'Output tokens < amountOutMin'
            if mem[_311] < arg6:
                revert with 0, 'Output tokens < amountOutMin'
        else:
            _199 = mem[64]
            mem[64] = mem[64] + 32
            mem[_199] = 0
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164 len 0] = None
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _182 * arg7 / 100, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_312] == mem[_312]
            if mem[_312] <= 0:
                revert with 0, 'Output tokens < amountOutMin'
            if mem[_312] < arg6:
                revert with 0, 'Output tokens < amountOutMin'
}



}
