contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address stor1;
uint256 geUnlockTime;
array of struct sub_921c649e;

function owner() payable {
    return owner
}

function sub_921c649e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_921c649e.length
    return sub_921c649e[arg1].field_0
}

function geUnlockTime() payable {
    return geUnlockTime
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTokenPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(112, 0, ext_call.return_data[32])
    return (arg2 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
}

function sub_153e500e(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + 132] = arg2
    mem[(32 * arg4.length) + 164] = arg3
    mem[(32 * arg4.length) + 228] = arg5
    mem[(32 * arg4.length) + 260] = arg6
    mem[(32 * arg4.length) + 196] = 160
    mem[(32 * arg4.length) + 292] = arg4.length
    mem[(32 * arg4.length) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 324 len (32 * arg4.length) - floor32(arg4.length)]), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128] <= 4294967296 and mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg4.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg4.length) + 128]) + 32 <= return_data.size
}

function sub_810b6f88(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xad84341756bf337f5a0164515b1f6f993d194e1f)
    call 0xad84341756bf337f5a0164515b1f6f993d194e1f.increaseAllowance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = sub_921c649e.length
    if not sub_921c649e.length:
        require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
        staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, 64, sub_921c649e.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _12 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]) + 32 <= return_data.size
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
        _15 = mem[_12 + (32 * arg2.length) + 128]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[_12 + (32 * arg2.length) + 128])] = mem[_12 + (32 * arg2.length) + 160 len floor32(mem[_12 + (32 * arg2.length) + 128])]
        require sub_921c649e.length - 1 < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
        _59 = mem[(32 * sub_921c649e.length - 1) + (32 * arg2.length) + ceil32(return_data.size) + 160]
        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 997 * _59 / 1000
        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 260] = this.address
        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg4
        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 160
        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 324] = sub_921c649e.length
        if not sub_921c649e.length:
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            call 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 997 * _59 / 1000, 160, address(this.address), arg4, sub_921c649e.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _64 = mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160]) + 32 <= return_data.size
            mem[(32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160]
            _67 = mem[_64 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160]
            mem[(32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_64 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160])] = mem[_64 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[_64 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160])]
            mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 196] = _59
            mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 228] = 64
            mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 260] = arg2.length
            mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _59, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _186 = mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32
            require mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 <= 4294967296
            require mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + (32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + (32 * mem[mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + (32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]) + 32 <= return_data.size
            mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + (32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]
            _194 = mem[_186 + (32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[_186 + (32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192])] = mem[_186 + (32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_186 + (32 * _67) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192])]
            require arg2.length - 1 < mem[(32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192]
            _289 = mem[(32 * arg2.length - 1) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 260] = 997 * _289 / 1000
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 356] = arg4
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 292] = 160
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 388] = arg2.length
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 420 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 997 * _289 / 1000, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + floor32(arg2.length) + 420 len (32 * arg2.length) - floor32(arg2.length)]), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (6 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _194) + (32 * _67) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
        else:
            mem[0] = 3
            mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 356] = address(sub_921c649e.field_0)
            idx = (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 356
            s = 0
            while (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + (32 * sub_921c649e.length) + 356 > idx + 32:
                mem[idx + 32] = sub_921c649e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            call 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 997 * _59 / 1000, Array(len=sub_921c649e.length, data=mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 32 * sub_921c649e.length]), address(this.address), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _183 = mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160]) + 32 <= return_data.size
            mem[(32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160]
            _192 = mem[_183 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160]
            mem[(32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_183 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160])] = mem[_183 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[_183 + (32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160])]
            mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 196] = _59
            mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 228] = 64
            mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 260] = arg2.length
            mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _59, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _372 = mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32
            require mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 <= 4294967296
            require mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + (32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + (32 * mem[mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + (32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]) + 32 <= return_data.size
            mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _59) >> 32 + (32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]
            _382 = mem[_372 + (32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[_372 + (32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192])] = mem[_372 + (32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_372 + (32 * _192) + (32 * _15) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192])]
            require arg2.length - 1 < mem[(32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192]
            _464 = mem[(32 * arg2.length - 1) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 260] = 997 * _464 / 1000
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 356] = arg4
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 292] = 160
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 388] = arg2.length
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 420 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 997 * _464 / 1000, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + floor32(arg2.length) + 420 len (32 * arg2.length) - floor32(arg2.length)]), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (6 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _382) + (32 * _192) + (32 * _15) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
    else:
        mem[0] = 3
        mem[(32 * arg2.length) + 228] = address(sub_921c649e.field_0)
        idx = (32 * arg2.length) + 228
        s = 0
        while (32 * arg2.length) + (32 * sub_921c649e.length) + 228 > idx + 32:
            mem[idx + 32] = sub_921c649e[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
        staticcall 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=sub_921c649e.length, data=mem[(32 * arg2.length) + 228 len 32 * sub_921c649e.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _106 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]) + 32 <= return_data.size
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
        _112 = mem[_106 + (32 * arg2.length) + 128]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[_106 + (32 * arg2.length) + 128])] = mem[_106 + (32 * arg2.length) + 160 len floor32(mem[_106 + (32 * arg2.length) + 128])]
        require sub_921c649e.length - 1 < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
        _181 = mem[(32 * sub_921c649e.length - 1) + (32 * arg2.length) + ceil32(return_data.size) + 160]
        mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
        mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 997 * _181 / 1000
        mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 260] = this.address
        mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg4
        mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 160
        mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 324] = sub_921c649e.length
        if not sub_921c649e.length:
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            call 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 997 * _181 / 1000, 160, address(this.address), arg4, sub_921c649e.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _195 = mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160]) + 32 <= return_data.size
            mem[(32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160]
            _210 = mem[_195 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160]
            mem[(32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_195 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160])] = mem[_195 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[_195 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160])]
            mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 196] = _181
            mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 228] = 64
            mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 260] = arg2.length
            mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _181, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _374 = mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32
            require mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 <= 4294967296
            require mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + (32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + (32 * mem[mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + (32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]) + 32 <= return_data.size
            mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + (32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]
            _383 = mem[_374 + (32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[_374 + (32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192])] = mem[_374 + (32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_374 + (32 * _210) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192])]
            require arg2.length - 1 < mem[(32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192]
            _467 = mem[(32 * arg2.length - 1) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 260] = 997 * _467 / 1000
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 356] = arg4
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 292] = 160
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 388] = arg2.length
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 420 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 997 * _467 / 1000, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + floor32(arg2.length) + 420 len (32 * arg2.length) - floor32(arg2.length)]), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (6 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _383) + (32 * _210) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
        else:
            mem[0] = 3
            mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 356] = address(sub_921c649e.field_0)
            idx = (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 356
            s = 0
            while (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + (32 * sub_921c649e.length) + 356 > idx + 32:
                mem[idx + 32] = sub_921c649e[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0x67a937ea41cd05ec8c832a044afc0100f30aa4b5)
            call 0x67a937ea41cd05ec8c832a044afc0100f30aa4b5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 997 * _181 / 1000, Array(len=sub_921c649e.length, data=mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 32 * sub_921c649e.length]), address(this.address), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _368 = mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160]) + 32 <= return_data.size
            mem[(32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160]
            _380 = mem[_368 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160]
            mem[(32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_368 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160])] = mem[_368 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[_368 + (32 * _112) + (32 * arg2.length) + ceil32(return_data.size) + 160])]
            mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 196] = _181
            mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 228] = 64
            mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 260] = arg2.length
            mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _181, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _535 = mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32
            require mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 <= 4294967296
            require mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + (32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] <= 4294967296 and mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + (32 * mem[mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + (32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]) + 32 <= return_data.size
            mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _181) >> 32 + (32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]
            _542 = mem[_535 + (32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[_535 + (32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192])] = mem[_535 + (32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_535 + (32 * _380) + (32 * _112) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192])]
            require arg2.length - 1 < mem[(32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 192]
            _569 = mem[(32 * arg2.length - 1) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224]
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 260] = 997 * _569 / 1000
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 356] = arg4
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 292] = 160
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 388] = arg2.length
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 420 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 997 * _569 / 1000, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + floor32(arg2.length) + 420 len (32 * arg2.length) - floor32(arg2.length)]), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (6 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _542) + (32 * _380) + (32 * _112) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
}



}
