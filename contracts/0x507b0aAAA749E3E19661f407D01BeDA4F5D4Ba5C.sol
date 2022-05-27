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
    staticcall arg1.0x70a08231 with:
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
    call arg1.0xa9059cbb with:
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
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg6))
    call address(arg6).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    mem[(4 * ceil32(return_data.size)) + 192] = _71
    require return_data.size >= _69 + (32 * _71) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _71] = mem[(2 * ceil32(return_data.size)) + _69 + 224 len 32 * _71]
    require 1 < _71
    mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_b9e9e076(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == address(cd[68]):
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = 0
            else:
                require idx < mem[96]
                _292 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _304 = mem[_302]
                require mem[_302] == mem[_302 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[132])
                require ext_code.size(address(_304))
                staticcall address(_304).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[132])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_310] == mem[_310 + 12 len 20]
                if not mem[_310 + 12 len 20]:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = 0
                else:
                    _314 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_314]
                    mem[_314 + 32] = address(cd[100])
                    require 1 < mem[_314]
                    mem[_314 + 64] = address(cd[132])
                    require 0 < mem[_314]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_314] - 1 < mem[_314]
                    if mem[(32 * mem[_314] - 1) + _314 + 44 len 20] != address(cd[132]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_314 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_314 + 100] = cd[4]
                    mem[_314 + 132] = 64
                    mem[_314 + 164] = mem[_314]
                    s = 0
                    t = _314 + 32
                    u = _314 + 196
                    while s < mem[_314]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_292))
                    staticcall address(_292).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _314 + (32 * mem[_314]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _426 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _430 = mem[_426]
                    require mem[_426] <= test266151307()
                    require _426 + return_data.size > _426 + mem[_426] + 31
                    _434 = mem[_426 + mem[_426]]
                    require mem[_426 + mem[_426]] <= test266151307()
                    require (32 * mem[_426 + mem[_426]]) + 32 >= 0 and _426 + ceil32(return_data.size) + (32 * mem[_426 + mem[_426]]) + 32 <= test266151307()
                    mem[64] = _426 + ceil32(return_data.size) + (32 * mem[_426 + mem[_426]]) + 32
                    mem[_426 + ceil32(return_data.size)] = _434
                    require return_data.size >= _430 + (32 * _434) + 32
                    t = _426 + _430 + 32
                    u = _426 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _434:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _434
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = mem[_426 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _286 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 64 len 32 * _286] = mem[(32 * ('cd', 36).length) + 160 len 32 * _286]
        var42001 = _286
        return 32, mem[mem[64] + 32 len (32 * _286) + 32]
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] == address(cd[68]):
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = 0
        else:
            require idx < mem[96]
            _293 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _305 = mem[_303]
            require mem[_303] == mem[_303 + 12 len 20]
            mem[mem[64] + 4] = address(cd[100])
            mem[mem[64] + 36] = address(cd[132])
            require ext_code.size(address(_305))
            staticcall address(_305).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[100]), address(cd[132])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_311] == mem[_311 + 12 len 20]
            if not mem[_311 + 12 len 20]:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = 0
            else:
                _318 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_318]
                mem[_318 + 32] = address(cd[100])
                require 1 < mem[_318]
                mem[_318 + 64] = address(cd[132])
                require 0 < mem[_318]
                if address(cd[100]) != address(cd[100]):
                    revert with 0, 'ERR_PATH_TOKENS'
                require mem[_318] - 1 < mem[_318]
                if mem[(32 * mem[_318] - 1) + _318 + 44 len 20] != address(cd[132]):
                    revert with 0, 'ERR_PATH_TOKENS'
                mem[_318 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_318 + 100] = cd[4]
                mem[_318 + 132] = 64
                mem[_318 + 164] = mem[_318]
                s = 0
                t = _318 + 32
                u = _318 + 196
                while s < mem[_318]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(_293))
                staticcall address(_293).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _318 + (32 * mem[_318]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _432 = mem[_428]
                require mem[_428] <= test266151307()
                require _428 + return_data.size > _428 + mem[_428] + 31
                _436 = mem[_428 + mem[_428]]
                require mem[_428 + mem[_428]] <= test266151307()
                require (32 * mem[_428 + mem[_428]]) + 32 >= 0 and _428 + ceil32(return_data.size) + (32 * mem[_428 + mem[_428]]) + 32 <= test266151307()
                mem[64] = _428 + ceil32(return_data.size) + (32 * mem[_428 + mem[_428]]) + 32
                mem[_428 + ceil32(return_data.size)] = _436
                require return_data.size >= _432 + (32 * _436) + 32
                t = _428 + _432 + 32
                u = _428 + ceil32(return_data.size) + 32
                s = 0
                while s < _436:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _436
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = mem[_428 + ceil32(return_data.size) + 64]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _289 = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 64 len 32 * _289] = mem[(32 * ('cd', 36).length) + 160 len 32 * _289]
    return 32, mem[mem[64] + 32 len (32 * _289) + 32]
}

function sub_3269e8fc(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == address(cd[68]):
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = 0
            else:
                require idx < mem[96]
                _321 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _339 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _349 = mem[_339]
                require mem[_339] == mem[_339 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[132])
                require ext_code.size(address(_349))
                staticcall address(_349).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[132])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_358] == mem[_358 + 12 len 20]
                if not mem[_358 + 12 len 20]:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = 0
                else:
                    _362 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_362]
                    mem[_362 + 32] = address(cd[100])
                    require 1 < mem[_362]
                    mem[_362 + 64] = address(cd[132])
                    require 0 < mem[_362]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_362] - 1 < mem[_362]
                    if mem[(32 * mem[_362] - 1) + _362 + 44 len 20] != address(cd[132]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_362 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_362 + 100] = cd[4]
                    mem[_362 + 132] = 64
                    mem[_362 + 164] = mem[_362]
                    s = 0
                    t = _362 + 32
                    u = _362 + 196
                    while s < mem[_362]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_321))
                    staticcall address(_321).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _362 + (32 * mem[_362]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _488 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _496 = mem[_488]
                    require mem[_488] <= test266151307()
                    require _488 + return_data.size > _488 + mem[_488] + 31
                    _502 = mem[_488 + mem[_488]]
                    require mem[_488 + mem[_488]] <= test266151307()
                    require (32 * mem[_488 + mem[_488]]) + 32 >= 0 and _488 + ceil32(return_data.size) + (32 * mem[_488 + mem[_488]]) + 32 <= test266151307()
                    mem[64] = _488 + ceil32(return_data.size) + (32 * mem[_488 + mem[_488]]) + 32
                    mem[_488 + ceil32(return_data.size)] = _502
                    require return_data.size >= _496 + (32 * _502) + 32
                    t = _488 + _496 + 32
                    u = _488 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _502:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _502
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = mem[_488 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
    else:
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == address(cd[68]):
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = 0
            else:
                require idx < mem[96]
                _323 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _351 = mem[_343]
                require mem[_343] == mem[_343 + 12 len 20]
                mem[mem[64] + 4] = address(cd[100])
                mem[mem[64] + 36] = address(cd[132])
                require ext_code.size(address(_351))
                staticcall address(_351).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[100]), address(cd[132])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_359] == mem[_359 + 12 len 20]
                if not mem[_359 + 12 len 20]:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = 0
                else:
                    _366 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_366]
                    mem[_366 + 32] = address(cd[100])
                    require 1 < mem[_366]
                    mem[_366 + 64] = address(cd[132])
                    require 0 < mem[_366]
                    if address(cd[100]) != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_366] - 1 < mem[_366]
                    if mem[(32 * mem[_366] - 1) + _366 + 44 len 20] != address(cd[132]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_366 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_366 + 100] = cd[4]
                    mem[_366 + 132] = 64
                    mem[_366 + 164] = mem[_366]
                    s = 0
                    t = _366 + 32
                    u = _366 + 196
                    while s < mem[_366]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_323))
                    staticcall address(_323).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _366 + (32 * mem[_366]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _492 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _498 = mem[_492]
                    require mem[_492] <= test266151307()
                    require _492 + return_data.size > _492 + mem[_492] + 31
                    _504 = mem[_492 + mem[_492]]
                    require mem[_492 + mem[_492]] <= test266151307()
                    require (32 * mem[_492 + mem[_492]]) + 32 >= 0 and _492 + ceil32(return_data.size) + (32 * mem[_492 + mem[_492]]) + 32 <= test266151307()
                    mem[64] = _492 + ceil32(return_data.size) + (32 * mem[_492 + mem[_492]]) + 32
                    mem[_492 + ceil32(return_data.size)] = _504
                    require return_data.size >= _498 + (32 * _504) + 32
                    t = _492 + _498 + 32
                    u = _492 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _504:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _504
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = mem[_492 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    while idx < mem[(32 * ('cd', 36).length) + 128]:
        require idx < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 160] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[(32 * ('cd', 36).length) + 128]
        idx = idx + 1
        s = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        continue 
    idx = 0
    while idx < mem[(32 * ('cd', 36).length) + 128]:
        require idx < mem[(32 * ('cd', 36).length) + 128]
        idx = idx + 1
        continue 
    require 0 < mem[96]
    mem[mem[64]] = mem[140 len 20]
    return mem[mem[64]], s
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
    staticcall arg2.0x70a08231 with:
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
    staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[(arg5 + 36)]:
        revert with 0, 'No tokens'
    mem[(2 * ceil32(return_data.size)) + 548] = this.address
    require ext_code.size(address(cd[(arg5 + 164)]))
    staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 548] = address(cd[(arg5 + 68)])
    mem[(4 * ceil32(return_data.size)) + 580] = ext_call.return_data[0]
    require ext_code.size(address(cd[(arg5 + 164)]))
    call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 544] = 2
    mem[(6 * ceil32(return_data.size)) + 576] = address(cd[(arg5 + 164)])
    mem[(6 * ceil32(return_data.size)) + 608] = address(cd[(arg5 + 196)])
    mem[(6 * ceil32(return_data.size)) + 640] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 676] = 1
    mem[(6 * ceil32(return_data.size)) + 708] = 160
    mem[(6 * ceil32(return_data.size)) + 804] = 2
    if not address(cd[(arg5 + 132)]):
        idx = 0
        s = (6 * ceil32(return_data.size)) + 576
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
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _178 = mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + return_data.size + 640 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 671
        _180 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672
        mem[(7 * ceil32(return_data.size)) + 640] = _180
        require return_data.size >= _178 + (32 * _180) + 32
        mem[(7 * ceil32(return_data.size)) + 672 len 32 * _180] = mem[(6 * ceil32(return_data.size)) + _178 + 672 len 32 * _180]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _308 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _310 = mem[_308]
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _310
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _310
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _316 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_316] == bool(mem[_316])
        _321 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_321]
        mem[_321 + 32] = address(cd[(arg5 + 196)])
        require 1 < mem[_321]
        mem[_321 + 64] = address(cd[(arg5 + 164)])
        mem[_321 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_321 + 100] = _310
        mem[_321 + 132] = 1
        mem[_321 + 164] = 160
        mem[_321 + 260] = mem[_321]
        idx = 0
        s = _321 + 32
        t = _321 + 292
        while idx < mem[_321]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_321 + 196] = this.address
        mem[_321 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _321 + (32 * mem[_321]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _424 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _426 = mem[_424]
        require mem[_424] <= test266151307()
        require _424 + return_data.size > _424 + mem[_424] + 31
        _428 = mem[_424 + mem[_424]]
        require mem[_424 + mem[_424]] <= test266151307()
        require (32 * mem[_424 + mem[_424]]) + 32 >= 0 and _424 + ceil32(return_data.size) + (32 * mem[_424 + mem[_424]]) + 32 <= test266151307()
        mem[64] = _424 + ceil32(return_data.size) + (32 * mem[_424 + mem[_424]]) + 32
        mem[_424 + ceil32(return_data.size)] = _428
        require return_data.size >= _426 + (32 * _428) + 32
        mem[_424 + ceil32(return_data.size) + 32 len 32 * _428] = mem[_424 + _426 + 32 len 32 * _428]
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _524 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _526 = mem[_524]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = _526
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _526
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _532 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_532] == bool(mem[_532])
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _545 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_545] < arg4 + arg3:
            revert with 0, 'Need more underlying to pay back loan'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg4 + arg3
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg4 + arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _558 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_558] == bool(mem[_558])
        if not mem[_558]:
            revert with 0, 'Transfer fund back failed'
    else:
        idx = 0
        s = (6 * ceil32(return_data.size)) + 576
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
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _177 = mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + return_data.size + 640 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 671
        _179 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640] <= test266151307()
        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], ext_call.return_data[0 len 28] + 640]) + 672
        mem[(7 * ceil32(return_data.size)) + 640] = _179
        require return_data.size >= _177 + (32 * _179) + 32
        mem[(7 * ceil32(return_data.size)) + 672 len 32 * _179] = mem[(6 * ceil32(return_data.size)) + _177 + 672 len 32 * _179]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _307 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _309 = mem[_307]
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _309
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _309
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_315] == bool(mem[_315])
        _319 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_319]
        mem[_319 + 32] = address(cd[(arg5 + 196)])
        require 1 < mem[_319]
        mem[_319 + 64] = address(cd[(arg5 + 228)])
        mem[_319 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_319 + 100] = _309
        mem[_319 + 132] = 1
        mem[_319 + 164] = 160
        mem[_319 + 260] = mem[_319]
        idx = 0
        s = _319 + 32
        t = _319 + 292
        while idx < mem[_319]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_319 + 196] = this.address
        mem[_319 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _319 + (32 * mem[_319]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _423 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _425 = mem[_423]
        require mem[_423] <= test266151307()
        require _423 + return_data.size > _423 + mem[_423] + 31
        _427 = mem[_423 + mem[_423]]
        require mem[_423 + mem[_423]] <= test266151307()
        require (32 * mem[_423 + mem[_423]]) + 32 >= 0 and _423 + ceil32(return_data.size) + (32 * mem[_423 + mem[_423]]) + 32 <= test266151307()
        mem[64] = _423 + ceil32(return_data.size) + (32 * mem[_423 + mem[_423]]) + 32
        mem[_423 + ceil32(return_data.size)] = _427
        require return_data.size >= _425 + (32 * _427) + 32
        mem[_423 + ceil32(return_data.size) + 32 len 32 * _427] = mem[_423 + _425 + 32 len 32 * _427]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _515 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _517 = mem[_515]
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _517
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _517
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _523 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_523] == bool(mem[_523])
        _529 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_529]
        mem[_529 + 32] = address(cd[(arg5 + 228)])
        require 1 < mem[_529]
        mem[_529 + 64] = address(cd[(arg5 + 164)])
        mem[_529 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_529 + 100] = _517
        mem[_529 + 132] = cd[(arg5 + 36)]
        mem[_529 + 164] = 160
        mem[_529 + 260] = mem[_529]
        idx = 0
        s = _529 + 32
        t = _529 + 292
        while idx < mem[_529]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_529 + 196] = this.address
        mem[_529 + 228] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _529 + (32 * mem[_529]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _589 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _590 = mem[_589]
        require mem[_589] <= test266151307()
        require _589 + return_data.size > _589 + mem[_589] + 31
        _591 = mem[_589 + mem[_589]]
        require mem[_589 + mem[_589]] <= test266151307()
        require (32 * mem[_589 + mem[_589]]) + 32 >= 0 and _589 + ceil32(return_data.size) + (32 * mem[_589 + mem[_589]]) + 32 <= test266151307()
        mem[64] = _589 + ceil32(return_data.size) + (32 * mem[_589 + mem[_589]]) + 32
        mem[_589 + ceil32(return_data.size)] = _591
        require return_data.size >= _590 + (32 * _591) + 32
        mem[_589 + ceil32(return_data.size) + 32 len 32 * _591] = mem[_589 + _590 + 32 len 32 * _591]
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _629 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _630 = mem[_629]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = _630
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), _630
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _633 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_633] == bool(mem[_633])
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _639 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_639] < arg4 + arg3:
            revert with 0, 'Need more underlying to pay back loan'
        if arg4 + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg4 + arg3
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg4 + arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _647 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_647] == bool(mem[_647])
        if not mem[_647]:
            revert with 0, 'Transfer fund back failed'
}

function sub_3461a553(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = arg2.length
    mem[288 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 288] = arg2.length
    mem[64] = (64 * arg2.length) + 320
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[256]
            if not mem[(32 * idx) + 300 len 20]:
                require idx < mem[(32 * arg2.length) + 288]
                mem[(32 * idx) + (32 * arg2.length) + 320] = 0
            else:
                require idx < mem[256]
                _502 = mem[(32 * idx) + 288]
                require ext_code.size(mem[(32 * idx) + 300 len 20])
                staticcall mem[(32 * idx) + 300 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _530 = mem[_520]
                require mem[_520] == mem[_520 + 12 len 20]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = address(arg4)
                require ext_code.size(address(_530))
                staticcall address(_530).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _561 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_561] == mem[_561 + 12 len 20]
                if not mem[_561 + 12 len 20]:
                    require idx < mem[(32 * arg2.length) + 288]
                    mem[(32 * idx) + (32 * arg2.length) + 320] = 0
                else:
                    _654 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_654]
                    mem[_654 + 32] = address(arg3)
                    require 1 < mem[_654]
                    mem[_654 + 64] = address(arg4)
                    require 0 < mem[_654]
                    if address(arg3) != address(arg3):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_654] - 1 < mem[_654]
                    if mem[(32 * mem[_654] - 1) + _654 + 44 len 20] != address(arg4):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_654 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_654 + 100] = arg1
                    mem[_654 + 132] = 64
                    mem[_654 + 164] = mem[_654]
                    s = 0
                    t = _654 + 32
                    u = _654 + 196
                    while s < mem[_654]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_502))
                    staticcall address(_502).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _654 + (32 * mem[_654]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1003 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1011 = mem[_1003]
                    require mem[_1003] <= test266151307()
                    require _1003 + return_data.size > _1003 + mem[_1003] + 31
                    _1018 = mem[_1003 + mem[_1003]]
                    require mem[_1003 + mem[_1003]] <= test266151307()
                    require (32 * mem[_1003 + mem[_1003]]) + 32 >= 0 and _1003 + ceil32(return_data.size) + (32 * mem[_1003 + mem[_1003]]) + 32 <= test266151307()
                    mem[64] = _1003 + ceil32(return_data.size) + (32 * mem[_1003 + mem[_1003]]) + 32
                    mem[_1003 + ceil32(return_data.size)] = _1018
                    require return_data.size >= _1011 + (32 * _1018) + 32
                    t = _1003 + _1011 + 32
                    u = _1003 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1018:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1018
                    require idx < mem[(32 * arg2.length) + 288]
                    mem[(32 * idx) + (32 * arg2.length) + 320] = mem[_1003 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[(32 * arg2.length) + 288]:
            require idx < mem[(32 * arg2.length) + 288]
            if mem[(32 * idx) + (32 * arg2.length) + 320] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[(32 * arg2.length) + 288]
            idx = idx + 1
            s = mem[(32 * idx) + (32 * arg2.length) + 320]
            continue 
        idx = 0
        while idx < mem[(32 * arg2.length) + 288]:
            require idx < mem[(32 * arg2.length) + 288]
            idx = idx + 1
            continue 
        if 0 < mem[256]:
            _1385 = mem[288]
            _1393 = mem[64]
            mem[64] = mem[64] + (32 * arg2.length) + 32
            mem[_1393] = arg2.length
            mem[_1393 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[_1393 + (32 * arg2.length) + 32] = 0
            require arg2.length <= test266151307()
            _1405 = mem[64]
            mem[mem[64]] = arg2.length
            mem[64] = mem[64] + (32 * arg2.length) + 32
            if not arg2.length:
                idx = 0
                while idx < arg2.length:
                    require idx < mem[_1393]
                    if mem[(32 * idx) + _1393 + 44 len 20] == address(_1385):
                        require idx < mem[_1405]
                        mem[(32 * idx) + _1405 + 32] = 0
                    else:
                        require idx < mem[_1393]
                        _1760 = mem[(32 * idx) + _1393 + 32]
                        require ext_code.size(mem[(32 * idx) + _1393 + 44 len 20])
                        staticcall mem[(32 * idx) + _1393 + 44 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1794 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1815 = mem[_1794]
                        require mem[_1794] == mem[_1794 + 12 len 20]
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = address(arg3)
                        require ext_code.size(address(_1815))
                        staticcall address(_1815).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg4), address(arg3)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1863 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1863] == mem[_1863 + 12 len 20]
                        if not mem[_1863 + 12 len 20]:
                            require idx < mem[_1405]
                            mem[(32 * idx) + _1405 + 32] = 0
                        else:
                            _1871 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1871]
                            mem[_1871 + 32] = address(arg4)
                            require 1 < mem[_1871]
                            mem[_1871 + 64] = address(arg3)
                            require 0 < mem[_1871]
                            if address(arg4) != address(arg4):
                                revert with 0, 'ERR_PATH_TOKENS'
                            require mem[_1871] - 1 < mem[_1871]
                            if mem[(32 * mem[_1871] - 1) + _1871 + 44 len 20] != address(arg3):
                                revert with 0, 'ERR_PATH_TOKENS'
                            mem[_1871 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1871 + 100] = s
                            mem[_1871 + 132] = 64
                            mem[_1871 + 164] = mem[_1871]
                            s = 0
                            t = _1871 + 32
                            u = _1871 + 196
                            while s < mem[_1871]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_1760))
                            staticcall address(_1760).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1871 + (32 * mem[_1871]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2121 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2136 = mem[_2121]
                            require mem[_2121] <= test266151307()
                            require _2121 + return_data.size > _2121 + mem[_2121] + 31
                            _2152 = mem[_2121 + mem[_2121]]
                            require mem[_2121 + mem[_2121]] <= test266151307()
                            require (32 * mem[_2121 + mem[_2121]]) + 32 >= 0 and _2121 + ceil32(return_data.size) + (32 * mem[_2121 + mem[_2121]]) + 32 <= test266151307()
                            mem[64] = _2121 + ceil32(return_data.size) + (32 * mem[_2121 + mem[_2121]]) + 32
                            mem[_2121 + ceil32(return_data.size)] = _2152
                            require return_data.size >= _2136 + (32 * _2152) + 32
                            t = _2121 + _2136 + 32
                            u = _2121 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2152:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 1 < _2152
                            require idx < mem[_1405]
                            mem[(32 * idx) + _1405 + 32] = mem[_2121 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            else:
                mem[_1405 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
                idx = 0
                while idx < arg2.length:
                    require idx < mem[_1393]
                    if mem[(32 * idx) + _1393 + 44 len 20] == address(_1385):
                        require idx < mem[_1405]
                        mem[(32 * idx) + _1405 + 32] = 0
                    else:
                        require idx < mem[_1393]
                        _1762 = mem[(32 * idx) + _1393 + 32]
                        require ext_code.size(mem[(32 * idx) + _1393 + 44 len 20])
                        staticcall mem[(32 * idx) + _1393 + 44 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1798 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1816 = mem[_1798]
                        require mem[_1798] == mem[_1798 + 12 len 20]
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = address(arg3)
                        require ext_code.size(address(_1816))
                        staticcall address(_1816).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg4), address(arg3)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1864 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1864] == mem[_1864 + 12 len 20]
                        if not mem[_1864 + 12 len 20]:
                            require idx < mem[_1405]
                            mem[(32 * idx) + _1405 + 32] = 0
                        else:
                            _1875 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1875]
                            mem[_1875 + 32] = address(arg4)
                            require 1 < mem[_1875]
                            mem[_1875 + 64] = address(arg3)
                            require 0 < mem[_1875]
                            if address(arg4) != address(arg4):
                                revert with 0, 'ERR_PATH_TOKENS'
                            require mem[_1875] - 1 < mem[_1875]
                            if mem[(32 * mem[_1875] - 1) + _1875 + 44 len 20] != address(arg3):
                                revert with 0, 'ERR_PATH_TOKENS'
                            mem[_1875 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1875 + 100] = s
                            mem[_1875 + 132] = 64
                            mem[_1875 + 164] = mem[_1875]
                            s = 0
                            t = _1875 + 32
                            u = _1875 + 196
                            while s < mem[_1875]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_1762))
                            staticcall address(_1762).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1875 + (32 * mem[_1875]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2125 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2139 = mem[_2125]
                            require mem[_2125] <= test266151307()
                            require _2125 + return_data.size > _2125 + mem[_2125] + 31
                            _2155 = mem[_2125 + mem[_2125]]
                            require mem[_2125 + mem[_2125]] <= test266151307()
                            require (32 * mem[_2125 + mem[_2125]]) + 32 >= 0 and _2125 + ceil32(return_data.size) + (32 * mem[_2125 + mem[_2125]]) + 32 <= test266151307()
                            mem[64] = _2125 + ceil32(return_data.size) + (32 * mem[_2125 + mem[_2125]]) + 32
                            mem[_2125 + ceil32(return_data.size)] = _2155
                            require return_data.size >= _2139 + (32 * _2155) + 32
                            t = _2125 + _2139 + 32
                            u = _2125 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2155:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 1 < _2155
                            require idx < mem[_1405]
                            mem[(32 * idx) + _1405 + 32] = mem[_2125 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            idx = 0
            s = 0
            while idx < mem[_1405]:
                require idx < mem[_1405]
                if mem[(32 * idx) + _1405 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_1405]
                idx = idx + 1
                s = mem[(32 * idx) + _1405 + 32]
                continue 
            idx = 0
            while idx < mem[_1405]:
                require idx < mem[_1405]
                idx = idx + 1
                continue 
            if 0 < mem[_1393]:
                return arg1, s, address(_1385), address(mem[_1393 + 32]), 0
    else:
        mem[(32 * arg2.length) + 320 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < mem[256]
            if not mem[(32 * idx) + 300 len 20]:
                require idx < mem[(32 * arg2.length) + 288]
                mem[(32 * idx) + (32 * arg2.length) + 320] = 0
            else:
                require idx < mem[256]
                _504 = mem[(32 * idx) + 288]
                require ext_code.size(mem[(32 * idx) + 300 len 20])
                staticcall mem[(32 * idx) + 300 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _532 = mem[_524]
                require mem[_524] == mem[_524 + 12 len 20]
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = address(arg4)
                require ext_code.size(address(_532))
                staticcall address(_532).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_566] == mem[_566 + 12 len 20]
                if not mem[_566 + 12 len 20]:
                    require idx < mem[(32 * arg2.length) + 288]
                    mem[(32 * idx) + (32 * arg2.length) + 320] = 0
                else:
                    _665 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_665]
                    mem[_665 + 32] = address(arg3)
                    require 1 < mem[_665]
                    mem[_665 + 64] = address(arg4)
                    require 0 < mem[_665]
                    if address(arg3) != address(arg3):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_665] - 1 < mem[_665]
                    if mem[(32 * mem[_665] - 1) + _665 + 44 len 20] != address(arg4):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_665 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_665 + 100] = arg1
                    mem[_665 + 132] = 64
                    mem[_665 + 164] = mem[_665]
                    s = 0
                    t = _665 + 32
                    u = _665 + 196
                    while s < mem[_665]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_504))
                    staticcall address(_504).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _665 + (32 * mem[_665]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1007 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1013 = mem[_1007]
                    require mem[_1007] <= test266151307()
                    require _1007 + return_data.size > _1007 + mem[_1007] + 31
                    _1021 = mem[_1007 + mem[_1007]]
                    require mem[_1007 + mem[_1007]] <= test266151307()
                    require (32 * mem[_1007 + mem[_1007]]) + 32 >= 0 and _1007 + ceil32(return_data.size) + (32 * mem[_1007 + mem[_1007]]) + 32 <= test266151307()
                    mem[64] = _1007 + ceil32(return_data.size) + (32 * mem[_1007 + mem[_1007]]) + 32
                    mem[_1007 + ceil32(return_data.size)] = _1021
                    require return_data.size >= _1013 + (32 * _1021) + 32
                    t = _1007 + _1013 + 32
                    u = _1007 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1021:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _1021
                    require idx < mem[(32 * arg2.length) + 288]
                    mem[(32 * idx) + (32 * arg2.length) + 320] = mem[_1007 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[(32 * arg2.length) + 288]:
            require idx < mem[(32 * arg2.length) + 288]
            if mem[(32 * idx) + (32 * arg2.length) + 320] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[(32 * arg2.length) + 288]
            idx = idx + 1
            s = mem[(32 * idx) + (32 * arg2.length) + 320]
            continue 
        idx = 0
        while idx < mem[(32 * arg2.length) + 288]:
            require idx < mem[(32 * arg2.length) + 288]
            idx = idx + 1
            continue 
        if 0 < mem[256]:
            _1389 = mem[288]
            _1396 = mem[64]
            mem[64] = mem[64] + (32 * arg2.length) + 32
            mem[_1396] = arg2.length
            mem[_1396 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[_1396 + (32 * arg2.length) + 32] = 0
            require arg2.length <= test266151307()
            _1406 = mem[64]
            mem[mem[64]] = arg2.length
            mem[64] = mem[64] + (32 * arg2.length) + 32
            if not arg2.length:
                idx = 0
                while idx < arg2.length:
                    require idx < mem[_1396]
                    if mem[(32 * idx) + _1396 + 44 len 20] == address(_1389):
                        require idx < mem[_1406]
                        mem[(32 * idx) + _1406 + 32] = 0
                    else:
                        require idx < mem[_1396]
                        _1764 = mem[(32 * idx) + _1396 + 32]
                        require ext_code.size(mem[(32 * idx) + _1396 + 44 len 20])
                        staticcall mem[(32 * idx) + _1396 + 44 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1802 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1817 = mem[_1802]
                        require mem[_1802] == mem[_1802 + 12 len 20]
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = address(arg3)
                        require ext_code.size(address(_1817))
                        staticcall address(_1817).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg4), address(arg3)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1865 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1865] == mem[_1865 + 12 len 20]
                        if not mem[_1865 + 12 len 20]:
                            require idx < mem[_1406]
                            mem[(32 * idx) + _1406 + 32] = 0
                        else:
                            _1879 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1879]
                            mem[_1879 + 32] = address(arg4)
                            require 1 < mem[_1879]
                            mem[_1879 + 64] = address(arg3)
                            require 0 < mem[_1879]
                            if address(arg4) != address(arg4):
                                revert with 0, 'ERR_PATH_TOKENS'
                            require mem[_1879] - 1 < mem[_1879]
                            if mem[(32 * mem[_1879] - 1) + _1879 + 44 len 20] != address(arg3):
                                revert with 0, 'ERR_PATH_TOKENS'
                            mem[_1879 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1879 + 100] = s
                            mem[_1879 + 132] = 64
                            mem[_1879 + 164] = mem[_1879]
                            s = 0
                            t = _1879 + 32
                            u = _1879 + 196
                            while s < mem[_1879]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_1764))
                            staticcall address(_1764).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1879 + (32 * mem[_1879]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2129 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2142 = mem[_2129]
                            require mem[_2129] <= test266151307()
                            require _2129 + return_data.size > _2129 + mem[_2129] + 31
                            _2158 = mem[_2129 + mem[_2129]]
                            require mem[_2129 + mem[_2129]] <= test266151307()
                            require (32 * mem[_2129 + mem[_2129]]) + 32 >= 0 and _2129 + ceil32(return_data.size) + (32 * mem[_2129 + mem[_2129]]) + 32 <= test266151307()
                            mem[64] = _2129 + ceil32(return_data.size) + (32 * mem[_2129 + mem[_2129]]) + 32
                            mem[_2129 + ceil32(return_data.size)] = _2158
                            require return_data.size >= _2142 + (32 * _2158) + 32
                            t = _2129 + _2142 + 32
                            u = _2129 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2158:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 1 < _2158
                            require idx < mem[_1406]
                            mem[(32 * idx) + _1406 + 32] = mem[_2129 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            else:
                mem[_1406 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
                idx = 0
                while idx < arg2.length:
                    require idx < mem[_1396]
                    if mem[(32 * idx) + _1396 + 44 len 20] == address(_1389):
                        require idx < mem[_1406]
                        mem[(32 * idx) + _1406 + 32] = 0
                    else:
                        require idx < mem[_1396]
                        _1766 = mem[(32 * idx) + _1396 + 32]
                        require ext_code.size(mem[(32 * idx) + _1396 + 44 len 20])
                        staticcall mem[(32 * idx) + _1396 + 44 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1806 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1818 = mem[_1806]
                        require mem[_1806] == mem[_1806 + 12 len 20]
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = address(arg3)
                        require ext_code.size(address(_1818))
                        staticcall address(_1818).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg4), address(arg3)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1866 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1866] == mem[_1866 + 12 len 20]
                        if not mem[_1866 + 12 len 20]:
                            require idx < mem[_1406]
                            mem[(32 * idx) + _1406 + 32] = 0
                        else:
                            _1883 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_1883]
                            mem[_1883 + 32] = address(arg4)
                            require 1 < mem[_1883]
                            mem[_1883 + 64] = address(arg3)
                            require 0 < mem[_1883]
                            if address(arg4) != address(arg4):
                                revert with 0, 'ERR_PATH_TOKENS'
                            require mem[_1883] - 1 < mem[_1883]
                            if mem[(32 * mem[_1883] - 1) + _1883 + 44 len 20] != address(arg3):
                                revert with 0, 'ERR_PATH_TOKENS'
                            mem[_1883 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1883 + 100] = s
                            mem[_1883 + 132] = 64
                            mem[_1883 + 164] = mem[_1883]
                            s = 0
                            t = _1883 + 32
                            u = _1883 + 196
                            while s < mem[_1883]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_1766))
                            staticcall address(_1766).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1883 + (32 * mem[_1883]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2133 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2145 = mem[_2133]
                            require mem[_2133] <= test266151307()
                            require _2133 + return_data.size > _2133 + mem[_2133] + 31
                            _2161 = mem[_2133 + mem[_2133]]
                            require mem[_2133 + mem[_2133]] <= test266151307()
                            require (32 * mem[_2133 + mem[_2133]]) + 32 >= 0 and _2133 + ceil32(return_data.size) + (32 * mem[_2133 + mem[_2133]]) + 32 <= test266151307()
                            mem[64] = _2133 + ceil32(return_data.size) + (32 * mem[_2133 + mem[_2133]]) + 32
                            mem[_2133 + ceil32(return_data.size)] = _2161
                            require return_data.size >= _2145 + (32 * _2161) + 32
                            t = _2133 + _2145 + 32
                            u = _2133 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _2161:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 1 < _2161
                            require idx < mem[_1406]
                            mem[(32 * idx) + _1406 + 32] = mem[_2133 + ceil32(return_data.size) + 64]
                    idx = idx + 1
                    continue 
            idx = 0
            s = 0
            while idx < mem[_1406]:
                require idx < mem[_1406]
                if mem[(32 * idx) + _1406 + 32] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[_1406]
                idx = idx + 1
                s = mem[(32 * idx) + _1406 + 32]
                continue 
            idx = 0
            while idx < mem[_1406]:
                require idx < mem[_1406]
                idx = idx + 1
                continue 
            if 0 < mem[_1396]:
                return arg1, s, address(_1389), address(mem[_1396 + 32]), 0
    revert
}

function sub_77c6571a(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + 224] = 0
    mem[(32 * ('cd', 36).length) + 256] = 0
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 288] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 320
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                require idx < mem[(32 * ('cd', 36).length) + 288]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 320] = 0
            else:
                require idx < mem[96]
                _2259 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2286 = mem[_2277]
                require mem[_2277] == mem[_2277 + 12 len 20]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = address(cd[100])
                require ext_code.size(address(_2286))
                staticcall address(_2286).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[68]), address(cd[100])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2316] == mem[_2316 + 12 len 20]
                if not mem[_2316 + 12 len 20]:
                    require idx < mem[(32 * ('cd', 36).length) + 288]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 320] = 0
                else:
                    _2390 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2390]
                    mem[_2390 + 32] = address(cd[68])
                    require 1 < mem[_2390]
                    mem[_2390 + 64] = address(cd[100])
                    require 0 < mem[_2390]
                    if address(cd[68]) != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_2390] - 1 < mem[_2390]
                    if mem[(32 * mem[_2390] - 1) + _2390 + 44 len 20] != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_2390 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2390 + 100] = cd[4]
                    mem[_2390 + 132] = 64
                    mem[_2390 + 164] = mem[_2390]
                    s = 0
                    t = _2390 + 32
                    u = _2390 + 196
                    while s < mem[_2390]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_2259))
                    staticcall address(_2259).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2390 + (32 * mem[_2390]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3394 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3400 = mem[_3394]
                    require mem[_3394] <= test266151307()
                    require _3394 + return_data.size > _3394 + mem[_3394] + 31
                    _3407 = mem[_3394 + mem[_3394]]
                    require mem[_3394 + mem[_3394]] <= test266151307()
                    require (32 * mem[_3394 + mem[_3394]]) + 32 >= 0 and _3394 + ceil32(return_data.size) + (32 * mem[_3394 + mem[_3394]]) + 32 <= test266151307()
                    mem[64] = _3394 + ceil32(return_data.size) + (32 * mem[_3394 + mem[_3394]]) + 32
                    mem[_3394 + ceil32(return_data.size)] = _3407
                    require return_data.size >= _3400 + (32 * _3407) + 32
                    t = _3394 + _3400 + 32
                    u = _3394 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _3407:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _3407
                    require idx < mem[(32 * ('cd', 36).length) + 288]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 320] = mem[_3394 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[(32 * ('cd', 36).length) + 288]:
            require idx < mem[(32 * ('cd', 36).length) + 288]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 320] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[(32 * ('cd', 36).length) + 288]
            idx = idx + 1
            s = mem[(32 * idx) + (32 * ('cd', 36).length) + 320]
            continue 
        idx = 0
        while idx < mem[(32 * ('cd', 36).length) + 288]:
            require idx < mem[(32 * ('cd', 36).length) + 288]
            idx = idx + 1
            continue 
        if 0 < mem[96]:
            _4410 = mem[128]
            _4422 = mem[96]
            require mem[96] <= test266151307()
            _4428 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _4422) + 32
            if not _4422:
                _5398 = mem[96]
                idx = 0
                while idx < _5398:
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == address(_4410):
                        require idx < mem[_4428]
                        mem[(32 * idx) + _4428 + 32] = 0
                    else:
                        require idx < mem[96]
                        _5419 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5474 = mem[_5453]
                        require mem[_5453] == mem[_5453 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[100])
                        mem[mem[64] + 36] = address(cd[132])
                        require ext_code.size(address(_5474))
                        staticcall address(_5474).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[100]), address(cd[132])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5530] == mem[_5530 + 12 len 20]
                        if not mem[_5530 + 12 len 20]:
                            require idx < mem[_4428]
                            mem[(32 * idx) + _4428 + 32] = 0
                        else:
                            _5713 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_5713]
                            mem[_5713 + 32] = address(cd[100])
                            require 1 < mem[_5713]
                            mem[_5713 + 64] = address(cd[132])
                            require 0 < mem[_5713]
                            if address(cd[100]) != address(cd[100]):
                                revert with 0, 'ERR_PATH_TOKENS'
                            require mem[_5713] - 1 < mem[_5713]
                            if mem[(32 * mem[_5713] - 1) + _5713 + 44 len 20] != address(cd[132]):
                                revert with 0, 'ERR_PATH_TOKENS'
                            mem[_5713 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_5713 + 100] = s
                            mem[_5713 + 132] = 64
                            mem[_5713 + 164] = mem[_5713]
                            s = 0
                            t = _5713 + 32
                            u = _5713 + 196
                            while s < mem[_5713]:
                                mem[u] = mem[t + 12 len 20]
                                _5398 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_5419))
                            staticcall address(_5419).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5713 + (32 * mem[_5713]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6416 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6430 = mem[_6416]
                            require mem[_6416] <= test266151307()
                            require _6416 + return_data.size > _6416 + mem[_6416] + 31
                            _6443 = mem[_6416 + mem[_6416]]
                            require mem[_6416 + mem[_6416]] <= test266151307()
                            require (32 * mem[_6416 + mem[_6416]]) + 32 >= 0 and _6416 + ceil32(return_data.size) + (32 * mem[_6416 + mem[_6416]]) + 32 <= test266151307()
                            mem[64] = _6416 + ceil32(return_data.size) + (32 * mem[_6416 + mem[_6416]]) + 32
                            mem[_6416 + ceil32(return_data.size)] = _6443
                            require return_data.size >= _6430 + (32 * _6443) + 32
                            t = _6416 + _6430 + 32
                            u = _6416 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _6443:
                                mem[u] = mem[t]
                                _5398 = mem[96]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 1 < _6443
                            require idx < mem[_4428]
                            mem[(32 * idx) + _4428 + 32] = mem[_6416 + ceil32(return_data.size) + 64]
                    _5398 = mem[96]
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                while idx < mem[_4428]:
                    require idx < mem[_4428]
                    if mem[(32 * idx) + _4428 + 32] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < mem[_4428]
                    idx = idx + 1
                    s = mem[(32 * idx) + _4428 + 32]
                    continue 
                idx = 0
                while idx < mem[_4428]:
                    require idx < mem[_4428]
                    idx = idx + 1
                    continue 
                if 0 < mem[96]:
                    _7178 = mem[128]
                    _7202 = mem[96]
                    require mem[96] <= test266151307()
                    _7214 = mem[64]
                    mem[mem[64]] = mem[96]
                    mem[64] = mem[64] + (32 * _7202) + 32
                    if not _7202:
                        _7882 = mem[96]
                        idx = 0
                        while idx < _7882:
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7178):
                                require idx < mem[_7214]
                                mem[(32 * idx) + _7214 + 32] = 0
                            else:
                                require idx < mem[96]
                                _7923 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7989 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8034 = mem[_7989]
                                require mem[_7989] == mem[_7989 + 12 len 20]
                                mem[mem[64] + 4] = address(cd[132])
                                mem[mem[64] + 36] = address(cd[68])
                                require ext_code.size(address(_8034))
                                staticcall address(_8034).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[132]), address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8130 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8130] == mem[_8130 + 12 len 20]
                                if not mem[_8130 + 12 len 20]:
                                    require idx < mem[_7214]
                                    mem[(32 * idx) + _7214 + 32] = 0
                                else:
                                    _8146 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_8146]
                                    mem[_8146 + 32] = address(cd[132])
                                    require 1 < mem[_8146]
                                    mem[_8146 + 64] = address(cd[68])
                                    require 0 < mem[_8146]
                                    if address(cd[132]) != address(cd[132]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    require mem[_8146] - 1 < mem[_8146]
                                    if mem[(32 * mem[_8146] - 1) + _8146 + 44 len 20] != address(cd[68]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    mem[_8146 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_8146 + 100] = s
                                    mem[_8146 + 132] = 64
                                    mem[_8146 + 164] = mem[_8146]
                                    s = 0
                                    t = _8146 + 32
                                    u = _8146 + 196
                                    while s < mem[_8146]:
                                        mem[u] = mem[t + 12 len 20]
                                        _7882 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_7923))
                                    staticcall address(_7923).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8146 + (32 * mem[_8146]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8644 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8675 = mem[_8644]
                                    require mem[_8644] <= test266151307()
                                    require _8644 + return_data.size > _8644 + mem[_8644] + 31
                                    _8707 = mem[_8644 + mem[_8644]]
                                    require mem[_8644 + mem[_8644]] <= test266151307()
                                    require (32 * mem[_8644 + mem[_8644]]) + 32 >= 0 and _8644 + ceil32(return_data.size) + (32 * mem[_8644 + mem[_8644]]) + 32 <= test266151307()
                                    mem[64] = _8644 + ceil32(return_data.size) + (32 * mem[_8644 + mem[_8644]]) + 32
                                    mem[_8644 + ceil32(return_data.size)] = _8707
                                    require return_data.size >= _8675 + (32 * _8707) + 32
                                    t = _8644 + _8675 + 32
                                    u = _8644 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _8707:
                                        mem[u] = mem[t]
                                        _7882 = mem[96]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 1 < _8707
                                    require idx < mem[_7214]
                                    mem[(32 * idx) + _7214 + 32] = mem[_8644 + ceil32(return_data.size) + 64]
                            _7882 = mem[96]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7214 + 32 len 32 * _7202] = call.data[calldata.size len 32 * _7202]
                        _7883 = mem[96]
                        idx = 0
                        while idx < _7883:
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7178):
                                require idx < mem[_7214]
                                mem[(32 * idx) + _7214 + 32] = 0
                            else:
                                require idx < mem[96]
                                _7925 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7993 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8035 = mem[_7993]
                                require mem[_7993] == mem[_7993 + 12 len 20]
                                mem[mem[64] + 4] = address(cd[132])
                                mem[mem[64] + 36] = address(cd[68])
                                require ext_code.size(address(_8035))
                                staticcall address(_8035).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[132]), address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8131 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8131] == mem[_8131 + 12 len 20]
                                if not mem[_8131 + 12 len 20]:
                                    require idx < mem[_7214]
                                    mem[(32 * idx) + _7214 + 32] = 0
                                else:
                                    _8150 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_8150]
                                    mem[_8150 + 32] = address(cd[132])
                                    require 1 < mem[_8150]
                                    mem[_8150 + 64] = address(cd[68])
                                    require 0 < mem[_8150]
                                    if address(cd[132]) != address(cd[132]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    require mem[_8150] - 1 < mem[_8150]
                                    if mem[(32 * mem[_8150] - 1) + _8150 + 44 len 20] != address(cd[68]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    mem[_8150 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_8150 + 100] = s
                                    mem[_8150 + 132] = 64
                                    mem[_8150 + 164] = mem[_8150]
                                    s = 0
                                    t = _8150 + 32
                                    u = _8150 + 196
                                    while s < mem[_8150]:
                                        mem[u] = mem[t + 12 len 20]
                                        _7883 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_7925))
                                    staticcall address(_7925).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8150 + (32 * mem[_8150]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8648 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8678 = mem[_8648]
                                    require mem[_8648] <= test266151307()
                                    require _8648 + return_data.size > _8648 + mem[_8648] + 31
                                    _8710 = mem[_8648 + mem[_8648]]
                                    require mem[_8648 + mem[_8648]] <= test266151307()
                                    require (32 * mem[_8648 + mem[_8648]]) + 32 >= 0 and _8648 + ceil32(return_data.size) + (32 * mem[_8648 + mem[_8648]]) + 32 <= test266151307()
                                    mem[64] = _8648 + ceil32(return_data.size) + (32 * mem[_8648 + mem[_8648]]) + 32
                                    mem[_8648 + ceil32(return_data.size)] = _8710
                                    require return_data.size >= _8678 + (32 * _8710) + 32
                                    t = _8648 + _8678 + 32
                                    u = _8648 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _8710:
                                        mem[u] = mem[t]
                                        _7883 = mem[96]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 1 < _8710
                                    require idx < mem[_7214]
                                    mem[(32 * idx) + _7214 + 32] = mem[_8648 + ceil32(return_data.size) + 64]
                            _7883 = mem[96]
                            idx = idx + 1
                            continue 
                    idx = 0
                    s = 0
                    while idx < mem[_7214]:
                        require idx < mem[_7214]
                        if mem[(32 * idx) + _7214 + 32] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < mem[_7214]
                        idx = idx + 1
                        s = mem[(32 * idx) + _7214 + 32]
                        continue 
                    idx = 0
                    while idx < mem[_7214]:
                        require idx < mem[_7214]
                        idx = idx + 1
                        continue 
                    if 0 < mem[96]:
                        return cd[4], s, address(_4410), address(_7178), mem[140 len 20]
            else:
                mem[_4428 + 32 len 32 * _4422] = call.data[calldata.size len 32 * _4422]
                _5399 = mem[96]
                idx = 0
                while idx < _5399:
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == address(_4410):
                        require idx < mem[_4428]
                        mem[(32 * idx) + _4428 + 32] = 0
                    else:
                        require idx < mem[96]
                        _5421 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5475 = mem[_5457]
                        require mem[_5457] == mem[_5457 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[100])
                        mem[mem[64] + 36] = address(cd[132])
                        require ext_code.size(address(_5475))
                        staticcall address(_5475).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[100]), address(cd[132])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5535] == mem[_5535 + 12 len 20]
                        if not mem[_5535 + 12 len 20]:
                            require idx < mem[_4428]
                            mem[(32 * idx) + _4428 + 32] = 0
                        else:
                            _5724 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_5724]
                            mem[_5724 + 32] = address(cd[100])
                            require 1 < mem[_5724]
                            mem[_5724 + 64] = address(cd[132])
                            require 0 < mem[_5724]
                            if address(cd[100]) != address(cd[100]):
                                revert with 0, 'ERR_PATH_TOKENS'
                            require mem[_5724] - 1 < mem[_5724]
                            if mem[(32 * mem[_5724] - 1) + _5724 + 44 len 20] != address(cd[132]):
                                revert with 0, 'ERR_PATH_TOKENS'
                            mem[_5724 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_5724 + 100] = s
                            mem[_5724 + 132] = 64
                            mem[_5724 + 164] = mem[_5724]
                            s = 0
                            t = _5724 + 32
                            u = _5724 + 196
                            while s < mem[_5724]:
                                mem[u] = mem[t + 12 len 20]
                                _5399 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_5421))
                            staticcall address(_5421).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5724 + (32 * mem[_5724]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6420 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6432 = mem[_6420]
                            require mem[_6420] <= test266151307()
                            require _6420 + return_data.size > _6420 + mem[_6420] + 31
                            _6446 = mem[_6420 + mem[_6420]]
                            require mem[_6420 + mem[_6420]] <= test266151307()
                            require (32 * mem[_6420 + mem[_6420]]) + 32 >= 0 and _6420 + ceil32(return_data.size) + (32 * mem[_6420 + mem[_6420]]) + 32 <= test266151307()
                            mem[64] = _6420 + ceil32(return_data.size) + (32 * mem[_6420 + mem[_6420]]) + 32
                            mem[_6420 + ceil32(return_data.size)] = _6446
                            require return_data.size >= _6432 + (32 * _6446) + 32
                            t = _6420 + _6432 + 32
                            u = _6420 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _6446:
                                mem[u] = mem[t]
                                _5399 = mem[96]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 1 < _6446
                            require idx < mem[_4428]
                            mem[(32 * idx) + _4428 + 32] = mem[_6420 + ceil32(return_data.size) + 64]
                    _5399 = mem[96]
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                while idx < mem[_4428]:
                    require idx < mem[_4428]
                    if mem[(32 * idx) + _4428 + 32] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < mem[_4428]
                    idx = idx + 1
                    s = mem[(32 * idx) + _4428 + 32]
                    continue 
                idx = 0
                while idx < mem[_4428]:
                    require idx < mem[_4428]
                    idx = idx + 1
                    continue 
                if 0 < mem[96]:
                    _7182 = mem[128]
                    _7205 = mem[96]
                    require mem[96] <= test266151307()
                    _7215 = mem[64]
                    mem[mem[64]] = mem[96]
                    mem[64] = mem[64] + (32 * _7205) + 32
                    if not _7205:
                        _7884 = mem[96]
                        idx = 0
                        while idx < _7884:
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7182):
                                require idx < mem[_7215]
                                mem[(32 * idx) + _7215 + 32] = 0
                            else:
                                require idx < mem[96]
                                _7927 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7997 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8036 = mem[_7997]
                                require mem[_7997] == mem[_7997 + 12 len 20]
                                mem[mem[64] + 4] = address(cd[132])
                                mem[mem[64] + 36] = address(cd[68])
                                require ext_code.size(address(_8036))
                                staticcall address(_8036).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[132]), address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8132 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8132] == mem[_8132 + 12 len 20]
                                if not mem[_8132 + 12 len 20]:
                                    require idx < mem[_7215]
                                    mem[(32 * idx) + _7215 + 32] = 0
                                else:
                                    _8154 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_8154]
                                    mem[_8154 + 32] = address(cd[132])
                                    require 1 < mem[_8154]
                                    mem[_8154 + 64] = address(cd[68])
                                    require 0 < mem[_8154]
                                    if address(cd[132]) != address(cd[132]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    require mem[_8154] - 1 < mem[_8154]
                                    if mem[(32 * mem[_8154] - 1) + _8154 + 44 len 20] != address(cd[68]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    mem[_8154 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_8154 + 100] = s
                                    mem[_8154 + 132] = 64
                                    mem[_8154 + 164] = mem[_8154]
                                    s = 0
                                    t = _8154 + 32
                                    u = _8154 + 196
                                    while s < mem[_8154]:
                                        mem[u] = mem[t + 12 len 20]
                                        _7884 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_7927))
                                    staticcall address(_7927).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8154 + (32 * mem[_8154]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8652 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8681 = mem[_8652]
                                    require mem[_8652] <= test266151307()
                                    require _8652 + return_data.size > _8652 + mem[_8652] + 31
                                    _8713 = mem[_8652 + mem[_8652]]
                                    require mem[_8652 + mem[_8652]] <= test266151307()
                                    require (32 * mem[_8652 + mem[_8652]]) + 32 >= 0 and _8652 + ceil32(return_data.size) + (32 * mem[_8652 + mem[_8652]]) + 32 <= test266151307()
                                    mem[64] = _8652 + ceil32(return_data.size) + (32 * mem[_8652 + mem[_8652]]) + 32
                                    mem[_8652 + ceil32(return_data.size)] = _8713
                                    require return_data.size >= _8681 + (32 * _8713) + 32
                                    t = _8652 + _8681 + 32
                                    u = _8652 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _8713:
                                        mem[u] = mem[t]
                                        _7884 = mem[96]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 1 < _8713
                                    require idx < mem[_7215]
                                    mem[(32 * idx) + _7215 + 32] = mem[_8652 + ceil32(return_data.size) + 64]
                            _7884 = mem[96]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7215 + 32 len 32 * _7205] = call.data[calldata.size len 32 * _7205]
                        _7885 = mem[96]
                        idx = 0
                        while idx < _7885:
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7182):
                                require idx < mem[_7215]
                                mem[(32 * idx) + _7215 + 32] = 0
                            else:
                                require idx < mem[96]
                                _7929 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8001 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8037 = mem[_8001]
                                require mem[_8001] == mem[_8001 + 12 len 20]
                                mem[mem[64] + 4] = address(cd[132])
                                mem[mem[64] + 36] = address(cd[68])
                                require ext_code.size(address(_8037))
                                staticcall address(_8037).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[132]), address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8133 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8133] == mem[_8133 + 12 len 20]
                                if not mem[_8133 + 12 len 20]:
                                    require idx < mem[_7215]
                                    mem[(32 * idx) + _7215 + 32] = 0
                                else:
                                    _8158 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_8158]
                                    mem[_8158 + 32] = address(cd[132])
                                    require 1 < mem[_8158]
                                    mem[_8158 + 64] = address(cd[68])
                                    require 0 < mem[_8158]
                                    if address(cd[132]) != address(cd[132]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    require mem[_8158] - 1 < mem[_8158]
                                    if mem[(32 * mem[_8158] - 1) + _8158 + 44 len 20] != address(cd[68]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    mem[_8158 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_8158 + 100] = s
                                    mem[_8158 + 132] = 64
                                    mem[_8158 + 164] = mem[_8158]
                                    s = 0
                                    t = _8158 + 32
                                    u = _8158 + 196
                                    while s < mem[_8158]:
                                        mem[u] = mem[t + 12 len 20]
                                        _7885 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_7929))
                                    staticcall address(_7929).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8158 + (32 * mem[_8158]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8656 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8684 = mem[_8656]
                                    require mem[_8656] <= test266151307()
                                    require _8656 + return_data.size > _8656 + mem[_8656] + 31
                                    _8716 = mem[_8656 + mem[_8656]]
                                    require mem[_8656 + mem[_8656]] <= test266151307()
                                    require (32 * mem[_8656 + mem[_8656]]) + 32 >= 0 and _8656 + ceil32(return_data.size) + (32 * mem[_8656 + mem[_8656]]) + 32 <= test266151307()
                                    mem[64] = _8656 + ceil32(return_data.size) + (32 * mem[_8656 + mem[_8656]]) + 32
                                    mem[_8656 + ceil32(return_data.size)] = _8716
                                    require return_data.size >= _8684 + (32 * _8716) + 32
                                    t = _8656 + _8684 + 32
                                    u = _8656 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _8716:
                                        mem[u] = mem[t]
                                        _7885 = mem[96]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 1 < _8716
                                    require idx < mem[_7215]
                                    mem[(32 * idx) + _7215 + 32] = mem[_8656 + ceil32(return_data.size) + 64]
                            _7885 = mem[96]
                            idx = idx + 1
                            continue 
                    idx = 0
                    s = 0
                    while idx < mem[_7215]:
                        require idx < mem[_7215]
                        if mem[(32 * idx) + _7215 + 32] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < mem[_7215]
                        idx = idx + 1
                        s = mem[(32 * idx) + _7215 + 32]
                        continue 
                    idx = 0
                    while idx < mem[_7215]:
                        require idx < mem[_7215]
                        idx = idx + 1
                        continue 
                    if 0 < mem[96]:
                        return cd[4], s, address(_4410), address(_7182), mem[140 len 20]
    else:
        mem[(32 * ('cd', 36).length) + 320 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                require idx < mem[(32 * ('cd', 36).length) + 288]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 320] = 0
            else:
                require idx < mem[96]
                _2261 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2281 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2287 = mem[_2281]
                require mem[_2281] == mem[_2281 + 12 len 20]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = address(cd[100])
                require ext_code.size(address(_2287))
                staticcall address(_2287).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[68]), address(cd[100])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2321 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2321] == mem[_2321 + 12 len 20]
                if not mem[_2321 + 12 len 20]:
                    require idx < mem[(32 * ('cd', 36).length) + 288]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 320] = 0
                else:
                    _2396 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2396]
                    mem[_2396 + 32] = address(cd[68])
                    require 1 < mem[_2396]
                    mem[_2396 + 64] = address(cd[100])
                    require 0 < mem[_2396]
                    if address(cd[68]) != address(cd[68]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    require mem[_2396] - 1 < mem[_2396]
                    if mem[(32 * mem[_2396] - 1) + _2396 + 44 len 20] != address(cd[100]):
                        revert with 0, 'ERR_PATH_TOKENS'
                    mem[_2396 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2396 + 100] = cd[4]
                    mem[_2396 + 132] = 64
                    mem[_2396 + 164] = mem[_2396]
                    s = 0
                    t = _2396 + 32
                    u = _2396 + 196
                    while s < mem[_2396]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_2261))
                    staticcall address(_2261).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2396 + (32 * mem[_2396]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3398 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3402 = mem[_3398]
                    require mem[_3398] <= test266151307()
                    require _3398 + return_data.size > _3398 + mem[_3398] + 31
                    _3410 = mem[_3398 + mem[_3398]]
                    require mem[_3398 + mem[_3398]] <= test266151307()
                    require (32 * mem[_3398 + mem[_3398]]) + 32 >= 0 and _3398 + ceil32(return_data.size) + (32 * mem[_3398 + mem[_3398]]) + 32 <= test266151307()
                    mem[64] = _3398 + ceil32(return_data.size) + (32 * mem[_3398 + mem[_3398]]) + 32
                    mem[_3398 + ceil32(return_data.size)] = _3410
                    require return_data.size >= _3402 + (32 * _3410) + 32
                    t = _3398 + _3402 + 32
                    u = _3398 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _3410:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _3410
                    require idx < mem[(32 * ('cd', 36).length) + 288]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 320] = mem[_3398 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < mem[(32 * ('cd', 36).length) + 288]:
            require idx < mem[(32 * ('cd', 36).length) + 288]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 320] <= s:
                idx = idx + 1
                s = s
                continue 
            require idx < mem[(32 * ('cd', 36).length) + 288]
            idx = idx + 1
            s = mem[(32 * idx) + (32 * ('cd', 36).length) + 320]
            continue 
        idx = 0
        while idx < mem[(32 * ('cd', 36).length) + 288]:
            require idx < mem[(32 * ('cd', 36).length) + 288]
            idx = idx + 1
            continue 
        if 0 < mem[96]:
            _4414 = mem[128]
            _4425 = mem[96]
            require mem[96] <= test266151307()
            _4429 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _4425) + 32
            if not _4425:
                _5400 = mem[96]
                idx = 0
                while idx < _5400:
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == address(_4414):
                        require idx < mem[_4429]
                        mem[(32 * idx) + _4429 + 32] = 0
                    else:
                        require idx < mem[96]
                        _5423 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5476 = mem[_5461]
                        require mem[_5461] == mem[_5461 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[100])
                        mem[mem[64] + 36] = address(cd[132])
                        require ext_code.size(address(_5476))
                        staticcall address(_5476).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[100]), address(cd[132])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5540 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5540] == mem[_5540 + 12 len 20]
                        if not mem[_5540 + 12 len 20]:
                            require idx < mem[_4429]
                            mem[(32 * idx) + _4429 + 32] = 0
                        else:
                            _5735 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_5735]
                            mem[_5735 + 32] = address(cd[100])
                            require 1 < mem[_5735]
                            mem[_5735 + 64] = address(cd[132])
                            require 0 < mem[_5735]
                            if address(cd[100]) != address(cd[100]):
                                revert with 0, 'ERR_PATH_TOKENS'
                            require mem[_5735] - 1 < mem[_5735]
                            if mem[(32 * mem[_5735] - 1) + _5735 + 44 len 20] != address(cd[132]):
                                revert with 0, 'ERR_PATH_TOKENS'
                            mem[_5735 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_5735 + 100] = s
                            mem[_5735 + 132] = 64
                            mem[_5735 + 164] = mem[_5735]
                            s = 0
                            t = _5735 + 32
                            u = _5735 + 196
                            while s < mem[_5735]:
                                mem[u] = mem[t + 12 len 20]
                                _5400 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_5423))
                            staticcall address(_5423).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5735 + (32 * mem[_5735]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6424 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6434 = mem[_6424]
                            require mem[_6424] <= test266151307()
                            require _6424 + return_data.size > _6424 + mem[_6424] + 31
                            _6449 = mem[_6424 + mem[_6424]]
                            require mem[_6424 + mem[_6424]] <= test266151307()
                            require (32 * mem[_6424 + mem[_6424]]) + 32 >= 0 and _6424 + ceil32(return_data.size) + (32 * mem[_6424 + mem[_6424]]) + 32 <= test266151307()
                            mem[64] = _6424 + ceil32(return_data.size) + (32 * mem[_6424 + mem[_6424]]) + 32
                            mem[_6424 + ceil32(return_data.size)] = _6449
                            require return_data.size >= _6434 + (32 * _6449) + 32
                            t = _6424 + _6434 + 32
                            u = _6424 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _6449:
                                mem[u] = mem[t]
                                _5400 = mem[96]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 1 < _6449
                            require idx < mem[_4429]
                            mem[(32 * idx) + _4429 + 32] = mem[_6424 + ceil32(return_data.size) + 64]
                    _5400 = mem[96]
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                while idx < mem[_4429]:
                    require idx < mem[_4429]
                    if mem[(32 * idx) + _4429 + 32] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < mem[_4429]
                    idx = idx + 1
                    s = mem[(32 * idx) + _4429 + 32]
                    continue 
                idx = 0
                while idx < mem[_4429]:
                    require idx < mem[_4429]
                    idx = idx + 1
                    continue 
                if 0 < mem[96]:
                    _7186 = mem[128]
                    _7208 = mem[96]
                    require mem[96] <= test266151307()
                    _7216 = mem[64]
                    mem[mem[64]] = mem[96]
                    mem[64] = mem[64] + (32 * _7208) + 32
                    if not _7208:
                        _7886 = mem[96]
                        idx = 0
                        while idx < _7886:
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7186):
                                require idx < mem[_7216]
                                mem[(32 * idx) + _7216 + 32] = 0
                            else:
                                require idx < mem[96]
                                _7931 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8005 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8038 = mem[_8005]
                                require mem[_8005] == mem[_8005 + 12 len 20]
                                mem[mem[64] + 4] = address(cd[132])
                                mem[mem[64] + 36] = address(cd[68])
                                require ext_code.size(address(_8038))
                                staticcall address(_8038).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[132]), address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8134 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8134] == mem[_8134 + 12 len 20]
                                if not mem[_8134 + 12 len 20]:
                                    require idx < mem[_7216]
                                    mem[(32 * idx) + _7216 + 32] = 0
                                else:
                                    _8162 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_8162]
                                    mem[_8162 + 32] = address(cd[132])
                                    require 1 < mem[_8162]
                                    mem[_8162 + 64] = address(cd[68])
                                    require 0 < mem[_8162]
                                    if address(cd[132]) != address(cd[132]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    require mem[_8162] - 1 < mem[_8162]
                                    if mem[(32 * mem[_8162] - 1) + _8162 + 44 len 20] != address(cd[68]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    mem[_8162 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_8162 + 100] = s
                                    mem[_8162 + 132] = 64
                                    mem[_8162 + 164] = mem[_8162]
                                    s = 0
                                    t = _8162 + 32
                                    u = _8162 + 196
                                    while s < mem[_8162]:
                                        mem[u] = mem[t + 12 len 20]
                                        _7886 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_7931))
                                    staticcall address(_7931).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8162 + (32 * mem[_8162]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8660 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8687 = mem[_8660]
                                    require mem[_8660] <= test266151307()
                                    require _8660 + return_data.size > _8660 + mem[_8660] + 31
                                    _8719 = mem[_8660 + mem[_8660]]
                                    require mem[_8660 + mem[_8660]] <= test266151307()
                                    require (32 * mem[_8660 + mem[_8660]]) + 32 >= 0 and _8660 + ceil32(return_data.size) + (32 * mem[_8660 + mem[_8660]]) + 32 <= test266151307()
                                    mem[64] = _8660 + ceil32(return_data.size) + (32 * mem[_8660 + mem[_8660]]) + 32
                                    mem[_8660 + ceil32(return_data.size)] = _8719
                                    require return_data.size >= _8687 + (32 * _8719) + 32
                                    t = _8660 + _8687 + 32
                                    u = _8660 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _8719:
                                        mem[u] = mem[t]
                                        _7886 = mem[96]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 1 < _8719
                                    require idx < mem[_7216]
                                    mem[(32 * idx) + _7216 + 32] = mem[_8660 + ceil32(return_data.size) + 64]
                            _7886 = mem[96]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7216 + 32 len 32 * _7208] = call.data[calldata.size len 32 * _7208]
                        _7887 = mem[96]
                        idx = 0
                        while idx < _7887:
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7186):
                                require idx < mem[_7216]
                                mem[(32 * idx) + _7216 + 32] = 0
                            else:
                                require idx < mem[96]
                                _7933 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8009 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8039 = mem[_8009]
                                require mem[_8009] == mem[_8009 + 12 len 20]
                                mem[mem[64] + 4] = address(cd[132])
                                mem[mem[64] + 36] = address(cd[68])
                                require ext_code.size(address(_8039))
                                staticcall address(_8039).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[132]), address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8135 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8135] == mem[_8135 + 12 len 20]
                                if not mem[_8135 + 12 len 20]:
                                    require idx < mem[_7216]
                                    mem[(32 * idx) + _7216 + 32] = 0
                                else:
                                    _8166 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_8166]
                                    mem[_8166 + 32] = address(cd[132])
                                    require 1 < mem[_8166]
                                    mem[_8166 + 64] = address(cd[68])
                                    require 0 < mem[_8166]
                                    if address(cd[132]) != address(cd[132]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    require mem[_8166] - 1 < mem[_8166]
                                    if mem[(32 * mem[_8166] - 1) + _8166 + 44 len 20] != address(cd[68]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    mem[_8166 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_8166 + 100] = s
                                    mem[_8166 + 132] = 64
                                    mem[_8166 + 164] = mem[_8166]
                                    s = 0
                                    t = _8166 + 32
                                    u = _8166 + 196
                                    while s < mem[_8166]:
                                        mem[u] = mem[t + 12 len 20]
                                        _7887 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_7933))
                                    staticcall address(_7933).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8166 + (32 * mem[_8166]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8664 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8690 = mem[_8664]
                                    require mem[_8664] <= test266151307()
                                    require _8664 + return_data.size > _8664 + mem[_8664] + 31
                                    _8722 = mem[_8664 + mem[_8664]]
                                    require mem[_8664 + mem[_8664]] <= test266151307()
                                    require (32 * mem[_8664 + mem[_8664]]) + 32 >= 0 and _8664 + ceil32(return_data.size) + (32 * mem[_8664 + mem[_8664]]) + 32 <= test266151307()
                                    mem[64] = _8664 + ceil32(return_data.size) + (32 * mem[_8664 + mem[_8664]]) + 32
                                    mem[_8664 + ceil32(return_data.size)] = _8722
                                    require return_data.size >= _8690 + (32 * _8722) + 32
                                    t = _8664 + _8690 + 32
                                    u = _8664 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _8722:
                                        mem[u] = mem[t]
                                        _7887 = mem[96]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 1 < _8722
                                    require idx < mem[_7216]
                                    mem[(32 * idx) + _7216 + 32] = mem[_8664 + ceil32(return_data.size) + 64]
                            _7887 = mem[96]
                            idx = idx + 1
                            continue 
                    idx = 0
                    s = 0
                    while idx < mem[_7216]:
                        require idx < mem[_7216]
                        if mem[(32 * idx) + _7216 + 32] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < mem[_7216]
                        idx = idx + 1
                        s = mem[(32 * idx) + _7216 + 32]
                        continue 
                    idx = 0
                    while idx < mem[_7216]:
                        require idx < mem[_7216]
                        idx = idx + 1
                        continue 
                    if 0 < mem[96]:
                        return cd[4], s, address(_4414), address(_7186), mem[140 len 20]
            else:
                mem[_4429 + 32 len 32 * _4425] = call.data[calldata.size len 32 * _4425]
                _5401 = mem[96]
                idx = 0
                while idx < _5401:
                    require idx < mem[96]
                    if mem[(32 * idx) + 140 len 20] == address(_4414):
                        require idx < mem[_4429]
                        mem[(32 * idx) + _4429 + 32] = 0
                    else:
                        require idx < mem[96]
                        _5425 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5477 = mem[_5465]
                        require mem[_5465] == mem[_5465 + 12 len 20]
                        mem[mem[64] + 4] = address(cd[100])
                        mem[mem[64] + 36] = address(cd[132])
                        require ext_code.size(address(_5477))
                        staticcall address(_5477).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[100]), address(cd[132])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5545 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5545] == mem[_5545 + 12 len 20]
                        if not mem[_5545 + 12 len 20]:
                            require idx < mem[_4429]
                            mem[(32 * idx) + _4429 + 32] = 0
                        else:
                            _5746 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_5746]
                            mem[_5746 + 32] = address(cd[100])
                            require 1 < mem[_5746]
                            mem[_5746 + 64] = address(cd[132])
                            require 0 < mem[_5746]
                            if address(cd[100]) != address(cd[100]):
                                revert with 0, 'ERR_PATH_TOKENS'
                            require mem[_5746] - 1 < mem[_5746]
                            if mem[(32 * mem[_5746] - 1) + _5746 + 44 len 20] != address(cd[132]):
                                revert with 0, 'ERR_PATH_TOKENS'
                            mem[_5746 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_5746 + 100] = s
                            mem[_5746 + 132] = 64
                            mem[_5746 + 164] = mem[_5746]
                            s = 0
                            t = _5746 + 32
                            u = _5746 + 196
                            while s < mem[_5746]:
                                mem[u] = mem[t + 12 len 20]
                                _5401 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_5425))
                            staticcall address(_5425).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5746 + (32 * mem[_5746]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6428 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6436 = mem[_6428]
                            require mem[_6428] <= test266151307()
                            require _6428 + return_data.size > _6428 + mem[_6428] + 31
                            _6452 = mem[_6428 + mem[_6428]]
                            require mem[_6428 + mem[_6428]] <= test266151307()
                            require (32 * mem[_6428 + mem[_6428]]) + 32 >= 0 and _6428 + ceil32(return_data.size) + (32 * mem[_6428 + mem[_6428]]) + 32 <= test266151307()
                            mem[64] = _6428 + ceil32(return_data.size) + (32 * mem[_6428 + mem[_6428]]) + 32
                            mem[_6428 + ceil32(return_data.size)] = _6452
                            require return_data.size >= _6436 + (32 * _6452) + 32
                            t = _6428 + _6436 + 32
                            u = _6428 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _6452:
                                mem[u] = mem[t]
                                _5401 = mem[96]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require 1 < _6452
                            require idx < mem[_4429]
                            mem[(32 * idx) + _4429 + 32] = mem[_6428 + ceil32(return_data.size) + 64]
                    _5401 = mem[96]
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                while idx < mem[_4429]:
                    require idx < mem[_4429]
                    if mem[(32 * idx) + _4429 + 32] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < mem[_4429]
                    idx = idx + 1
                    s = mem[(32 * idx) + _4429 + 32]
                    continue 
                idx = 0
                while idx < mem[_4429]:
                    require idx < mem[_4429]
                    idx = idx + 1
                    continue 
                if 0 < mem[96]:
                    _7190 = mem[128]
                    _7211 = mem[96]
                    require mem[96] <= test266151307()
                    _7217 = mem[64]
                    mem[mem[64]] = mem[96]
                    mem[64] = mem[64] + (32 * _7211) + 32
                    if not _7211:
                        _7888 = mem[96]
                        idx = 0
                        while idx < _7888:
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7190):
                                require idx < mem[_7217]
                                mem[(32 * idx) + _7217 + 32] = 0
                            else:
                                require idx < mem[96]
                                _7935 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8013 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8040 = mem[_8013]
                                require mem[_8013] == mem[_8013 + 12 len 20]
                                mem[mem[64] + 4] = address(cd[132])
                                mem[mem[64] + 36] = address(cd[68])
                                require ext_code.size(address(_8040))
                                staticcall address(_8040).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[132]), address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8136 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8136] == mem[_8136 + 12 len 20]
                                if not mem[_8136 + 12 len 20]:
                                    require idx < mem[_7217]
                                    mem[(32 * idx) + _7217 + 32] = 0
                                else:
                                    _8170 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_8170]
                                    mem[_8170 + 32] = address(cd[132])
                                    require 1 < mem[_8170]
                                    mem[_8170 + 64] = address(cd[68])
                                    require 0 < mem[_8170]
                                    if address(cd[132]) != address(cd[132]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    require mem[_8170] - 1 < mem[_8170]
                                    if mem[(32 * mem[_8170] - 1) + _8170 + 44 len 20] != address(cd[68]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    mem[_8170 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_8170 + 100] = s
                                    mem[_8170 + 132] = 64
                                    mem[_8170 + 164] = mem[_8170]
                                    s = 0
                                    t = _8170 + 32
                                    u = _8170 + 196
                                    while s < mem[_8170]:
                                        mem[u] = mem[t + 12 len 20]
                                        _7888 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_7935))
                                    staticcall address(_7935).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8170 + (32 * mem[_8170]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8668 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8693 = mem[_8668]
                                    require mem[_8668] <= test266151307()
                                    require _8668 + return_data.size > _8668 + mem[_8668] + 31
                                    _8725 = mem[_8668 + mem[_8668]]
                                    require mem[_8668 + mem[_8668]] <= test266151307()
                                    require (32 * mem[_8668 + mem[_8668]]) + 32 >= 0 and _8668 + ceil32(return_data.size) + (32 * mem[_8668 + mem[_8668]]) + 32 <= test266151307()
                                    mem[64] = _8668 + ceil32(return_data.size) + (32 * mem[_8668 + mem[_8668]]) + 32
                                    mem[_8668 + ceil32(return_data.size)] = _8725
                                    require return_data.size >= _8693 + (32 * _8725) + 32
                                    t = _8668 + _8693 + 32
                                    u = _8668 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _8725:
                                        mem[u] = mem[t]
                                        _7888 = mem[96]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 1 < _8725
                                    require idx < mem[_7217]
                                    mem[(32 * idx) + _7217 + 32] = mem[_8668 + ceil32(return_data.size) + 64]
                            _7888 = mem[96]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_7217 + 32 len 32 * _7211] = call.data[calldata.size len 32 * _7211]
                        _7889 = mem[96]
                        idx = 0
                        while idx < _7889:
                            require idx < mem[96]
                            if mem[(32 * idx) + 140 len 20] == address(_7190):
                                require idx < mem[_7217]
                                mem[(32 * idx) + _7217 + 32] = 0
                            else:
                                require idx < mem[96]
                                _7937 = mem[(32 * idx) + 128]
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8017 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8041 = mem[_8017]
                                require mem[_8017] == mem[_8017 + 12 len 20]
                                mem[mem[64] + 4] = address(cd[132])
                                mem[mem[64] + 36] = address(cd[68])
                                require ext_code.size(address(_8041))
                                staticcall address(_8041).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[132]), address(cd[68])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8137 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8137] == mem[_8137 + 12 len 20]
                                if not mem[_8137 + 12 len 20]:
                                    require idx < mem[_7217]
                                    mem[(32 * idx) + _7217 + 32] = 0
                                else:
                                    _8174 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_8174]
                                    mem[_8174 + 32] = address(cd[132])
                                    require 1 < mem[_8174]
                                    mem[_8174 + 64] = address(cd[68])
                                    require 0 < mem[_8174]
                                    if address(cd[132]) != address(cd[132]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    require mem[_8174] - 1 < mem[_8174]
                                    if mem[(32 * mem[_8174] - 1) + _8174 + 44 len 20] != address(cd[68]):
                                        revert with 0, 'ERR_PATH_TOKENS'
                                    mem[_8174 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_8174 + 100] = s
                                    mem[_8174 + 132] = 64
                                    mem[_8174 + 164] = mem[_8174]
                                    s = 0
                                    t = _8174 + 32
                                    u = _8174 + 196
                                    while s < mem[_8174]:
                                        mem[u] = mem[t + 12 len 20]
                                        _7889 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_7937))
                                    staticcall address(_7937).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8174 + (32 * mem[_8174]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8672 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8696 = mem[_8672]
                                    require mem[_8672] <= test266151307()
                                    require _8672 + return_data.size > _8672 + mem[_8672] + 31
                                    _8728 = mem[_8672 + mem[_8672]]
                                    require mem[_8672 + mem[_8672]] <= test266151307()
                                    require (32 * mem[_8672 + mem[_8672]]) + 32 >= 0 and _8672 + ceil32(return_data.size) + (32 * mem[_8672 + mem[_8672]]) + 32 <= test266151307()
                                    mem[64] = _8672 + ceil32(return_data.size) + (32 * mem[_8672 + mem[_8672]]) + 32
                                    mem[_8672 + ceil32(return_data.size)] = _8728
                                    require return_data.size >= _8696 + (32 * _8728) + 32
                                    t = _8672 + _8696 + 32
                                    u = _8672 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _8728:
                                        mem[u] = mem[t]
                                        _7889 = mem[96]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require 1 < _8728
                                    require idx < mem[_7217]
                                    mem[(32 * idx) + _7217 + 32] = mem[_8672 + ceil32(return_data.size) + 64]
                            _7889 = mem[96]
                            idx = idx + 1
                            continue 
                    idx = 0
                    s = 0
                    while idx < mem[_7217]:
                        require idx < mem[_7217]
                        if mem[(32 * idx) + _7217 + 32] <= s:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < mem[_7217]
                        idx = idx + 1
                        s = mem[(32 * idx) + _7217 + 32]
                        continue 
                    idx = 0
                    while idx < mem[_7217]:
                        require idx < mem[_7217]
                        idx = idx + 1
                        continue 
                    if 0 < mem[96]:
                        return cd[4], s, address(_4414), address(_7190), mem[140 len 20]
    revert
}



}
