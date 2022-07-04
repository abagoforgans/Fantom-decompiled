contract main {




// =====================  Runtime code  =====================


function sub_51967e5d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + 128] = 0
    if not arg3:
        call address(arg1) with:
           funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        if not ext_call.success:
            revert with 0, 'ecall2'
    else:
        call address(arg1) with:
           funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        if not ext_call.success:
            revert with 0, 'ecall1'
    ('bool', 'ext_call.success')
}

function sub_7ef0d9b8(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    if ext_call.return_data[12 len 20] == address(arg2):
        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args Mask(112, 0, ext_call.return_data[0]) - 1, 0, address(this.address), 128, 64, address(arg2), Mask(112, 0, ext_call.return_data[0]) - 1
    else:
        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, Mask(112, 0, ext_call.return_data[32]) - 1, address(this.address), 128, 64, address(arg2), Mask(112, 0, ext_call.return_data[32]) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 64
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        revert with 0, 'BlackTokenYes'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 128] = 68
    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 228 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0, ext_call.return_data[4 len 28], mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 228 len 28]
    call address(_3).mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 232 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
    else:
        mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 260] == bool(mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 260])
            if not mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != 0:
        revert with 0, 'BlackTokenYes0'
    revert with 0, 'BlackTokenNo'
}

function sub_df94108d(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 64
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        revert with 0, 'BlackTokenYes'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128] = 68
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0, ext_call.return_data[4 len 28], mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228 len 28]
    call address(_3).mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 232 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
        if arg2.length:
            require arg2.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
    else:
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260] == bool(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260])
            if not mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != 0:
        revert with 0, 'BlackTokenYes0'
    revert with 0, 'BlackTokenNo'
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 64
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        revert with 0, 'BlackTokenYes'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 128] = 68
    mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0, ext_call.return_data[4 len 28], mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228 len 28]
    call address(_3).mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 232 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
        if arg2.length:
            require arg2.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
    else:
        mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260] == bool(mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260])
            if not mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED_me'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != 0:
        revert with 0, 'BlackTokenYes0'
    revert with 0, 'BlackTokenNo'
}

function sub_3df7b78c(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[36]
    mem[132] = 64
    mem[164] = ('cd', 68).length
    idx = 0
    s = 196
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
           args cd[36], Array(len=('cd', 68).length, data=mem[196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _74 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
    _75 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
    require mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _75
    require return_data.size >= _74 + (32 * _75) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _75] = mem[_74 + 128 len 32 * _75]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _145 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _146 = mem[_145]
    require mem[_145] == mem[_145 + 12 len 20]
    require ('cd', 68).length - 1 <= test266151307()
    _147 = mem[64]
    mem[mem[64]] = ('cd', 68).length - 1
    mem[64] = mem[64] + (32 * ('cd', 68).length - 1) + 32
    if not ('cd', 68).length - 1:
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < ('cd', 68).length
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require idx + 1 < ('cd', 68).length
            require cd[((32 * idx + 1) + cd[68] + 36)] == address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[68] + 36)])
            require ext_code.size(address(_146))
            staticcall address(_146).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[68] + 36)]), address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _226 = mem[_224]
            require mem[_224] == mem[_224 + 12 len 20]
            require ext_code.size(mem[_224 + 12 len 20])
            staticcall mem[_224 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _232 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _233 = mem[_232]
            require mem[_232] == mem[_232 + 18 len 14]
            _237 = mem[_232 + 32]
            require mem[_232 + 32] == mem[_232 + 50 len 14]
            require mem[_232 + 64] == mem[_232 + 92 len 4]
            if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                require idx < mem[ceil32(return_data.size) + 96]
                _243 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                _247 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                _250 = mem[64]
                mem[64] = mem[64] + 96
                mem[_250] = address(_226)
                mem[_250 + 32] = Mask(112, 0, _233) + _243
                mem[_250 + 64] = Mask(112, 0, _237) - _247
                require idx < mem[_147]
                mem[(32 * idx) + _147 + 32] = _250
            else:
                require idx + 1 < mem[ceil32(return_data.size) + 96]
                _245 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                require idx < mem[ceil32(return_data.size) + 96]
                _248 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                _251 = mem[64]
                mem[64] = mem[64] + 96
                mem[_251] = address(_226)
                mem[_251 + 32] = Mask(112, 0, _237) - _245
                mem[_251 + 64] = Mask(112, 0, _233) + _248
                require idx < mem[_147]
                mem[(32 * idx) + _147 + 32] = _251
            idx = idx + 1
            continue 
        _208 = mem[64]
        mem[mem[64]] = 32
        _209 = mem[_147]
        mem[mem[64] + 32] = mem[_147]
        idx = 0
        s = _147 + 32
        t = mem[64] + 64
        while idx < _209:
            _267 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_267 + 32]
            mem[t + 64] = mem[_267 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _208 + (96 * _209) + -mem[64] + 64
    mem[64] = _147 + (32 * ('cd', 68).length - 1) + 128
    mem[_147 + (32 * ('cd', 68).length - 1) + 32] = 0
    mem[_147 + (32 * ('cd', 68).length - 1) + 64] = 0
    mem[_147 + (32 * ('cd', 68).length - 1) + 96] = 0
    mem[var47001] = _147 + (32 * ('cd', 68).length - 1) + 32
    s = var47001
    idx = var47002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_147 + (32 * ('cd', 68).length - 1) + 32] = 0
        mem[_147 + (32 * ('cd', 68).length - 1) + 64] = 0
        mem[_147 + (32 * ('cd', 68).length - 1) + 96] = 0
        mem[s + 32] = _147 + (32 * ('cd', 68).length - 1) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require idx + 1 < ('cd', 68).length
        require cd[((32 * idx + 1) + cd[68] + 36)] == address(cd[((32 * idx + 1) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[68] + 36)])
        require ext_code.size(address(_146))
        staticcall address(_146).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[68] + 36)]), address(cd[((32 * idx + 1) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _311 = mem[_310]
        require mem[_310] == mem[_310 + 12 len 20]
        require ext_code.size(mem[_310 + 12 len 20])
        staticcall mem[_310 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _314 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _315 = mem[_314]
        require mem[_314] == mem[_314 + 18 len 14]
        _316 = mem[_314 + 32]
        require mem[_314 + 32] == mem[_314 + 50 len 14]
        require mem[_314 + 64] == mem[_314 + 92 len 4]
        if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
            require idx < mem[ceil32(return_data.size) + 96]
            _320 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require idx + 1 < mem[ceil32(return_data.size) + 96]
            _324 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
            _326 = mem[64]
            mem[64] = mem[64] + 96
            mem[_326] = address(_311)
            mem[_326 + 32] = Mask(112, 0, _315) + _320
            mem[_326 + 64] = Mask(112, 0, _316) - _324
            require idx < mem[_147]
            mem[(32 * idx) + _147 + 32] = _326
        else:
            require idx + 1 < mem[ceil32(return_data.size) + 96]
            _322 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
            require idx < mem[ceil32(return_data.size) + 96]
            _325 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _327 = mem[64]
            mem[64] = mem[64] + 96
            mem[_327] = address(_311)
            mem[_327 + 32] = Mask(112, 0, _316) - _322
            mem[_327 + 64] = Mask(112, 0, _315) + _325
            require idx < mem[_147]
            mem[(32 * idx) + _147 + 32] = _327
        idx = idx + 1
        continue 
    _301 = mem[64]
    mem[mem[64]] = 32
    _302 = mem[_147]
    mem[mem[64] + 32] = mem[_147]
    idx = 0
    s = _147 + 32
    t = mem[64] + 64
    while idx < _302:
        _330 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_330 + 32]
        mem[t + 64] = mem[_330 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _301 + (96 * _302) + -mem[64] + 64
}



}
