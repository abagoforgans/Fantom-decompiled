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

function sub_c5af39ad(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    if address(arg3) != address(arg3):
        revert with 0, 'ERR_PATH_TOKENS'
    if uint64(arg4) << 96 != address(arg4):
        revert with 0, 'ERR_PATH_TOKENS'
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
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
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _29 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _30 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _29 + (32 * _30) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _30] = mem[_29 + 224 len 32 * _30]
    require 0 < _30
    mem[mem[64]] = mem[ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_742a466e(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    if address(arg3) != address(arg3):
        revert with 0, 'ERR_PATH_TOKENS'
    if uint64(arg4) << 96 != address(arg4):
        revert with 0, 'ERR_PATH_TOKENS'
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
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
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _29 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _30 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _29 + (32 * _30) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _30] = mem[_29 + 224 len 32 * _30]
    require 1 < _30
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
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
    mem[(2 * ceil32(return_data.size)) + 192] = _29
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
            _66 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_66]
            mem[_66 + 32] = address(cd[68])
            require 1 < mem[_66]
            mem[_66 + 64] = address(cd[100])
            require 0 < mem[_66]
            if address(cd[68]) != address(cd[68]):
                revert with 0, 'ERR_PATH_TOKENS'
            require mem[_66] - 1 < mem[_66]
            if mem[(32 * mem[_66] - 1) + _66 + 44 len 20] != address(cd[100]):
                revert with 0, 'ERR_PATH_TOKENS'
            mem[_66 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_66 + 100] = cd[4]
            mem[_66 + 132] = 64
            mem[_66 + 164] = mem[_66]
            s = 0
            t = _66 + 32
            u = _66 + 196
            while s < mem[_66]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _66 + (32 * mem[_66]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _124 = mem[_122]
            require mem[_122] <= test266151307()
            require _122 + return_data.size > _122 + mem[_122] + 31
            _126 = mem[_122 + mem[_122]]
            require mem[_122 + mem[_122]] <= test266151307()
            require (32 * mem[_122 + mem[_122]]) + 32 >= 0 and _122 + ceil32(return_data.size) + (32 * mem[_122 + mem[_122]]) + 32 <= test266151307()
            mem[64] = _122 + ceil32(return_data.size) + (32 * mem[_122 + mem[_122]]) + 32
            mem[_122 + ceil32(return_data.size)] = _126
            require return_data.size >= _124 + (32 * _126) + 32
            t = _122 + _124 + 32
            u = _122 + ceil32(return_data.size) + 32
            s = 0
            while s < _126:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require 1 < _126
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_122 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _68 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_68]
            mem[_68 + 32] = address(cd[68])
            require 1 < mem[_68]
            mem[_68 + 64] = address(cd[100])
            require 0 < mem[_68]
            if address(cd[68]) != address(cd[68]):
                revert with 0, 'ERR_PATH_TOKENS'
            require mem[_68] - 1 < mem[_68]
            if mem[(32 * mem[_68] - 1) + _68 + 44 len 20] != address(cd[100]):
                revert with 0, 'ERR_PATH_TOKENS'
            mem[_68 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_68 + 100] = cd[4]
            mem[_68 + 132] = 64
            mem[_68 + 164] = mem[_68]
            s = 0
            t = _68 + 32
            u = _68 + 196
            while s < mem[_68]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _68 + (32 * mem[_68]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _123 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _125 = mem[_123]
            require mem[_123] <= test266151307()
            require _123 + return_data.size > _123 + mem[_123] + 31
            _127 = mem[_123 + mem[_123]]
            require mem[_123 + mem[_123]] <= test266151307()
            require (32 * mem[_123 + mem[_123]]) + 32 >= 0 and _123 + ceil32(return_data.size) + (32 * mem[_123 + mem[_123]]) + 32 <= test266151307()
            mem[64] = _123 + ceil32(return_data.size) + (32 * mem[_123 + mem[_123]]) + 32
            mem[_123 + ceil32(return_data.size)] = _127
            require return_data.size >= _125 + (32 * _127) + 32
            t = _123 + _125 + 32
            u = _123 + ceil32(return_data.size) + 32
            s = 0
            while s < _127:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require 1 < _127
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_123 + ceil32(return_data.size) + 64]
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
            _85 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_85]
            mem[_85 + 32] = address(cd[68])
            require 1 < mem[_85]
            mem[_85 + 64] = address(cd[100])
            require 0 < mem[_85]
            if address(cd[68]) != address(cd[68]):
                revert with 0, 'ERR_PATH_TOKENS'
            require mem[_85] - 1 < mem[_85]
            if mem[(32 * mem[_85] - 1) + _85 + 44 len 20] != address(cd[100]):
                revert with 0, 'ERR_PATH_TOKENS'
            mem[_85 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_85 + 100] = cd[4]
            mem[_85 + 132] = 64
            mem[_85 + 164] = mem[_85]
            s = 0
            t = _85 + 32
            u = _85 + 196
            while s < mem[_85]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _85 + (32 * mem[_85]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _157 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _160 = mem[_157]
            require mem[_157] <= test266151307()
            require _157 + return_data.size > _157 + mem[_157] + 31
            _162 = mem[_157 + mem[_157]]
            require mem[_157 + mem[_157]] <= test266151307()
            require (32 * mem[_157 + mem[_157]]) + 32 >= 0 and _157 + ceil32(return_data.size) + (32 * mem[_157 + mem[_157]]) + 32 <= test266151307()
            mem[64] = _157 + ceil32(return_data.size) + (32 * mem[_157 + mem[_157]]) + 32
            mem[_157 + ceil32(return_data.size)] = _162
            require return_data.size >= _160 + (32 * _162) + 32
            t = _157 + _160 + 32
            u = _157 + ceil32(return_data.size) + 32
            s = 0
            while s < _162:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require 1 < _162
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_157 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _88 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_88]
            mem[_88 + 32] = address(cd[68])
            require 1 < mem[_88]
            mem[_88 + 64] = address(cd[100])
            require 0 < mem[_88]
            if address(cd[68]) != address(cd[68]):
                revert with 0, 'ERR_PATH_TOKENS'
            require mem[_88] - 1 < mem[_88]
            if mem[(32 * mem[_88] - 1) + _88 + 44 len 20] != address(cd[100]):
                revert with 0, 'ERR_PATH_TOKENS'
            mem[_88 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_88 + 100] = cd[4]
            mem[_88 + 132] = 64
            mem[_88 + 164] = mem[_88]
            s = 0
            t = _88 + 32
            u = _88 + 196
            while s < mem[_88]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _88 + (32 * mem[_88]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _161 = mem[_159]
            require mem[_159] <= test266151307()
            require _159 + return_data.size > _159 + mem[_159] + 31
            _163 = mem[_159 + mem[_159]]
            require mem[_159 + mem[_159]] <= test266151307()
            require (32 * mem[_159 + mem[_159]]) + 32 >= 0 and _159 + ceil32(return_data.size) + (32 * mem[_159 + mem[_159]]) + 32 <= test266151307()
            mem[64] = _159 + ceil32(return_data.size) + (32 * mem[_159 + mem[_159]]) + 32
            mem[_159 + ceil32(return_data.size)] = _163
            require return_data.size >= _161 + (32 * _163) + 32
            t = _159 + _161 + 32
            u = _159 + ceil32(return_data.size) + 32
            s = 0
            while s < _163:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require 1 < _163
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_159 + ceil32(return_data.size) + 64]
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



}
