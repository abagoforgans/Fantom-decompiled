contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        mem[160] = arg2
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[292] = arg5
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    else:
        if arg2 != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            mem[192] = arg2
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = arg4
            mem[324] = arg5
            mem[356] = block.timestamp
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = arg2
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = arg5
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
        staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _68 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _77 = mem[_68 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_68 + 192])] = mem[_68 + 224 len floor32(mem[_68 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _77) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _77) + ceil32(return_data.size) + 224
           len 32
    if arg2 != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
        staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _70 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _78 = mem[_70 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_70 + 224])] = mem[_70 + 256 len floor32(mem[_70 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        mem[(32 * _78) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
        return memory
          from (32 * _78) + ceil32(return_data.size) + 256
           len 32
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _72 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _79 = mem[_72 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_72 + 192])] = mem[_72 + 224 len floor32(mem[_72 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _79) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _79) + ceil32(return_data.size) + 224
       len 32
}



}
