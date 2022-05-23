contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function sub_144cfbdb(?) payable {
    require calldata.size - 4 >= 32
    if not arg1 / 10000:
        return 0
    if 3 * arg1 / 10000 / arg1 / 10000 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (3 * arg1 / 10000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sub_8bd58682(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if mem[(32 * idx) + 128] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < ('cd', 4).length
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        continue 
    return s
}

function sub_0362277d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        return 1
    else:
        return 0
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_324388c6(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 224, arg2, address(arg3), address(arg4), address(arg5), address(arg6), address(arg7), address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg6))
    staticcall address(arg6).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No profit made revert'
    require ext_code.size(address(arg6))
    staticcall address(arg6).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg6))
    call address(arg6).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_74e74144(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[196] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = arg2
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _28 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _29 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _28 + (32 * _29) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _29] = mem[ceil32(return_data.size) + _28 + 224 len 32 * _29]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _43 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if ext_call.return_data[0] > mem[_43]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[mem[64]] = mem[_43] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_742a466e(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(arg3)
    mem[ceil32(return_data.size) + 132] = address(arg4)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg4)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg3)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg4)
    if address(arg3) != address(arg3):
        revert with 0, 'ERR_PATH_TOKENS'
    if uint64(arg4) << 96 != address(arg4):
        revert with 0, 'ERR_PATH_TOKENS'
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _69 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _71 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _69 + (32 * _71) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _71] = mem[(2 * ceil32(return_data.size)) + _69 + 224 len 32 * _71]
    require 1 < _71
    mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_3e7b62de(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _140 = mem[_138]
            require mem[_138] == mem[_138 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_140))
            staticcall address(_140).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_146] == mem[_146 + 12 len 20]
            if not mem[_146 + 12 len 20]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                _150 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_150]
                mem[_150 + 32] = address(cd[68])
                require 1 < mem[_150]
                mem[_150 + 64] = address(cd[100])
                require 0 < mem[_150]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_150] - 1 < mem[_150]
                if mem[(32 * mem[_150] - 1) + _150 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_150 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_150 + 100] = cd[4]
                mem[_150 + 132] = 64
                mem[_150 + 164] = mem[_150]
                s = 0
                t = _150 + 32
                u = _150 + 196
                while s < mem[_150]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _150 + (32 * mem[_150]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _262 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _266 = mem[_262]
                require mem[_262] <= test266151307()
                require _262 + return_data.size > _262 + mem[_262] + 31
                _270 = mem[_262 + mem[_262]]
                require mem[_262 + mem[_262]] <= test266151307()
                require (32 * mem[_262 + mem[_262]]) + 32 >= 0 and _262 + ceil32(return_data.size) + (32 * mem[_262 + mem[_262]]) + 32 <= test266151307()
                mem[64] = _262 + ceil32(return_data.size) + (32 * mem[_262 + mem[_262]]) + 32
                mem[_262 + ceil32(return_data.size)] = _270
                require return_data.size >= _266 + (32 * _270) + 32
                t = _262 + _266 + 32
                u = _262 + ceil32(return_data.size) + 32
                s = 0
                while s < _270:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _270
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_262 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _141 = mem[_139]
            require mem[_139] == mem[_139 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_141))
            staticcall address(_141).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_147] == mem[_147 + 12 len 20]
            if not mem[_147 + 12 len 20]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                _154 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_154]
                mem[_154 + 32] = address(cd[68])
                require 1 < mem[_154]
                mem[_154 + 64] = address(cd[100])
                require 0 < mem[_154]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_154] - 1 < mem[_154]
                if mem[(32 * mem[_154] - 1) + _154 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_154 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_154 + 100] = cd[4]
                mem[_154 + 132] = 64
                mem[_154 + 164] = mem[_154]
                s = 0
                t = _154 + 32
                u = _154 + 196
                while s < mem[_154]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _154 + (32 * mem[_154]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _264 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _268 = mem[_264]
                require mem[_264] <= test266151307()
                require _264 + return_data.size > _264 + mem[_264] + 31
                _272 = mem[_264 + mem[_264]]
                require mem[_264 + mem[_264]] <= test266151307()
                require (32 * mem[_264 + mem[_264]]) + 32 >= 0 and _264 + ceil32(return_data.size) + (32 * mem[_264 + mem[_264]]) + 32 <= test266151307()
                mem[64] = _264 + ceil32(return_data.size) + (32 * mem[_264 + mem[_264]]) + 32
                mem[_264 + ceil32(return_data.size)] = _272
                require return_data.size >= _268 + (32 * _272) + 32
                t = _264 + _268 + 32
                u = _264 + ceil32(return_data.size) + 32
                s = 0
                while s < _272:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _272
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_264 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_6b1bdbc9(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _160 = mem[_158]
            require mem[_158] == mem[_158 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_160))
            staticcall address(_160).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_170] == mem[_170 + 12 len 20]
            if not mem[_170 + 12 len 20]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                _174 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_174]
                mem[_174 + 32] = address(cd[68])
                require 1 < mem[_174]
                mem[_174 + 64] = address(cd[100])
                require 0 < mem[_174]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_174] - 1 < mem[_174]
                if mem[(32 * mem[_174] - 1) + _174 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_174 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_174 + 100] = cd[4]
                mem[_174 + 132] = 64
                mem[_174 + 164] = mem[_174]
                s = 0
                t = _174 + 32
                u = _174 + 196
                while s < mem[_174]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _174 + (32 * mem[_174]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _297 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _302 = mem[_297]
                require mem[_297] <= test266151307()
                require _297 + return_data.size > _297 + mem[_297] + 31
                _306 = mem[_297 + mem[_297]]
                require mem[_297 + mem[_297]] <= test266151307()
                require (32 * mem[_297 + mem[_297]]) + 32 >= 0 and _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32 <= test266151307()
                mem[64] = _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32
                mem[_297 + ceil32(return_data.size)] = _306
                require return_data.size >= _302 + (32 * _306) + 32
                t = _297 + _302 + 32
                u = _297 + ceil32(return_data.size) + 32
                s = 0
                while s < _306:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _306
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_297 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _161 = mem[_159]
            require mem[_159] == mem[_159 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_161))
            staticcall address(_161).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_171] == mem[_171 + 12 len 20]
            if not mem[_171 + 12 len 20]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                _178 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_178]
                mem[_178 + 32] = address(cd[68])
                require 1 < mem[_178]
                mem[_178 + 64] = address(cd[100])
                require 0 < mem[_178]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_178] - 1 < mem[_178]
                if mem[(32 * mem[_178] - 1) + _178 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_178 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_178 + 100] = cd[4]
                mem[_178 + 132] = 64
                mem[_178 + 164] = mem[_178]
                s = 0
                t = _178 + 32
                u = _178 + 196
                while s < mem[_178]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _178 + (32 * mem[_178]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _304 = mem[_300]
                require mem[_300] <= test266151307()
                require _300 + return_data.size > _300 + mem[_300] + 31
                _308 = mem[_300 + mem[_300]]
                require mem[_300 + mem[_300]] <= test266151307()
                require (32 * mem[_300 + mem[_300]]) + 32 >= 0 and _300 + ceil32(return_data.size) + (32 * mem[_300 + mem[_300]]) + 32 <= test266151307()
                mem[64] = _300 + ceil32(return_data.size) + (32 * mem[_300 + mem[_300]]) + 32
                mem[_300 + ceil32(return_data.size)] = _308
                require return_data.size >= _304 + (32 * _308) + 32
                t = _300 + _304 + 32
                u = _300 + ceil32(return_data.size) + 32
                s = 0
                while s < _308:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _308
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_300 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        require idx < mem[96]
        if mem[(32 * idx) + 128] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[96]
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        idx = idx + 1
        continue 
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    return address(('cd', 36)[0]), s
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Invalid balance, was the flashLoan successful?'
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    mem[ceil32(return_data.size) + 160] = 0
    mem[ceil32(return_data.size) + 192] = 0
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256] = 0
    mem[ceil32(return_data.size) + 288] = 0
    require arg5.length >= 224
    require bool(ceil32(return_data.size) + 544 <= test266151307())
    mem[ceil32(return_data.size) + 320] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[ceil32(return_data.size) + 352] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[ceil32(return_data.size) + 384] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[ceil32(return_data.size) + 416] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    mem[ceil32(return_data.size) + 448] = cd[(arg5 + 164)]
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    mem[ceil32(return_data.size) + 480] = cd[(arg5 + 196)]
    require cd[(arg5 + 228)] == address(cd[(arg5 + 228)])
    mem[ceil32(return_data.size) + 512] = cd[(arg5 + 228)]
    mem[ceil32(return_data.size) + 548] = this.address
    require ext_code.size(address(cd[(arg5 + 164)]))
    staticcall address(cd[(arg5 + 164)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[(arg5 + 36)]:
        revert with 0, 'No tokens'
    mem[(2 * ceil32(return_data.size)) + 548] = address(cd[(arg5 + 68)])
    mem[(2 * ceil32(return_data.size)) + 580] = -1
    require ext_code.size(address(cd[(arg5 + 164)]))
    call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), -1
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 544] = 2
    mem[(4 * ceil32(return_data.size)) + 576] = address(cd[(arg5 + 164)])
    mem[(4 * ceil32(return_data.size)) + 608] = address(cd[(arg5 + 196)])
    mem[(4 * ceil32(return_data.size)) + 644] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 644] = cd[(arg5 + 36)]
    mem[(6 * ceil32(return_data.size)) + 676] = 1
    mem[(6 * ceil32(return_data.size)) + 708] = 160
    mem[(6 * ceil32(return_data.size)) + 804] = 2
    if not address(cd[(arg5 + 132)]):
        idx = 0
        s = (4 * ceil32(return_data.size)) + 576
        t = (6 * ceil32(return_data.size)) + 836
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 740] = this.address
        mem[(6 * ceil32(return_data.size)) + 772] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg5 + 36)], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _196 = mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32
        require mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 <= test266151307()
        require (6 * ceil32(return_data.size)) + return_data.size + 640 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 671
        _198 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]) + 672 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]) + 672
        mem[(7 * ceil32(return_data.size)) + 640] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]
        require return_data.size >= _196 + (32 * _198) + 32
        mem[(7 * ceil32(return_data.size)) + 672 len 32 * _198] = mem[(6 * ceil32(return_data.size)) + _196 + 672 len 32 * _198]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if ext_call.return_data[0] > mem[_374]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _386 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_386] <= 0:
            revert with 0, 'No tokens1'
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _398 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_398] == bool(mem[_398])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _406 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _408 = mem[_406]
        _411 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_411]
        mem[_411 + 32] = address(cd[(arg5 + 196)])
        require 1 < mem[_411]
        mem[_411 + 64] = address(cd[(arg5 + 164)])
        mem[_411 + 100] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[_411 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _411 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        mem[_411 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_411 + ceil32(return_data.size) + 100] = _408
        mem[_411 + ceil32(return_data.size) + 132] = 1
        mem[_411 + ceil32(return_data.size) + 164] = 160
        mem[_411 + ceil32(return_data.size) + 260] = mem[_411]
        idx = 0
        s = _411 + 32
        t = _411 + ceil32(return_data.size) + 292
        while idx < mem[_411]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_411 + ceil32(return_data.size) + 196] = this.address
        mem[_411 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _411 + ceil32(return_data.size) + (32 * mem[_411]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _538 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _540 = mem[_538]
        require mem[_538] <= test266151307()
        require _538 + return_data.size > _538 + mem[_538] + 31
        _542 = mem[_538 + mem[_538]]
        require mem[_538 + mem[_538]] <= test266151307()
        require (32 * mem[_538 + mem[_538]]) + 32 >= 0 and _538 + ceil32(return_data.size) + (32 * mem[_538 + mem[_538]]) + 32 <= test266151307()
        mem[64] = _538 + ceil32(return_data.size) + (32 * mem[_538 + mem[_538]]) + 32
        mem[_538 + ceil32(return_data.size)] = _542
        require return_data.size >= _540 + (32 * _542) + 32
        mem[_538 + ceil32(return_data.size) + 32 len 32 * _542] = mem[_538 + _540 + 32 len 32 * _542]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _646 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _648 = mem[_646]
        if ext_call.return_data[0] > mem[_646]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _658 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_658] == bool(mem[_658])
        if _648 - ext_call.return_data[0] <= cd[(arg5 + 36)]:
            revert with 0, 'Trade failed to make profit'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _675 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_675] < arg4 + arg3:
            revert with 0, 'Need more underlying to pay back loan'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg4 + arg3
        require ext_code.size(arg2)
        call arg2.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg4 + arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _690 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_690] == bool(mem[_690])
        if not mem[_690]:
            revert with 0, 'Transfer fund back failed'
    else:
        idx = 0
        s = (4 * ceil32(return_data.size)) + 576
        t = (6 * ceil32(return_data.size)) + 836
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 740] = this.address
        mem[(6 * ceil32(return_data.size)) + 772] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg5 + 36)], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _195 = mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32
        require mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 <= test266151307()
        require (6 * ceil32(return_data.size)) + return_data.size + 640 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 671
        _197 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]) + 672 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]) + 672
        mem[(7 * ceil32(return_data.size)) + 640] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, cd[(arg5 + 36)]) >> 32 + 640]
        require return_data.size >= _195 + (32 * _197) + 32
        mem[(7 * ceil32(return_data.size)) + 672 len 32 * _197] = mem[(6 * ceil32(return_data.size)) + _195 + 672 len 32 * _197]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if ext_call.return_data[0] > mem[_373]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_385] <= 0:
            revert with 0, 'No tokensB'
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_397] == bool(mem[_397])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _405 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _407 = mem[_405]
        _409 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_409]
        mem[_409 + 32] = address(cd[(arg5 + 196)])
        require 1 < mem[_409]
        mem[_409 + 64] = address(cd[(arg5 + 228)])
        mem[_409 + 100] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[_409 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _409 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        mem[_409 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_409 + ceil32(return_data.size) + 100] = _407
        mem[_409 + ceil32(return_data.size) + 132] = 1
        mem[_409 + ceil32(return_data.size) + 164] = 160
        mem[_409 + ceil32(return_data.size) + 260] = mem[_409]
        idx = 0
        s = _409 + 32
        t = _409 + ceil32(return_data.size) + 292
        while idx < mem[_409]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_409 + ceil32(return_data.size) + 196] = this.address
        mem[_409 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _409 + ceil32(return_data.size) + (32 * mem[_409]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _537 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _539 = mem[_537]
        require mem[_537] <= test266151307()
        require _537 + return_data.size > _537 + mem[_537] + 31
        _541 = mem[_537 + mem[_537]]
        require mem[_537 + mem[_537]] <= test266151307()
        require (32 * mem[_537 + mem[_537]]) + 32 >= 0 and _537 + ceil32(return_data.size) + (32 * mem[_537 + mem[_537]]) + 32 <= test266151307()
        mem[64] = _537 + ceil32(return_data.size) + (32 * mem[_537 + mem[_537]]) + 32
        mem[_537 + ceil32(return_data.size)] = _541
        require return_data.size >= _539 + (32 * _541) + 32
        mem[_537 + ceil32(return_data.size) + 32 len 32 * _541] = mem[_537 + _539 + 32 len 32 * _541]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _645 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if ext_call.return_data[0] > mem[_645]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _657 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_657] <= 0:
            revert with 0, 'No tokensC'
        mem[mem[64] + 4] = address(cd[(arg5 + 132)])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[(arg5 + 228)]))
        call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 132)]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _667 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_667] == bool(mem[_667])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _676 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _678 = mem[_676]
        _680 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_680]
        mem[_680 + 32] = address(cd[(arg5 + 228)])
        require 1 < mem[_680]
        mem[_680 + 64] = address(cd[(arg5 + 164)])
        mem[_680 + 100] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[_680 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _680 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        mem[_680 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_680 + ceil32(return_data.size) + 100] = _678
        mem[_680 + ceil32(return_data.size) + 132] = 1
        mem[_680 + ceil32(return_data.size) + 164] = 160
        mem[_680 + ceil32(return_data.size) + 260] = mem[_680]
        idx = 0
        s = _680 + 32
        t = _680 + ceil32(return_data.size) + 292
        while idx < mem[_680]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_680 + ceil32(return_data.size) + 196] = this.address
        mem[_680 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _678, 1, 160, address(this.address), block.timestamp, mem[_680 + ceil32(return_data.size) + 260 len (32 * mem[_680]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_680 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _680 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _736 = mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32
        require mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32 <= test266151307()
        require _680 + ceil32(return_data.size) + return_data.size + 96 > _680 + ceil32(return_data.size) + mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32 + 127
        _737 = mem[_680 + ceil32(return_data.size) + mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32 + 96]
        require mem[_680 + ceil32(return_data.size) + mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32 + 96] <= test266151307()
        require (32 * mem[_680 + ceil32(return_data.size) + mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32 + 96]) + 32 >= 0 and _680 + (2 * ceil32(return_data.size)) + (32 * mem[_680 + ceil32(return_data.size) + mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = _680 + (2 * ceil32(return_data.size)) + (32 * mem[_680 + ceil32(return_data.size) + mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32 + 96]) + 128
        mem[_680 + (2 * ceil32(return_data.size)) + 96] = mem[_680 + ceil32(return_data.size) + mem[_680 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _678) >> 32 + 96]
        require return_data.size >= _736 + (32 * _737) + 32
        mem[_680 + (2 * ceil32(return_data.size)) + 128 len 32 * _737] = mem[_680 + ceil32(return_data.size) + _736 + 128 len 32 * _737]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _771 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _772 = mem[_771]
        if ext_call.return_data[0] > mem[_771]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _777 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_777] == bool(mem[_777])
        if _772 - ext_call.return_data[0] <= cd[(arg5 + 36)]:
            revert with 0, 'Trade failed to make profit'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _785 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_785] < arg4 + arg3:
            revert with 0, 'Need more underlying to pay back loan'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg4 + arg3
        require ext_code.size(arg2)
        call arg2.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg4 + arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _793 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_793] == bool(mem[_793])
        if not mem[_793]:
            revert with 0, 'Transfer fund back failed'
}

function sub_3461a553(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _430 = mem[_428]
            require mem[_428] == mem[_428 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_430))
            staticcall address(_430).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_438] == mem[_438 + 12 len 20]
            if not mem[_438 + 12 len 20]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                _480 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_480]
                mem[_480 + 32] = address(cd[68])
                require 1 < mem[_480]
                mem[_480 + 64] = address(cd[100])
                require 0 < mem[_480]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_480] - 1 < mem[_480]
                if mem[(32 * mem[_480] - 1) + _480 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_480 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_480 + 100] = cd[4]
                mem[_480 + 132] = 64
                mem[_480 + 164] = mem[_480]
                s = 0
                t = _480 + 32
                u = _480 + 196
                while s < mem[_480]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _480 + (32 * mem[_480]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _837 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _842 = mem[_837]
                require mem[_837] <= test266151307()
                require _837 + return_data.size > _837 + mem[_837] + 31
                _846 = mem[_837 + mem[_837]]
                require mem[_837 + mem[_837]] <= test266151307()
                require (32 * mem[_837 + mem[_837]]) + 32 >= 0 and _837 + ceil32(return_data.size) + (32 * mem[_837 + mem[_837]]) + 32 <= test266151307()
                mem[64] = _837 + ceil32(return_data.size) + (32 * mem[_837 + mem[_837]]) + 32
                mem[_837 + ceil32(return_data.size)] = _846
                require return_data.size >= _842 + (32 * _846) + 32
                t = _837 + _842 + 32
                u = _837 + ceil32(return_data.size) + 32
                s = 0
                while s < _846:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _846
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_837 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[96]:
            require idx < mem[96]
            if mem[(32 * idx) + 128] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[96]
            idx = idx + 1
            s = mem[(32 * idx) + 128]
            continue 
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            idx = idx + 1
            continue 
        require 0 < ('cd', 36).length
        require ('cd', 36)[0] == address(('cd', 36)[0])
        require ('cd', 36).length <= test266151307()
        _1166 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1484 = mem[_1480]
                require mem[_1480] == mem[_1480 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1484))
                staticcall address(_1484).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1504] == mem[_1504 + 12 len 20]
                if not mem[_1504 + 12 len 20]:
                    require idx < mem[_1166]
                    mem[(32 * idx) + _1166 + 32] = 0
                else:
                    _1512 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1512]
                    mem[_1512 + 32] = address(cd[100])
                    require 1 < mem[_1512]
                    mem[_1512 + 64] = address(cd[68])
                    require 0 < mem[_1512]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_1512] - 1 < mem[_1512]
                    if mem[(32 * mem[_1512] - 1) + _1512 + 44 len 20] != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_1512 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1512 + 100] = s
                    mem[_1512 + 132] = 64
                    mem[_1512 + 164] = mem[_1512]
                    s = 0
                    t = _1512 + 32
                    u = _1512 + 196
                    while s < mem[_1512]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1512 + (32 * mem[_1512]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1757 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1768 = mem[_1757]
                    require mem[_1757] <= test266151307()
                    require _1757 + return_data.size > _1757 + mem[_1757] + 31
                    _1776 = mem[_1757 + mem[_1757]]
                    require mem[_1757 + mem[_1757]] <= test266151307()
                    require (32 * mem[_1757 + mem[_1757]]) + 32 >= 0 and _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32 <= test266151307()
                    mem[64] = _1757 + ceil32(return_data.size) + (32 * mem[_1757 + mem[_1757]]) + 32
                    mem[_1757 + ceil32(return_data.size)] = _1776
                    require return_data.size >= _1768 + (32 * _1776) + 32
                    t = _1757 + _1768 + 32
                    u = _1757 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1776:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1776
                    require idx < mem[_1166]
                    mem[(32 * idx) + _1166 + 32] = mem[_1757 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
        else:
            mem[_1166 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1481 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1485 = mem[_1481]
                require mem[_1481] == mem[_1481 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1485))
                staticcall address(_1485).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1505 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1505] == mem[_1505 + 12 len 20]
                if not mem[_1505 + 12 len 20]:
                    require idx < mem[_1166]
                    mem[(32 * idx) + _1166 + 32] = 0
                else:
                    _1516 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1516]
                    mem[_1516 + 32] = address(cd[100])
                    require 1 < mem[_1516]
                    mem[_1516 + 64] = address(cd[68])
                    require 0 < mem[_1516]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_1516] - 1 < mem[_1516]
                    if mem[(32 * mem[_1516] - 1) + _1516 + 44 len 20] != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_1516 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1516 + 100] = s
                    mem[_1516 + 132] = 64
                    mem[_1516 + 164] = mem[_1516]
                    s = 0
                    t = _1516 + 32
                    u = _1516 + 196
                    while s < mem[_1516]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1516 + (32 * mem[_1516]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1760 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1770 = mem[_1760]
                    require mem[_1760] <= test266151307()
                    require _1760 + return_data.size > _1760 + mem[_1760] + 31
                    _1778 = mem[_1760 + mem[_1760]]
                    require mem[_1760 + mem[_1760]] <= test266151307()
                    require (32 * mem[_1760 + mem[_1760]]) + 32 >= 0 and _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32 <= test266151307()
                    mem[64] = _1760 + ceil32(return_data.size) + (32 * mem[_1760 + mem[_1760]]) + 32
                    mem[_1760 + ceil32(return_data.size)] = _1778
                    require return_data.size >= _1770 + (32 * _1778) + 32
                    t = _1760 + _1770 + 32
                    u = _1760 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1778:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1778
                    require idx < mem[_1166]
                    mem[(32 * idx) + _1166 + 32] = mem[_1760 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
        idx = 0
        t = 0
        while idx < mem[_1166]:
            require idx < mem[_1166]
            if mem[(32 * idx) + _1166 + 32] <= t:
                idx = idx + 1
                t = t
                continue 
            require idx < mem[_1166]
            idx = idx + 1
            t = mem[(32 * idx) + _1166 + 32]
            continue 
        idx = 0
        while idx < mem[_1166]:
            require idx < mem[_1166]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _431 = mem[_429]
            require mem[_429] == mem[_429 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_431))
            staticcall address(_431).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _439 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_439] == mem[_439 + 12 len 20]
            if not mem[_439 + 12 len 20]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
            else:
                _486 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_486]
                mem[_486 + 32] = address(cd[68])
                require 1 < mem[_486]
                mem[_486 + 64] = address(cd[100])
                require 0 < mem[_486]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_486] - 1 < mem[_486]
                if mem[(32 * mem[_486] - 1) + _486 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_486 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_486 + 100] = cd[4]
                mem[_486 + 132] = 64
                mem[_486 + 164] = mem[_486]
                s = 0
                t = _486 + 32
                u = _486 + 196
                while s < mem[_486]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _486 + (32 * mem[_486]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _840 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _844 = mem[_840]
                require mem[_840] <= test266151307()
                require _840 + return_data.size > _840 + mem[_840] + 31
                _848 = mem[_840 + mem[_840]]
                require mem[_840 + mem[_840]] <= test266151307()
                require (32 * mem[_840 + mem[_840]]) + 32 >= 0 and _840 + ceil32(return_data.size) + (32 * mem[_840 + mem[_840]]) + 32 <= test266151307()
                mem[64] = _840 + ceil32(return_data.size) + (32 * mem[_840 + mem[_840]]) + 32
                mem[_840 + ceil32(return_data.size)] = _848
                require return_data.size >= _844 + (32 * _848) + 32
                t = _840 + _844 + 32
                u = _840 + ceil32(return_data.size) + 32
                s = 0
                while s < _848:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _848
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_840 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[96]:
            require idx < mem[96]
            if mem[(32 * idx) + 128] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[96]
            idx = idx + 1
            s = mem[(32 * idx) + 128]
            continue 
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            idx = idx + 1
            continue 
        require 0 < ('cd', 36).length
        require ('cd', 36)[0] == address(('cd', 36)[0])
        require ('cd', 36).length <= test266151307()
        _1167 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1482 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1486 = mem[_1482]
                require mem[_1482] == mem[_1482 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1486))
                staticcall address(_1486).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1506 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1506] == mem[_1506 + 12 len 20]
                if not mem[_1506 + 12 len 20]:
                    require idx < mem[_1167]
                    mem[(32 * idx) + _1167 + 32] = 0
                else:
                    _1520 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1520]
                    mem[_1520 + 32] = address(cd[100])
                    require 1 < mem[_1520]
                    mem[_1520 + 64] = address(cd[68])
                    require 0 < mem[_1520]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_1520] - 1 < mem[_1520]
                    if mem[(32 * mem[_1520] - 1) + _1520 + 44 len 20] != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_1520 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1520 + 100] = s
                    mem[_1520 + 132] = 64
                    mem[_1520 + 164] = mem[_1520]
                    s = 0
                    t = _1520 + 32
                    u = _1520 + 196
                    while s < mem[_1520]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1520 + (32 * mem[_1520]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1763 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1772 = mem[_1763]
                    require mem[_1763] <= test266151307()
                    require _1763 + return_data.size > _1763 + mem[_1763] + 31
                    _1780 = mem[_1763 + mem[_1763]]
                    require mem[_1763 + mem[_1763]] <= test266151307()
                    require (32 * mem[_1763 + mem[_1763]]) + 32 >= 0 and _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32 <= test266151307()
                    mem[64] = _1763 + ceil32(return_data.size) + (32 * mem[_1763 + mem[_1763]]) + 32
                    mem[_1763 + ceil32(return_data.size)] = _1780
                    require return_data.size >= _1772 + (32 * _1780) + 32
                    t = _1763 + _1772 + 32
                    u = _1763 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1780:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1780
                    require idx < mem[_1167]
                    mem[(32 * idx) + _1167 + 32] = mem[_1763 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
        else:
            mem[_1167 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1483 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1487 = mem[_1483]
                require mem[_1483] == mem[_1483 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1487))
                staticcall address(_1487).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1507 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1507] == mem[_1507 + 12 len 20]
                if not mem[_1507 + 12 len 20]:
                    require idx < mem[_1167]
                    mem[(32 * idx) + _1167 + 32] = 0
                else:
                    _1524 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1524]
                    mem[_1524 + 32] = address(cd[100])
                    require 1 < mem[_1524]
                    mem[_1524 + 64] = address(cd[68])
                    require 0 < mem[_1524]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_1524] - 1 < mem[_1524]
                    if mem[(32 * mem[_1524] - 1) + _1524 + 44 len 20] != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_1524 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1524 + 100] = s
                    mem[_1524 + 132] = 64
                    mem[_1524 + 164] = mem[_1524]
                    s = 0
                    t = _1524 + 32
                    u = _1524 + 196
                    while s < mem[_1524]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1524 + (32 * mem[_1524]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1766 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1774 = mem[_1766]
                    require mem[_1766] <= test266151307()
                    require _1766 + return_data.size > _1766 + mem[_1766] + 31
                    _1782 = mem[_1766 + mem[_1766]]
                    require mem[_1766 + mem[_1766]] <= test266151307()
                    require (32 * mem[_1766 + mem[_1766]]) + 32 >= 0 and _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32 <= test266151307()
                    mem[64] = _1766 + ceil32(return_data.size) + (32 * mem[_1766 + mem[_1766]]) + 32
                    mem[_1766 + ceil32(return_data.size)] = _1782
                    require return_data.size >= _1774 + (32 * _1782) + 32
                    t = _1766 + _1774 + 32
                    u = _1766 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1782:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1782
                    require idx < mem[_1167]
                    mem[(32 * idx) + _1167 + 32] = mem[_1766 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
        idx = 0
        t = 0
        while idx < mem[_1167]:
            require idx < mem[_1167]
            if mem[(32 * idx) + _1167 + 32] <= t:
                idx = idx + 1
                t = t
                continue 
            require idx < mem[_1167]
            idx = idx + 1
            t = mem[(32 * idx) + _1167 + 32]
            continue 
        idx = 0
        while idx < mem[_1167]:
            require idx < mem[_1167]
            idx = idx + 1
            continue 
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    return address(('cd', 36)[0]), address(('cd', 36)[0]), s, t
}



}
