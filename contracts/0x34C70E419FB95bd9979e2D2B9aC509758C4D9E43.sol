contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function bk_eth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bk(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approve(address arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = -1
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], -1
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function getReserves(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160]] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 64] = uint32(ext_call.return_data[64])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _52 = mem[(32 * arg1.length) + 128]
        s = mem[64] + 64
        idx = 0
        while idx < _52:
            _115 = mem[(32 * idx) + (32 * arg1.length) + 160]
            t = 0
            while t < 96:
                mem[2 * t] = mem[_115 + t]
                t = t + 32
                continue 
            t = 192
            idx = idx + 1
            continue 
    else:
        mem[64] = (64 * arg1.length) + 256
        mem[(64 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
        mem[var13001] = (64 * arg1.length) + 160
        s = var13001
        idx = var13002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(64 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (64 * arg1.length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _113 = mem[96]
        idx = 0
        while idx < _113:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160]] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 64] = uint32(ext_call.return_data[64])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _119 = mem[(32 * arg1.length) + 128]
        s = mem[64] + 64
        idx = 0
        while idx < _119:
            _140 = mem[(32 * idx) + (32 * arg1.length) + 160]
            t = 0
            while t < 96:
                mem[2 * t] = mem[_140 + t]
                t = t + 32
                continue 
            t = 192
            idx = idx + 1
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_6fb240ac(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0
    require arg5.length - 1 < arg5.length
    require 0 < arg4.length
    if mem[140 len 20] == mem[(32 * arg5.length - 1) + (32 * arg4.length) + 172 len 20]:
        if arg1 != 0x53c153a0df7e050bbefbb70ee9632061f12795fb:
            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = 0
            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = this.address
            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = block.timestamp + 3
            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = 128
            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg4.length
            mem[(32 * arg4.length) + (32 * arg5.length) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            require ext_code.size(arg1)
            call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value arg3 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 3, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg4.length) + 324 len (32 * arg4.length) - floor32(arg4.length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg5.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _112 = mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + 32 <= return_data.size
            require mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * arg4.length) + (32 * arg5.length) + 160] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * arg4.length) + (32 * arg5.length) + 160]) + 32 <= return_data.size
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * arg4.length) + (32 * arg5.length) + 160]
            _118 = mem[_112 + (32 * arg4.length) + (32 * arg5.length) + 160]
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len floor32(mem[_112 + (32 * arg4.length) + (32 * arg5.length) + 160])] = mem[_112 + (32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[_112 + (32 * arg4.length) + (32 * arg5.length) + 160])]
            mem[64] = (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192
            require mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160]
            if arg2 != 0x53c153a0df7e050bbefbb70ee9632061f12795fb:
                _208 = mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 196] = _208
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 228] = 0
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 292] = this.address
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 324] = block.timestamp + 3
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 260] = 160
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 356] = arg5.length
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 388 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                require ext_code.size(arg2)
                call arg2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _208, 0, 160, address(this.address), block.timestamp + 3, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + floor32(arg5.length) + 388 len (32 * arg5.length) - floor32(arg5.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _288 = mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _208) >> 32
                require mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _208) >> 32 <= 4294967296
                require mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _208) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _208) >> 32 + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _208) >> 32 + (32 * mem[mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _208) >> 32 + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _208) >> 32 + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
                mem[64] = (32 * mem[_288 + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224
            else:
                _212 = mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 196] = _212
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 228] = 0
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 292] = this.address
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 324] = block.timestamp + 3
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 260] = 160
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 356] = arg5.length
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 388 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                require ext_code.size(arg2)
                call arg2.0xe932f3ac with:
                     gas gas_remaining wei
                    args _212, 0, 160, address(this.address), block.timestamp + 3, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + floor32(arg5.length) + 388 len (32 * arg5.length) - floor32(arg5.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _290 = mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _212) >> 32
                require mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _212) >> 32 <= 4294967296
                require mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _212) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _212) >> 32 + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _212) >> 32 + (32 * mem[mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _212) >> 32 + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _212) >> 32 + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
                mem[64] = (32 * mem[_290 + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224
            require mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192]
            if mem[(32 * mem[(32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _118) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] <= arg3:
                revert with 0, 'n'
        else:
            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0x1550f83600000000000000000000000000000000000000000000000000000000
            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = 0
            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = this.address
            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = block.timestamp + 3
            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = 128
            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg4.length
            mem[(32 * arg4.length) + (32 * arg5.length) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            require ext_code.size(arg1)
            call arg1.0x1550f836 with:
               value arg3 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 3, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg4.length) + 324 len (32 * arg4.length) - floor32(arg4.length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg4.length) + (32 * arg5.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _114 = mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0
            require mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 <= 4294967296
            require mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + 32 <= return_data.size
            require mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * arg4.length) + (32 * arg5.length) + 160] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * arg4.length) + (32 * arg5.length) + 160]) + 32 <= return_data.size
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], 0 + (32 * arg4.length) + (32 * arg5.length) + 160]
            _119 = mem[_114 + (32 * arg4.length) + (32 * arg5.length) + 160]
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len floor32(mem[_114 + (32 * arg4.length) + (32 * arg5.length) + 160])] = mem[_114 + (32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[_114 + (32 * arg4.length) + (32 * arg5.length) + 160])]
            mem[64] = (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192
            require mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160]
            if arg2 != 0x53c153a0df7e050bbefbb70ee9632061f12795fb:
                _216 = mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 196] = _216
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 228] = 0
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 292] = this.address
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 324] = block.timestamp + 3
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 260] = 160
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 356] = arg5.length
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 388 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                require ext_code.size(arg2)
                call arg2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _216, 0, 160, address(this.address), block.timestamp + 3, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + floor32(arg5.length) + 388 len (32 * arg5.length) - floor32(arg5.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _292 = mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _216) >> 32
                require mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _216) >> 32 <= 4294967296
                require mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _216) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _216) >> 32 + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _216) >> 32 + (32 * mem[mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _216) >> 32 + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _216) >> 32 + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
                mem[64] = (32 * mem[_292 + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224
            else:
                _220 = mem[(32 * mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 196] = _220
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 228] = 0
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 292] = this.address
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 324] = block.timestamp + 3
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 260] = 160
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 356] = arg5.length
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 388 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                require ext_code.size(arg2)
                call arg2.0xe932f3ac with:
                     gas gas_remaining wei
                    args _220, 0, 160, address(this.address), block.timestamp + 3, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + floor32(arg5.length) + 388 len (32 * arg5.length) - floor32(arg5.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _294 = mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _220) >> 32
                require mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _220) >> 32 <= 4294967296
                require mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _220) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _220) >> 32 + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _220) >> 32 + (32 * mem[mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _220) >> 32 + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _220) >> 32 + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
                mem[64] = (32 * mem[_294 + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224
            require mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192]
            if mem[(32 * mem[(32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _119) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] <= arg3:
                revert with 0, 'n'
}



}
