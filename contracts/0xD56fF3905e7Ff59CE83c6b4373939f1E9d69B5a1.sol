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

function sub_3461a553(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    require ('cd', 36).length <= test266151307()
    mem[256] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 288
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
            _457 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _459 = mem[_457]
            require mem[_457] == mem[_457 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_459))
            staticcall address(_459).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _467 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_467] == mem[_467 + 12 len 20]
            if not mem[_467 + 12 len 20]:
                require idx < mem[256]
                mem[(32 * idx) + 288] = 0
            else:
                _509 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_509]
                mem[_509 + 32] = address(cd[68])
                require 1 < mem[_509]
                mem[_509 + 64] = address(cd[100])
                require 0 < mem[_509]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_509] - 1 < mem[_509]
                if mem[(32 * mem[_509] - 1) + _509 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_509 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_509 + 100] = cd[4]
                mem[_509 + 132] = 64
                mem[_509 + 164] = mem[_509]
                s = 0
                t = _509 + 32
                u = _509 + 196
                while s < mem[_509]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _509 + (32 * mem[_509]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _894 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _899 = mem[_894]
                require mem[_894] <= test266151307()
                require _894 + return_data.size > _894 + mem[_894] + 31
                _903 = mem[_894 + mem[_894]]
                require mem[_894 + mem[_894]] <= test266151307()
                require (32 * mem[_894 + mem[_894]]) + 32 >= 0 and _894 + ceil32(return_data.size) + (32 * mem[_894 + mem[_894]]) + 32 <= test266151307()
                mem[64] = _894 + ceil32(return_data.size) + (32 * mem[_894 + mem[_894]]) + 32
                mem[_894 + ceil32(return_data.size)] = _903
                require return_data.size >= _899 + (32 * _903) + 32
                t = _894 + _899 + 32
                u = _894 + ceil32(return_data.size) + 32
                s = 0
                while s < _903:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _903
                require idx < mem[256]
                mem[(32 * idx) + 288] = mem[_894 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[256]:
            require idx < mem[256]
            if mem[(32 * idx) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[256]
            idx = idx + 1
            s = mem[(32 * idx) + 288]
            continue 
        idx = 0
        while idx < mem[256]:
            require idx < mem[256]
            idx = idx + 1
            continue 
        require 0 < ('cd', 36).length
        require ('cd', 36)[0] == address(('cd', 36)[0])
        require ('cd', 36).length <= test266151307()
        _1251 = mem[64]
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
                _1593 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1597 = mem[_1593]
                require mem[_1593] == mem[_1593 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1597))
                staticcall address(_1597).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1645 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1645] == mem[_1645 + 12 len 20]
                if not mem[_1645 + 12 len 20]:
                    require idx < mem[_1251]
                    mem[(32 * idx) + _1251 + 32] = 0
                else:
                    _1653 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1653]
                    mem[_1653 + 32] = address(cd[100])
                    require 1 < mem[_1653]
                    mem[_1653 + 64] = address(cd[68])
                    require 0 < mem[_1653]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_1653] - 1 < mem[_1653]
                    if mem[(32 * mem[_1653] - 1) + _1653 + 44 len 20] != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_1653 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1653 + 100] = s
                    mem[_1653 + 132] = 64
                    mem[_1653 + 164] = mem[_1653]
                    s = 0
                    t = _1653 + 32
                    u = _1653 + 196
                    while s < mem[_1653]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1653 + (32 * mem[_1653]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1898 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1909 = mem[_1898]
                    require mem[_1898] <= test266151307()
                    require _1898 + return_data.size > _1898 + mem[_1898] + 31
                    _1917 = mem[_1898 + mem[_1898]]
                    require mem[_1898 + mem[_1898]] <= test266151307()
                    require (32 * mem[_1898 + mem[_1898]]) + 32 >= 0 and _1898 + ceil32(return_data.size) + (32 * mem[_1898 + mem[_1898]]) + 32 <= test266151307()
                    mem[64] = _1898 + ceil32(return_data.size) + (32 * mem[_1898 + mem[_1898]]) + 32
                    mem[_1898 + ceil32(return_data.size)] = _1917
                    require return_data.size >= _1909 + (32 * _1917) + 32
                    t = _1898 + _1909 + 32
                    u = _1898 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1917:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1917
                    require idx < mem[_1251]
                    mem[(32 * idx) + _1251 + 32] = mem[_1898 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
        else:
            mem[_1251 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1598 = mem[_1594]
                require mem[_1594] == mem[_1594 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1598))
                staticcall address(_1598).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1646 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1646] == mem[_1646 + 12 len 20]
                if not mem[_1646 + 12 len 20]:
                    require idx < mem[_1251]
                    mem[(32 * idx) + _1251 + 32] = 0
                else:
                    _1657 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1657]
                    mem[_1657 + 32] = address(cd[100])
                    require 1 < mem[_1657]
                    mem[_1657 + 64] = address(cd[68])
                    require 0 < mem[_1657]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_1657] - 1 < mem[_1657]
                    if mem[(32 * mem[_1657] - 1) + _1657 + 44 len 20] != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_1657 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1657 + 100] = s
                    mem[_1657 + 132] = 64
                    mem[_1657 + 164] = mem[_1657]
                    s = 0
                    t = _1657 + 32
                    u = _1657 + 196
                    while s < mem[_1657]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1657 + (32 * mem[_1657]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1901 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1911 = mem[_1901]
                    require mem[_1901] <= test266151307()
                    require _1901 + return_data.size > _1901 + mem[_1901] + 31
                    _1919 = mem[_1901 + mem[_1901]]
                    require mem[_1901 + mem[_1901]] <= test266151307()
                    require (32 * mem[_1901 + mem[_1901]]) + 32 >= 0 and _1901 + ceil32(return_data.size) + (32 * mem[_1901 + mem[_1901]]) + 32 <= test266151307()
                    mem[64] = _1901 + ceil32(return_data.size) + (32 * mem[_1901 + mem[_1901]]) + 32
                    mem[_1901 + ceil32(return_data.size)] = _1919
                    require return_data.size >= _1911 + (32 * _1919) + 32
                    t = _1901 + _1911 + 32
                    u = _1901 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1919:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1919
                    require idx < mem[_1251]
                    mem[(32 * idx) + _1251 + 32] = mem[_1901 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
        idx = 0
        s = 0
        while idx < mem[_1251]:
            require idx < mem[_1251]
            if mem[(32 * idx) + _1251 + 32] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[_1251]
            idx = idx + 1
            s = mem[(32 * idx) + _1251 + 32]
            continue 
        idx = 0
        while idx < mem[_1251]:
            require idx < mem[_1251]
            idx = idx + 1
            continue 
    else:
        mem[288 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _458 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _460 = mem[_458]
            require mem[_458] == mem[_458 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_460))
            staticcall address(_460).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _468 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_468] == mem[_468 + 12 len 20]
            if not mem[_468 + 12 len 20]:
                require idx < mem[256]
                mem[(32 * idx) + 288] = 0
            else:
                _515 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_515]
                mem[_515 + 32] = address(cd[68])
                require 1 < mem[_515]
                mem[_515 + 64] = address(cd[100])
                require 0 < mem[_515]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_515] - 1 < mem[_515]
                if mem[(32 * mem[_515] - 1) + _515 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_515 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_515 + 100] = cd[4]
                mem[_515 + 132] = 64
                mem[_515 + 164] = mem[_515]
                s = 0
                t = _515 + 32
                u = _515 + 196
                while s < mem[_515]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _515 + (32 * mem[_515]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _897 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _901 = mem[_897]
                require mem[_897] <= test266151307()
                require _897 + return_data.size > _897 + mem[_897] + 31
                _905 = mem[_897 + mem[_897]]
                require mem[_897 + mem[_897]] <= test266151307()
                require (32 * mem[_897 + mem[_897]]) + 32 >= 0 and _897 + ceil32(return_data.size) + (32 * mem[_897 + mem[_897]]) + 32 <= test266151307()
                mem[64] = _897 + ceil32(return_data.size) + (32 * mem[_897 + mem[_897]]) + 32
                mem[_897 + ceil32(return_data.size)] = _905
                require return_data.size >= _901 + (32 * _905) + 32
                t = _897 + _901 + 32
                u = _897 + ceil32(return_data.size) + 32
                s = 0
                while s < _905:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _905
                require idx < mem[256]
                mem[(32 * idx) + 288] = mem[_897 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[256]:
            require idx < mem[256]
            if mem[(32 * idx) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[256]
            idx = idx + 1
            s = mem[(32 * idx) + 288]
            continue 
        idx = 0
        while idx < mem[256]:
            require idx < mem[256]
            idx = idx + 1
            continue 
        require 0 < ('cd', 36).length
        require ('cd', 36)[0] == address(('cd', 36)[0])
        require ('cd', 36).length <= test266151307()
        _1252 = mem[64]
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
                _1595 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1599 = mem[_1595]
                require mem[_1595] == mem[_1595 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1599))
                staticcall address(_1599).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1647] == mem[_1647 + 12 len 20]
                if not mem[_1647 + 12 len 20]:
                    require idx < mem[_1252]
                    mem[(32 * idx) + _1252 + 32] = 0
                else:
                    _1661 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1661]
                    mem[_1661 + 32] = address(cd[100])
                    require 1 < mem[_1661]
                    mem[_1661 + 64] = address(cd[68])
                    require 0 < mem[_1661]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_1661] - 1 < mem[_1661]
                    if mem[(32 * mem[_1661] - 1) + _1661 + 44 len 20] != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_1661 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1661 + 100] = s
                    mem[_1661 + 132] = 64
                    mem[_1661 + 164] = mem[_1661]
                    s = 0
                    t = _1661 + 32
                    u = _1661 + 196
                    while s < mem[_1661]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1661 + (32 * mem[_1661]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1904 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1913 = mem[_1904]
                    require mem[_1904] <= test266151307()
                    require _1904 + return_data.size > _1904 + mem[_1904] + 31
                    _1921 = mem[_1904 + mem[_1904]]
                    require mem[_1904 + mem[_1904]] <= test266151307()
                    require (32 * mem[_1904 + mem[_1904]]) + 32 >= 0 and _1904 + ceil32(return_data.size) + (32 * mem[_1904 + mem[_1904]]) + 32 <= test266151307()
                    mem[64] = _1904 + ceil32(return_data.size) + (32 * mem[_1904 + mem[_1904]]) + 32
                    mem[_1904 + ceil32(return_data.size)] = _1921
                    require return_data.size >= _1913 + (32 * _1921) + 32
                    t = _1904 + _1913 + 32
                    u = _1904 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1921:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1921
                    require idx < mem[_1252]
                    mem[(32 * idx) + _1252 + 32] = mem[_1904 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
        else:
            mem[_1252 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1600 = mem[_1596]
                require mem[_1596] == mem[_1596 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1600))
                staticcall address(_1600).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1648] == mem[_1648 + 12 len 20]
                if not mem[_1648 + 12 len 20]:
                    require idx < mem[_1252]
                    mem[(32 * idx) + _1252 + 32] = 0
                else:
                    _1665 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1665]
                    mem[_1665 + 32] = address(cd[100])
                    require 1 < mem[_1665]
                    mem[_1665 + 64] = address(cd[68])
                    require 0 < mem[_1665]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_1665] - 1 < mem[_1665]
                    if mem[(32 * mem[_1665] - 1) + _1665 + 44 len 20] != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_1665 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1665 + 100] = s
                    mem[_1665 + 132] = 64
                    mem[_1665 + 164] = mem[_1665]
                    s = 0
                    t = _1665 + 32
                    u = _1665 + 196
                    while s < mem[_1665]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1665 + (32 * mem[_1665]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1907 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1915 = mem[_1907]
                    require mem[_1907] <= test266151307()
                    require _1907 + return_data.size > _1907 + mem[_1907] + 31
                    _1923 = mem[_1907 + mem[_1907]]
                    require mem[_1907 + mem[_1907]] <= test266151307()
                    require (32 * mem[_1907 + mem[_1907]]) + 32 >= 0 and _1907 + ceil32(return_data.size) + (32 * mem[_1907 + mem[_1907]]) + 32 <= test266151307()
                    mem[64] = _1907 + ceil32(return_data.size) + (32 * mem[_1907 + mem[_1907]]) + 32
                    mem[_1907 + ceil32(return_data.size)] = _1923
                    require return_data.size >= _1915 + (32 * _1923) + 32
                    t = _1907 + _1915 + 32
                    u = _1907 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1923:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1923
                    require idx < mem[_1252]
                    mem[(32 * idx) + _1252 + 32] = mem[_1907 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
        idx = 0
        s = 0
        while idx < mem[_1252]:
            require idx < mem[_1252]
            if mem[(32 * idx) + _1252 + 32] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[_1252]
            idx = idx + 1
            s = mem[(32 * idx) + _1252 + 32]
            continue 
        idx = 0
        while idx < mem[_1252]:
            require idx < mem[_1252]
            idx = idx + 1
            continue 
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    return cd[4], s, address(('cd', 36)[0]), address(('cd', 36)[0]), 0
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
        mem[_411 + ceil32(return_data.size) + 132] = cd[(arg5 + 36)]
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
        call address(cd[(arg5 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _408, cd[(arg5 + 36)], 160, address(this.address), block.timestamp, mem[_411 + ceil32(return_data.size) + 260 len (32 * mem[_411]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_411 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _411 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _540 = mem[_411 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _408) >> 32
        require mem[_411 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _408) >> 32 <= test266151307()
        require _411 + ceil32(return_data.size) + return_data.size + 96 > _411 + ceil32(return_data.size) + mem[_411 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _408) >> 32 + 127
        _542 = mem[_411 + ceil32(return_data.size) + mem[_411 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _408) >> 32 + 96]
        require mem[_411 + ceil32(return_data.size) + mem[_411 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _408) >> 32 + 96] <= test266151307()
        require (32 * mem[_411 + ceil32(return_data.size) + mem[_411 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _408) >> 32 + 96]) + 32 >= 0 and _411 + (2 * ceil32(return_data.size)) + (32 * mem[_411 + ceil32(return_data.size) + mem[_411 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _408) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = _411 + (2 * ceil32(return_data.size)) + (32 * mem[_411 + ceil32(return_data.size) + mem[_411 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _408) >> 32 + 96]) + 128
        mem[_411 + (2 * ceil32(return_data.size)) + 96] = _542
        require return_data.size >= _540 + (32 * _542) + 32
        mem[_411 + (2 * ceil32(return_data.size)) + 128 len 32 * _542] = mem[_411 + ceil32(return_data.size) + _540 + 128 len 32 * _542]
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
        call address(cd[(arg5 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _407, 1, 160, address(this.address), block.timestamp, mem[_409 + ceil32(return_data.size) + 260 len (32 * mem[_409]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_409 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _409 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _539 = mem[_409 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _407) >> 32
        require mem[_409 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _407) >> 32 <= test266151307()
        require _409 + ceil32(return_data.size) + return_data.size + 96 > _409 + ceil32(return_data.size) + mem[_409 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _407) >> 32 + 127
        _541 = mem[_409 + ceil32(return_data.size) + mem[_409 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _407) >> 32 + 96]
        require mem[_409 + ceil32(return_data.size) + mem[_409 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _407) >> 32 + 96] <= test266151307()
        require (32 * mem[_409 + ceil32(return_data.size) + mem[_409 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _407) >> 32 + 96]) + 32 >= 0 and _409 + (2 * ceil32(return_data.size)) + (32 * mem[_409 + ceil32(return_data.size) + mem[_409 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _407) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = _409 + (2 * ceil32(return_data.size)) + (32 * mem[_409 + ceil32(return_data.size) + mem[_409 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _407) >> 32 + 96]) + 128
        mem[_409 + (2 * ceil32(return_data.size)) + 96] = _541
        require return_data.size >= _539 + (32 * _541) + 32
        mem[_409 + (2 * ceil32(return_data.size)) + 128 len 32 * _541] = mem[_409 + ceil32(return_data.size) + _539 + 128 len 32 * _541]
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
        mem[_680 + ceil32(return_data.size) + 132] = cd[(arg5 + 36)]
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
        call address(cd[(arg5 + 132)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _680 + ceil32(return_data.size) + (32 * mem[_680]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _735 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _736 = mem[_735]
        require mem[_735] <= test266151307()
        require _735 + return_data.size > _735 + mem[_735] + 31
        _737 = mem[_735 + mem[_735]]
        require mem[_735 + mem[_735]] <= test266151307()
        require (32 * mem[_735 + mem[_735]]) + 32 >= 0 and _735 + ceil32(return_data.size) + (32 * mem[_735 + mem[_735]]) + 32 <= test266151307()
        mem[64] = _735 + ceil32(return_data.size) + (32 * mem[_735 + mem[_735]]) + 32
        mem[_735 + ceil32(return_data.size)] = _737
        require return_data.size >= _736 + (32 * _737) + 32
        mem[_735 + ceil32(return_data.size) + 32 len 32 * _737] = mem[_735 + _736 + 32 len 32 * _737]
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

function sub_77c6571a(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    require ('cd', 36).length <= test266151307()
    mem[256] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 288
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
            _1025 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1027 = mem[_1025]
            require mem[_1025] == mem[_1025 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_1027))
            staticcall address(_1027).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1035 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1035] == mem[_1035 + 12 len 20]
            if not mem[_1035 + 12 len 20]:
                require idx < mem[256]
                mem[(32 * idx) + 288] = 0
            else:
                _1077 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1077]
                mem[_1077 + 32] = address(cd[68])
                require 1 < mem[_1077]
                mem[_1077 + 64] = address(cd[100])
                require 0 < mem[_1077]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_1077] - 1 < mem[_1077]
                if mem[(32 * mem[_1077] - 1) + _1077 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_1077 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1077 + 100] = cd[4]
                mem[_1077 + 132] = 64
                mem[_1077 + 164] = mem[_1077]
                s = 0
                t = _1077 + 32
                u = _1077 + 196
                while s < mem[_1077]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1077 + (32 * mem[_1077]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2030 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2035 = mem[_2030]
                require mem[_2030] <= test266151307()
                require _2030 + return_data.size > _2030 + mem[_2030] + 31
                _2039 = mem[_2030 + mem[_2030]]
                require mem[_2030 + mem[_2030]] <= test266151307()
                require (32 * mem[_2030 + mem[_2030]]) + 32 >= 0 and _2030 + ceil32(return_data.size) + (32 * mem[_2030 + mem[_2030]]) + 32 <= test266151307()
                mem[64] = _2030 + ceil32(return_data.size) + (32 * mem[_2030 + mem[_2030]]) + 32
                mem[_2030 + ceil32(return_data.size)] = _2039
                require return_data.size >= _2035 + (32 * _2039) + 32
                t = _2030 + _2035 + 32
                u = _2030 + ceil32(return_data.size) + 32
                s = 0
                while s < _2039:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _2039
                require idx < mem[256]
                mem[(32 * idx) + 288] = mem[_2030 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[256]:
            require idx < mem[256]
            if mem[(32 * idx) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[256]
            idx = idx + 1
            s = mem[(32 * idx) + 288]
            continue 
        idx = 0
        while idx < mem[256]:
            require idx < mem[256]
            idx = idx + 1
            continue 
        require 0 < ('cd', 36).length
        require ('cd', 36)[0] == address(('cd', 36)[0])
        require ('cd', 36).length <= test266151307()
        _2955 = mem[64]
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
                _3865 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3869 = mem[_3865]
                require mem[_3865] == mem[_3865 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[132])
                require ext_code.size(address(_3869))
                staticcall address(_3869).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[132])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3885 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3885] == mem[_3885 + 12 len 20]
                if not mem[_3885 + 12 len 20]:
                    require idx < mem[_2955]
                    mem[(32 * idx) + _2955 + 32] = 0
                else:
                    _3967 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3967]
                    mem[_3967 + 32] = address(cd[100])
                    require 1 < mem[_3967]
                    mem[_3967 + 64] = address(cd[132])
                    require 0 < mem[_3967]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_3967] - 1 < mem[_3967]
                    if mem[(32 * mem[_3967] - 1) + _3967 + 44 len 20] != address(cd[132]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_3967 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3967 + 100] = s
                    mem[_3967 + 132] = 64
                    mem[_3967 + 164] = mem[_3967]
                    s = 0
                    t = _3967 + 32
                    u = _3967 + 196
                    while s < mem[_3967]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3967 + (32 * mem[_3967]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4738 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4749 = mem[_4738]
                    require mem[_4738] <= test266151307()
                    require _4738 + return_data.size > _4738 + mem[_4738] + 31
                    _4757 = mem[_4738 + mem[_4738]]
                    require mem[_4738 + mem[_4738]] <= test266151307()
                    require (32 * mem[_4738 + mem[_4738]]) + 32 >= 0 and _4738 + ceil32(return_data.size) + (32 * mem[_4738 + mem[_4738]]) + 32 <= test266151307()
                    mem[64] = _4738 + ceil32(return_data.size) + (32 * mem[_4738 + mem[_4738]]) + 32
                    mem[_4738 + ceil32(return_data.size)] = _4757
                    require return_data.size >= _4749 + (32 * _4757) + 32
                    t = _4738 + _4749 + 32
                    u = _4738 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4757:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _4757
                    require idx < mem[_2955]
                    mem[(32 * idx) + _2955 + 32] = mem[_4738 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < mem[_2955]:
                require idx < mem[_2955]
                if mem[(32 * idx) + _2955 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_2955]
                idx = idx + 1
                s = mem[(32 * idx) + _2955 + 32]
                continue 
            idx = 0
            while idx < mem[_2955]:
                require idx < mem[_2955]
                idx = idx + 1
                continue 
            require 0 < ('cd', 36).length
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require ('cd', 36).length <= test266151307()
            _5453 = mem[64]
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
                    _6137 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6145 = mem[_6137]
                    require mem[_6137] == mem[_6137 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_6145))
                    staticcall address(_6145).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[132]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6241] == mem[_6241 + 12 len 20]
                    if not mem[_6241 + 12 len 20]:
                        require idx < mem[_5453]
                        mem[(32 * idx) + _5453 + 32] = 0
                    else:
                        _6257 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_6257]
                        mem[_6257 + 32] = address(cd[132])
                        require 1 < mem[_6257]
                        mem[_6257 + 64] = address(cd[68])
                        require 0 < mem[_6257]
                        if address(cd[132]) != address(cd[132]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        require mem[_6257] - 1 < mem[_6257]
                        if mem[(32 * mem[_6257] - 1) + _6257 + 44 len 20] != address(cd[68]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        mem[_6257 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6257 + 100] = s
                        mem[_6257 + 132] = 64
                        mem[_6257 + 164] = mem[_6257]
                        s = 0
                        t = _6257 + 32
                        u = _6257 + 196
                        while s < mem[_6257]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6257 + (32 * mem[_6257]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6746 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6769 = mem[_6746]
                        require mem[_6746] <= test266151307()
                        require _6746 + return_data.size > _6746 + mem[_6746] + 31
                        _6785 = mem[_6746 + mem[_6746]]
                        require mem[_6746 + mem[_6746]] <= test266151307()
                        require (32 * mem[_6746 + mem[_6746]]) + 32 >= 0 and _6746 + ceil32(return_data.size) + (32 * mem[_6746 + mem[_6746]]) + 32 <= test266151307()
                        mem[64] = _6746 + ceil32(return_data.size) + (32 * mem[_6746 + mem[_6746]]) + 32
                        mem[_6746 + ceil32(return_data.size)] = _6785
                        require return_data.size >= _6769 + (32 * _6785) + 32
                        t = _6746 + _6769 + 32
                        u = _6746 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _6785:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _6785
                        require idx < mem[_5453]
                        mem[(32 * idx) + _5453 + 32] = mem[_6746 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            else:
                mem[_5453 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6146 = mem[_6138]
                    require mem[_6138] == mem[_6138 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_6146))
                    staticcall address(_6146).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[132]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6242 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6242] == mem[_6242 + 12 len 20]
                    if not mem[_6242 + 12 len 20]:
                        require idx < mem[_5453]
                        mem[(32 * idx) + _5453 + 32] = 0
                    else:
                        _6261 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_6261]
                        mem[_6261 + 32] = address(cd[132])
                        require 1 < mem[_6261]
                        mem[_6261 + 64] = address(cd[68])
                        require 0 < mem[_6261]
                        if address(cd[132]) != address(cd[132]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        require mem[_6261] - 1 < mem[_6261]
                        if mem[(32 * mem[_6261] - 1) + _6261 + 44 len 20] != address(cd[68]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        mem[_6261 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6261 + 100] = s
                        mem[_6261 + 132] = 64
                        mem[_6261 + 164] = mem[_6261]
                        s = 0
                        t = _6261 + 32
                        u = _6261 + 196
                        while s < mem[_6261]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6261 + (32 * mem[_6261]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6749 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6771 = mem[_6749]
                        require mem[_6749] <= test266151307()
                        require _6749 + return_data.size > _6749 + mem[_6749] + 31
                        _6787 = mem[_6749 + mem[_6749]]
                        require mem[_6749 + mem[_6749]] <= test266151307()
                        require (32 * mem[_6749 + mem[_6749]]) + 32 >= 0 and _6749 + ceil32(return_data.size) + (32 * mem[_6749 + mem[_6749]]) + 32 <= test266151307()
                        mem[64] = _6749 + ceil32(return_data.size) + (32 * mem[_6749 + mem[_6749]]) + 32
                        mem[_6749 + ceil32(return_data.size)] = _6787
                        require return_data.size >= _6771 + (32 * _6787) + 32
                        t = _6749 + _6771 + 32
                        u = _6749 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _6787:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _6787
                        require idx < mem[_5453]
                        mem[(32 * idx) + _5453 + 32] = mem[_6749 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            idx = 0
            s = 0
            while idx < mem[_5453]:
                require idx < mem[_5453]
                if mem[(32 * idx) + _5453 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_5453]
                idx = idx + 1
                s = mem[(32 * idx) + _5453 + 32]
                continue 
            idx = 0
            while idx < mem[_5453]:
                require idx < mem[_5453]
                idx = idx + 1
                continue 
        else:
            mem[_2955 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3866 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3870 = mem[_3866]
                require mem[_3866] == mem[_3866 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[132])
                require ext_code.size(address(_3870))
                staticcall address(_3870).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[132])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3886 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3886] == mem[_3886 + 12 len 20]
                if not mem[_3886 + 12 len 20]:
                    require idx < mem[_2955]
                    mem[(32 * idx) + _2955 + 32] = 0
                else:
                    _3973 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3973]
                    mem[_3973 + 32] = address(cd[100])
                    require 1 < mem[_3973]
                    mem[_3973 + 64] = address(cd[132])
                    require 0 < mem[_3973]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_3973] - 1 < mem[_3973]
                    if mem[(32 * mem[_3973] - 1) + _3973 + 44 len 20] != address(cd[132]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_3973 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3973 + 100] = s
                    mem[_3973 + 132] = 64
                    mem[_3973 + 164] = mem[_3973]
                    s = 0
                    t = _3973 + 32
                    u = _3973 + 196
                    while s < mem[_3973]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3973 + (32 * mem[_3973]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4741 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4751 = mem[_4741]
                    require mem[_4741] <= test266151307()
                    require _4741 + return_data.size > _4741 + mem[_4741] + 31
                    _4759 = mem[_4741 + mem[_4741]]
                    require mem[_4741 + mem[_4741]] <= test266151307()
                    require (32 * mem[_4741 + mem[_4741]]) + 32 >= 0 and _4741 + ceil32(return_data.size) + (32 * mem[_4741 + mem[_4741]]) + 32 <= test266151307()
                    mem[64] = _4741 + ceil32(return_data.size) + (32 * mem[_4741 + mem[_4741]]) + 32
                    mem[_4741 + ceil32(return_data.size)] = _4759
                    require return_data.size >= _4751 + (32 * _4759) + 32
                    t = _4741 + _4751 + 32
                    u = _4741 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4759:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _4759
                    require idx < mem[_2955]
                    mem[(32 * idx) + _2955 + 32] = mem[_4741 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < mem[_2955]:
                require idx < mem[_2955]
                if mem[(32 * idx) + _2955 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_2955]
                idx = idx + 1
                s = mem[(32 * idx) + _2955 + 32]
                continue 
            idx = 0
            while idx < mem[_2955]:
                require idx < mem[_2955]
                idx = idx + 1
                continue 
            require 0 < ('cd', 36).length
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require ('cd', 36).length <= test266151307()
            _5454 = mem[64]
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
                    _6139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6147 = mem[_6139]
                    require mem[_6139] == mem[_6139 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_6147))
                    staticcall address(_6147).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[132]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6243 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6243] == mem[_6243 + 12 len 20]
                    if not mem[_6243 + 12 len 20]:
                        require idx < mem[_5454]
                        mem[(32 * idx) + _5454 + 32] = 0
                    else:
                        _6265 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_6265]
                        mem[_6265 + 32] = address(cd[132])
                        require 1 < mem[_6265]
                        mem[_6265 + 64] = address(cd[68])
                        require 0 < mem[_6265]
                        if address(cd[132]) != address(cd[132]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        require mem[_6265] - 1 < mem[_6265]
                        if mem[(32 * mem[_6265] - 1) + _6265 + 44 len 20] != address(cd[68]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        mem[_6265 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6265 + 100] = s
                        mem[_6265 + 132] = 64
                        mem[_6265 + 164] = mem[_6265]
                        s = 0
                        t = _6265 + 32
                        u = _6265 + 196
                        while s < mem[_6265]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6265 + (32 * mem[_6265]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6752 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6773 = mem[_6752]
                        require mem[_6752] <= test266151307()
                        require _6752 + return_data.size > _6752 + mem[_6752] + 31
                        _6789 = mem[_6752 + mem[_6752]]
                        require mem[_6752 + mem[_6752]] <= test266151307()
                        require (32 * mem[_6752 + mem[_6752]]) + 32 >= 0 and _6752 + ceil32(return_data.size) + (32 * mem[_6752 + mem[_6752]]) + 32 <= test266151307()
                        mem[64] = _6752 + ceil32(return_data.size) + (32 * mem[_6752 + mem[_6752]]) + 32
                        mem[_6752 + ceil32(return_data.size)] = _6789
                        require return_data.size >= _6773 + (32 * _6789) + 32
                        t = _6752 + _6773 + 32
                        u = _6752 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _6789:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _6789
                        require idx < mem[_5454]
                        mem[(32 * idx) + _5454 + 32] = mem[_6752 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            else:
                mem[_5454 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6148 = mem[_6140]
                    require mem[_6140] == mem[_6140 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_6148))
                    staticcall address(_6148).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[132]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6244] == mem[_6244 + 12 len 20]
                    if not mem[_6244 + 12 len 20]:
                        require idx < mem[_5454]
                        mem[(32 * idx) + _5454 + 32] = 0
                    else:
                        _6269 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_6269]
                        mem[_6269 + 32] = address(cd[132])
                        require 1 < mem[_6269]
                        mem[_6269 + 64] = address(cd[68])
                        require 0 < mem[_6269]
                        if address(cd[132]) != address(cd[132]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        require mem[_6269] - 1 < mem[_6269]
                        if mem[(32 * mem[_6269] - 1) + _6269 + 44 len 20] != address(cd[68]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        mem[_6269 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6269 + 100] = s
                        mem[_6269 + 132] = 64
                        mem[_6269 + 164] = mem[_6269]
                        s = 0
                        t = _6269 + 32
                        u = _6269 + 196
                        while s < mem[_6269]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6269 + (32 * mem[_6269]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6755 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6775 = mem[_6755]
                        require mem[_6755] <= test266151307()
                        require _6755 + return_data.size > _6755 + mem[_6755] + 31
                        _6791 = mem[_6755 + mem[_6755]]
                        require mem[_6755 + mem[_6755]] <= test266151307()
                        require (32 * mem[_6755 + mem[_6755]]) + 32 >= 0 and _6755 + ceil32(return_data.size) + (32 * mem[_6755 + mem[_6755]]) + 32 <= test266151307()
                        mem[64] = _6755 + ceil32(return_data.size) + (32 * mem[_6755 + mem[_6755]]) + 32
                        mem[_6755 + ceil32(return_data.size)] = _6791
                        require return_data.size >= _6775 + (32 * _6791) + 32
                        t = _6755 + _6775 + 32
                        u = _6755 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _6791:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _6791
                        require idx < mem[_5454]
                        mem[(32 * idx) + _5454 + 32] = mem[_6755 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            idx = 0
            s = 0
            while idx < mem[_5454]:
                require idx < mem[_5454]
                if mem[(32 * idx) + _5454 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_5454]
                idx = idx + 1
                s = mem[(32 * idx) + _5454 + 32]
                continue 
            idx = 0
            while idx < mem[_5454]:
                require idx < mem[_5454]
                idx = idx + 1
                continue 
    else:
        mem[288 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1026 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1028 = mem[_1026]
            require mem[_1026] == mem[_1026 + 12 len 20]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(cd[100])
            require ext_code.size(address(_1028))
            staticcall address(_1028).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1036 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1036] == mem[_1036 + 12 len 20]
            if not mem[_1036 + 12 len 20]:
                require idx < mem[256]
                mem[(32 * idx) + 288] = 0
            else:
                _1083 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1083]
                mem[_1083 + 32] = address(cd[68])
                require 1 < mem[_1083]
                mem[_1083 + 64] = address(cd[100])
                require 0 < mem[_1083]
                if address(cd[68]) != address(cd[68]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_1083] - 1 < mem[_1083]
                if mem[(32 * mem[_1083] - 1) + _1083 + 44 len 20] != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_1083 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1083 + 100] = cd[4]
                mem[_1083 + 132] = 64
                mem[_1083 + 164] = mem[_1083]
                s = 0
                t = _1083 + 32
                u = _1083 + 196
                while s < mem[_1083]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1083 + (32 * mem[_1083]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2033 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2037 = mem[_2033]
                require mem[_2033] <= test266151307()
                require _2033 + return_data.size > _2033 + mem[_2033] + 31
                _2041 = mem[_2033 + mem[_2033]]
                require mem[_2033 + mem[_2033]] <= test266151307()
                require (32 * mem[_2033 + mem[_2033]]) + 32 >= 0 and _2033 + ceil32(return_data.size) + (32 * mem[_2033 + mem[_2033]]) + 32 <= test266151307()
                mem[64] = _2033 + ceil32(return_data.size) + (32 * mem[_2033 + mem[_2033]]) + 32
                mem[_2033 + ceil32(return_data.size)] = _2041
                require return_data.size >= _2037 + (32 * _2041) + 32
                t = _2033 + _2037 + 32
                u = _2033 + ceil32(return_data.size) + 32
                s = 0
                while s < _2041:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _2041
                require idx < mem[256]
                mem[(32 * idx) + 288] = mem[_2033 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[256]:
            require idx < mem[256]
            if mem[(32 * idx) + 288] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[256]
            idx = idx + 1
            s = mem[(32 * idx) + 288]
            continue 
        idx = 0
        while idx < mem[256]:
            require idx < mem[256]
            idx = idx + 1
            continue 
        require 0 < ('cd', 36).length
        require ('cd', 36)[0] == address(('cd', 36)[0])
        require ('cd', 36).length <= test266151307()
        _2956 = mem[64]
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
                _3867 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3871 = mem[_3867]
                require mem[_3867] == mem[_3867 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[132])
                require ext_code.size(address(_3871))
                staticcall address(_3871).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[132])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3887 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3887] == mem[_3887 + 12 len 20]
                if not mem[_3887 + 12 len 20]:
                    require idx < mem[_2956]
                    mem[(32 * idx) + _2956 + 32] = 0
                else:
                    _3979 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3979]
                    mem[_3979 + 32] = address(cd[100])
                    require 1 < mem[_3979]
                    mem[_3979 + 64] = address(cd[132])
                    require 0 < mem[_3979]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_3979] - 1 < mem[_3979]
                    if mem[(32 * mem[_3979] - 1) + _3979 + 44 len 20] != address(cd[132]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_3979 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3979 + 100] = s
                    mem[_3979 + 132] = 64
                    mem[_3979 + 164] = mem[_3979]
                    s = 0
                    t = _3979 + 32
                    u = _3979 + 196
                    while s < mem[_3979]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3979 + (32 * mem[_3979]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4744 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4753 = mem[_4744]
                    require mem[_4744] <= test266151307()
                    require _4744 + return_data.size > _4744 + mem[_4744] + 31
                    _4761 = mem[_4744 + mem[_4744]]
                    require mem[_4744 + mem[_4744]] <= test266151307()
                    require (32 * mem[_4744 + mem[_4744]]) + 32 >= 0 and _4744 + ceil32(return_data.size) + (32 * mem[_4744 + mem[_4744]]) + 32 <= test266151307()
                    mem[64] = _4744 + ceil32(return_data.size) + (32 * mem[_4744 + mem[_4744]]) + 32
                    mem[_4744 + ceil32(return_data.size)] = _4761
                    require return_data.size >= _4753 + (32 * _4761) + 32
                    t = _4744 + _4753 + 32
                    u = _4744 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4761:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _4761
                    require idx < mem[_2956]
                    mem[(32 * idx) + _2956 + 32] = mem[_4744 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < mem[_2956]:
                require idx < mem[_2956]
                if mem[(32 * idx) + _2956 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_2956]
                idx = idx + 1
                s = mem[(32 * idx) + _2956 + 32]
                continue 
            idx = 0
            while idx < mem[_2956]:
                require idx < mem[_2956]
                idx = idx + 1
                continue 
            require 0 < ('cd', 36).length
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require ('cd', 36).length <= test266151307()
            _5455 = mem[64]
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
                    _6141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6149 = mem[_6141]
                    require mem[_6141] == mem[_6141 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_6149))
                    staticcall address(_6149).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[132]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6245] == mem[_6245 + 12 len 20]
                    if not mem[_6245 + 12 len 20]:
                        require idx < mem[_5455]
                        mem[(32 * idx) + _5455 + 32] = 0
                    else:
                        _6273 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_6273]
                        mem[_6273 + 32] = address(cd[132])
                        require 1 < mem[_6273]
                        mem[_6273 + 64] = address(cd[68])
                        require 0 < mem[_6273]
                        if address(cd[132]) != address(cd[132]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        require mem[_6273] - 1 < mem[_6273]
                        if mem[(32 * mem[_6273] - 1) + _6273 + 44 len 20] != address(cd[68]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        mem[_6273 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6273 + 100] = s
                        mem[_6273 + 132] = 64
                        mem[_6273 + 164] = mem[_6273]
                        s = 0
                        t = _6273 + 32
                        u = _6273 + 196
                        while s < mem[_6273]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6273 + (32 * mem[_6273]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6758 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6777 = mem[_6758]
                        require mem[_6758] <= test266151307()
                        require _6758 + return_data.size > _6758 + mem[_6758] + 31
                        _6793 = mem[_6758 + mem[_6758]]
                        require mem[_6758 + mem[_6758]] <= test266151307()
                        require (32 * mem[_6758 + mem[_6758]]) + 32 >= 0 and _6758 + ceil32(return_data.size) + (32 * mem[_6758 + mem[_6758]]) + 32 <= test266151307()
                        mem[64] = _6758 + ceil32(return_data.size) + (32 * mem[_6758 + mem[_6758]]) + 32
                        mem[_6758 + ceil32(return_data.size)] = _6793
                        require return_data.size >= _6777 + (32 * _6793) + 32
                        t = _6758 + _6777 + 32
                        u = _6758 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _6793:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _6793
                        require idx < mem[_5455]
                        mem[(32 * idx) + _5455 + 32] = mem[_6758 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            else:
                mem[_5455 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6150 = mem[_6142]
                    require mem[_6142] == mem[_6142 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_6150))
                    staticcall address(_6150).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[132]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6246 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6246] == mem[_6246 + 12 len 20]
                    if not mem[_6246 + 12 len 20]:
                        require idx < mem[_5455]
                        mem[(32 * idx) + _5455 + 32] = 0
                    else:
                        _6277 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_6277]
                        mem[_6277 + 32] = address(cd[132])
                        require 1 < mem[_6277]
                        mem[_6277 + 64] = address(cd[68])
                        require 0 < mem[_6277]
                        if address(cd[132]) != address(cd[132]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        require mem[_6277] - 1 < mem[_6277]
                        if mem[(32 * mem[_6277] - 1) + _6277 + 44 len 20] != address(cd[68]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        mem[_6277 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6277 + 100] = s
                        mem[_6277 + 132] = 64
                        mem[_6277 + 164] = mem[_6277]
                        s = 0
                        t = _6277 + 32
                        u = _6277 + 196
                        while s < mem[_6277]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6277 + (32 * mem[_6277]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6761 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6779 = mem[_6761]
                        require mem[_6761] <= test266151307()
                        require _6761 + return_data.size > _6761 + mem[_6761] + 31
                        _6795 = mem[_6761 + mem[_6761]]
                        require mem[_6761 + mem[_6761]] <= test266151307()
                        require (32 * mem[_6761 + mem[_6761]]) + 32 >= 0 and _6761 + ceil32(return_data.size) + (32 * mem[_6761 + mem[_6761]]) + 32 <= test266151307()
                        mem[64] = _6761 + ceil32(return_data.size) + (32 * mem[_6761 + mem[_6761]]) + 32
                        mem[_6761 + ceil32(return_data.size)] = _6795
                        require return_data.size >= _6779 + (32 * _6795) + 32
                        t = _6761 + _6779 + 32
                        u = _6761 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _6795:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _6795
                        require idx < mem[_5455]
                        mem[(32 * idx) + _5455 + 32] = mem[_6761 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            idx = 0
            s = 0
            while idx < mem[_5455]:
                require idx < mem[_5455]
                if mem[(32 * idx) + _5455 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_5455]
                idx = idx + 1
                s = mem[(32 * idx) + _5455 + 32]
                continue 
            idx = 0
            while idx < mem[_5455]:
                require idx < mem[_5455]
                idx = idx + 1
                continue 
        else:
            mem[_2956 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3868 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3872 = mem[_3868]
                require mem[_3868] == mem[_3868 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[132])
                require ext_code.size(address(_3872))
                staticcall address(_3872).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[132])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3888 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3888] == mem[_3888 + 12 len 20]
                if not mem[_3888 + 12 len 20]:
                    require idx < mem[_2956]
                    mem[(32 * idx) + _2956 + 32] = 0
                else:
                    _3985 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3985]
                    mem[_3985 + 32] = address(cd[100])
                    require 1 < mem[_3985]
                    mem[_3985 + 64] = address(cd[132])
                    require 0 < mem[_3985]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_3985] - 1 < mem[_3985]
                    if mem[(32 * mem[_3985] - 1) + _3985 + 44 len 20] != address(cd[132]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_3985 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3985 + 100] = s
                    mem[_3985 + 132] = 64
                    mem[_3985 + 164] = mem[_3985]
                    s = 0
                    t = _3985 + 32
                    u = _3985 + 196
                    while s < mem[_3985]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3985 + (32 * mem[_3985]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4747 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4755 = mem[_4747]
                    require mem[_4747] <= test266151307()
                    require _4747 + return_data.size > _4747 + mem[_4747] + 31
                    _4763 = mem[_4747 + mem[_4747]]
                    require mem[_4747 + mem[_4747]] <= test266151307()
                    require (32 * mem[_4747 + mem[_4747]]) + 32 >= 0 and _4747 + ceil32(return_data.size) + (32 * mem[_4747 + mem[_4747]]) + 32 <= test266151307()
                    mem[64] = _4747 + ceil32(return_data.size) + (32 * mem[_4747 + mem[_4747]]) + 32
                    mem[_4747 + ceil32(return_data.size)] = _4763
                    require return_data.size >= _4755 + (32 * _4763) + 32
                    t = _4747 + _4755 + 32
                    u = _4747 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4763:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _4763
                    require idx < mem[_2956]
                    mem[(32 * idx) + _2956 + 32] = mem[_4747 + ceil32(return_data.size) + 64]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < mem[_2956]:
                require idx < mem[_2956]
                if mem[(32 * idx) + _2956 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_2956]
                idx = idx + 1
                s = mem[(32 * idx) + _2956 + 32]
                continue 
            idx = 0
            while idx < mem[_2956]:
                require idx < mem[_2956]
                idx = idx + 1
                continue 
            require 0 < ('cd', 36).length
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require ('cd', 36).length <= test266151307()
            _5456 = mem[64]
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
                    _6143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6151 = mem[_6143]
                    require mem[_6143] == mem[_6143 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_6151))
                    staticcall address(_6151).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[132]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6247] == mem[_6247 + 12 len 20]
                    if not mem[_6247 + 12 len 20]:
                        require idx < mem[_5456]
                        mem[(32 * idx) + _5456 + 32] = 0
                    else:
                        _6281 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_6281]
                        mem[_6281 + 32] = address(cd[132])
                        require 1 < mem[_6281]
                        mem[_6281 + 64] = address(cd[68])
                        require 0 < mem[_6281]
                        if address(cd[132]) != address(cd[132]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        require mem[_6281] - 1 < mem[_6281]
                        if mem[(32 * mem[_6281] - 1) + _6281 + 44 len 20] != address(cd[68]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        mem[_6281 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6281 + 100] = s
                        mem[_6281 + 132] = 64
                        mem[_6281 + 164] = mem[_6281]
                        s = 0
                        t = _6281 + 32
                        u = _6281 + 196
                        while s < mem[_6281]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6281 + (32 * mem[_6281]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6764 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6781 = mem[_6764]
                        require mem[_6764] <= test266151307()
                        require _6764 + return_data.size > _6764 + mem[_6764] + 31
                        _6797 = mem[_6764 + mem[_6764]]
                        require mem[_6764 + mem[_6764]] <= test266151307()
                        require (32 * mem[_6764 + mem[_6764]]) + 32 >= 0 and _6764 + ceil32(return_data.size) + (32 * mem[_6764 + mem[_6764]]) + 32 <= test266151307()
                        mem[64] = _6764 + ceil32(return_data.size) + (32 * mem[_6764 + mem[_6764]]) + 32
                        mem[_6764 + ceil32(return_data.size)] = _6797
                        require return_data.size >= _6781 + (32 * _6797) + 32
                        t = _6764 + _6781 + 32
                        u = _6764 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _6797:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _6797
                        require idx < mem[_5456]
                        mem[(32 * idx) + _5456 + 32] = mem[_6764 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            else:
                mem[_5456 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6152 = mem[_6144]
                    require mem[_6144] == mem[_6144 + 12 len 20]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_6152))
                    staticcall address(_6152).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[132]), address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6248 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6248] == mem[_6248 + 12 len 20]
                    if not mem[_6248 + 12 len 20]:
                        require idx < mem[_5456]
                        mem[(32 * idx) + _5456 + 32] = 0
                    else:
                        _6285 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_6285]
                        mem[_6285 + 32] = address(cd[132])
                        require 1 < mem[_6285]
                        mem[_6285 + 64] = address(cd[68])
                        require 0 < mem[_6285]
                        if address(cd[132]) != address(cd[132]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        require mem[_6285] - 1 < mem[_6285]
                        if mem[(32 * mem[_6285] - 1) + _6285 + 44 len 20] != address(cd[68]):
                            revert with 0, 'ERR_PATH_TOKENS'
                        mem[_6285 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6285 + 100] = s
                        mem[_6285 + 132] = 64
                        mem[_6285 + 164] = mem[_6285]
                        s = 0
                        t = _6285 + 32
                        u = _6285 + 196
                        while s < mem[_6285]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6285 + (32 * mem[_6285]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6767 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6783 = mem[_6767]
                        require mem[_6767] <= test266151307()
                        require _6767 + return_data.size > _6767 + mem[_6767] + 31
                        _6799 = mem[_6767 + mem[_6767]]
                        require mem[_6767 + mem[_6767]] <= test266151307()
                        require (32 * mem[_6767 + mem[_6767]]) + 32 >= 0 and _6767 + ceil32(return_data.size) + (32 * mem[_6767 + mem[_6767]]) + 32 <= test266151307()
                        mem[64] = _6767 + ceil32(return_data.size) + (32 * mem[_6767 + mem[_6767]]) + 32
                        mem[_6767 + ceil32(return_data.size)] = _6799
                        require return_data.size >= _6783 + (32 * _6799) + 32
                        t = _6767 + _6783 + 32
                        u = _6767 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _6799:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _6799
                        require idx < mem[_5456]
                        mem[(32 * idx) + _5456 + 32] = mem[_6767 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            idx = 0
            s = 0
            while idx < mem[_5456]:
                require idx < mem[_5456]
                if mem[(32 * idx) + _5456 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_5456]
                idx = idx + 1
                s = mem[(32 * idx) + _5456 + 32]
                continue 
            idx = 0
            while idx < mem[_5456]:
                require idx < mem[_5456]
                idx = idx + 1
                continue 
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    return cd[4], s, address(('cd', 36)[0]), address(('cd', 36)[0]), address(('cd', 36)[0])
}



}
