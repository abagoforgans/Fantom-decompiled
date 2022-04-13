contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address sushiFactoryAddress;
address sushiRouterAddress;
uint8 stor2; offset 160
address uniRouterAddress;
address stor3;
address stor4;
uint256 num;
uint256 stor6;

function sushiFactory() payable {
    return sushiFactoryAddress
}

function num() payable {
    return num
}

function sushiRouter() payable {
    return sushiRouterAddress
}

function uniRouter() payable {
    return uniRouterAddress
}

function sub_bf85c715(?) payable {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function pureTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                if 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96 != msg.sender:
                    require msg.sender == 0x55aec00dc22bfca3f2acf092148bddf218e1ac7
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function takerWithdraw() payable {
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                if 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96 != msg.sender:
                    require msg.sender == 0x55aec00dc22bfca3f2acf092148bddf218e1ac7
    require ext_code.size(0x7373c42502874c88954bdd6d50b53061f018422e)
    call 0x7373c42502874c88954bdd6d50b53061f018422e.0xb872dd0e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wethWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                if 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96 != msg.sender:
                    require msg.sender == 0x55aec00dc22bfca3f2acf092148bddf218e1ac7
    stor3 = arg1
    require ext_code.size(stor3)
    call stor3.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pureTokenTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                if 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96 != msg.sender:
                    require msg.sender == 0x55aec00dc22bfca3f2acf092148bddf218e1ac7
    stor3 = arg1
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function test1(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = arg1
    while idx <= arg2:
        mem[100] = idx
        require ext_code.size(sushiFactoryAddress)
        staticcall sushiFactoryAddress.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_3596b820(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    uniRouterAddress = arg3
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(uniRouterAddress)
    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
    require arg2.length - 1 < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
    return 'my func was called...'
}

function sub_2eeb3c60(?) payable {
    require calldata.size - 4 >= 256
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    if stor6 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor6 = 0
    stor4 = arg7
    uniRouterAddress = arg5
    sushiRouterAddress = arg6
    mem[96] = 2
    mem[128] = arg3
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _77 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _80 = mem[_77 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_77 + 192])] = mem[_77 + 224 len floor32(mem[_77 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(arg4)
    staticcall arg4.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg2:
        mem[(32 * _80) + ceil32(return_data.size) + 388 len arg8.length] = arg8[all]
        mem[(32 * _80) + ceil32(return_data.size) + arg8.length + 388] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 256], 0, address(this.address), 128, arg8.length, arg8[all], mem[(32 * _80) + ceil32(return_data.size) + arg8.length + 388 len ceil32(arg8.length) - arg8.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg2:
        mem[(32 * _80) + ceil32(return_data.size) + 388 len arg8.length] = arg8[all]
        mem[(32 * _80) + ceil32(return_data.size) + arg8.length + 388] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 256], address(this.address), 128, arg8.length, arg8[all], mem[(32 * _80) + ceil32(return_data.size) + arg8.length + 388 len ceil32(arg8.length) - arg8.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor6 = 1
    return 'my func was called'
}

function sub_0ab9b85c(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    uniRouterAddress = arg3
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(uniRouterAddress)
    staticcall uniRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _52 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
    _55 = mem[_52 + (32 * arg2.length) + 128]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[_52 + (32 * arg2.length) + 128])] = mem[_52 + (32 * arg2.length) + 160 len floor32(mem[_52 + (32 * arg2.length) + 128])]
    require arg2.length - 1 < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
    if mem[(32 * arg2.length - 1) + (32 * arg2.length) + ceil32(return_data.size) + 160] > arg1:
        require 0 < arg2.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args uniRouterAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 196] = arg1
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 260] = this.address
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 292] = 9999999999999999999
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 160
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 324] = arg2.length
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 356 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 356 len (32 * arg2.length) - floor32(arg2.length)]), address(this.address), 9999999999999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _55) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        require mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * _55) + (32 * arg2.length) + ceil32(return_data.size) + 160]) + 32 <= return_data.size
    return 'my func was called'
}

function sub_e7ef73ac(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender == 0x5d2238753f3ca5e649f9250c303d5c196a069f24:
        mem[ceil32(arg2.length) + 128] = 4
        mem[64] = ceil32(arg2.length) + 164
        mem[ceil32(arg2.length) + 164 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
        _93 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164])
        delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 168 len _93 - 4]
    else:
        if msg.sender == 0x9d3592092e23606e899fb8f05692ed1a3b323f4e:
            mem[ceil32(arg2.length) + 128] = 4
            mem[64] = ceil32(arg2.length) + 164
            mem[ceil32(arg2.length) + 164 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
            _101 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164])
            delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + 168 len _101 - 4]
        else:
            if msg.sender == 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13:
                mem[ceil32(arg2.length) + 128] = 4
                mem[64] = ceil32(arg2.length) + 164
                mem[ceil32(arg2.length) + 164 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
                _109 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164])
                delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 168 len _109 - 4]
            else:
                if msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96:
                    mem[ceil32(arg2.length) + 128] = 4
                    mem[64] = ceil32(arg2.length) + 164
                    mem[ceil32(arg2.length) + 164 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
                    _117 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164])
                    delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 168 len _117 - 4]
                else:
                    require msg.sender == 0x55aec00dc22bfca3f2acf092148bddf218e1ac7
                    mem[ceil32(arg2.length) + 128] = 4
                    mem[64] = ceil32(arg2.length) + 164
                    mem[ceil32(arg2.length) + 164 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
                    _125 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164])
                    delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 168 len _125 - 4]
}

function sub_1ca4e98e(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128] = 2
    mem[ceil32(arg3.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg3.length) + 224] = 2
    mem[ceil32(arg3.length) + 256 len 64] = call.data[calldata.size len 64]
    if arg1 <= 0:
        if arg2 > 0:
            if not arg1:
                require ext_code.size(msg.sender)
                staticcall msg.sender.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                staticcall msg.sender.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                    require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 324] = arg2
                    mem[ceil32(arg3.length) + 356] = 64
                    mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _946 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _964 = mem[_946 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_946 + ceil32(arg3.length) + 320])] = mem[_946 + ceil32(arg3.length) + 352 len floor32(mem[_946 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1810 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                    mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2644 = mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    _2662 = mem[_2644 + (32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2644 + (32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2644 + (32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2644 + (32 * _964) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    _3424 = mem[(32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if mem[(32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1810:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1810
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, mem[(32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1810
                    else:
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sushiRouterAddress, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1810
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, _1810, Array(len=2, data=mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2662) + (32 * _964) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2662) + (32 * _964) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1810
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, _3424 - _1810
                else:
                    require not arg2
                    require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                    require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 324] = arg2
                    mem[ceil32(arg3.length) + 356] = 64
                    mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _948 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _965 = mem[_948 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg3.length) + 320])] = mem[_948 + ceil32(arg3.length) + 352 len floor32(mem[_948 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1812 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                    mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2646 = mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    _2663 = mem[_2646 + (32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2646 + (32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2646 + (32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2646 + (32 * _965) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    _3425 = mem[(32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if mem[(32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1812:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1812
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, mem[(32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1812
                    else:
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sushiRouterAddress, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1812
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, _1812, Array(len=2, data=mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2663) + (32 * _965) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2663) + (32 * _965) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1812
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, _3425 - _1812
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if arg2:
            if arg2 > 0:
                if not arg1:
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg1:
                        require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                        require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 324] = arg2
                        mem[ceil32(arg3.length) + 356] = 64
                        mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _950 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                        _966 = mem[_950 + ceil32(arg3.length) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_950 + ceil32(arg3.length) + 320])] = mem[_950 + ceil32(arg3.length) + 352 len floor32(mem[_950 + ceil32(arg3.length) + 320])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                        _1814 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                        mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                        mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                        mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                        mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _2648 = mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                        mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        _2664 = mem[_2648 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2648 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2648 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2648 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                        require 1 < mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                        _3426 = mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1814:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1814
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1814
                        else:
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1814
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                            require ext_code.size(sushiRouterAddress)
                            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args arg2, _1814, Array(len=2, data=mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2664) + (32 * _966) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1814
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, _3426 - _1814
                    else:
                        require not arg2
                        require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                        require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 324] = arg2
                        mem[ceil32(arg3.length) + 356] = 64
                        mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _952 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                        _967 = mem[_952 + ceil32(arg3.length) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_952 + ceil32(arg3.length) + 320])] = mem[_952 + ceil32(arg3.length) + 352 len floor32(mem[_952 + ceil32(arg3.length) + 320])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                        _1816 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                        mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                        mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                        mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                        mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _2650 = mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                        mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        _2665 = mem[_2650 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2650 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2650 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2650 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                        require 1 < mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                        _3427 = mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1816:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1816
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1816
                        else:
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1816
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                            require ext_code.size(sushiRouterAddress)
                            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args arg2, _1816, Array(len=2, data=mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2665) + (32 * _967) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1816
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, _3427 - _1816
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 324] = arg1
                mem[ceil32(arg3.length) + 356] = 64
                mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _954 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                _968 = mem[_954 + ceil32(arg3.length) + 320]
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_954 + ceil32(arg3.length) + 320])] = mem[_954 + ceil32(arg3.length) + 352 len floor32(mem[_954 + ceil32(arg3.length) + 320])]
                require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                _1818 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(sushiRouterAddress)
                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _2652 = mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                require mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                _2666 = mem[_2652 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2652 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2652 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2652 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                require 1 < mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                _3428 = mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                require ext_code.size(address(ext_call.return_data[0]))
                if mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1818:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1818
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1818
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > 0:
                        if not arg1:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4182 = mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                _4208 = mem[_4182 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4182 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4182 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4182 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384]
                                _4754 = mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5274 = mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5298 = mem[_5274 + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5274 + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5274 + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5274 + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5666 = mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] <= _4754:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4754
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] - _4754
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = _4754
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _4754, Array(len=2, data=mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5298) + (32 * _4208) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4754
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5666 - _4754
                            else:
                                require not arg2
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4184 = mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                _4209 = mem[_4184 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4184 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4184 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4184 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384]
                                _4756 = mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5276 = mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5299 = mem[_5276 + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5276 + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5276 + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5276 + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5667 = mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] <= _4756:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] - _4756
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = _4756
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _4756, Array(len=2, data=mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5299) + (32 * _4209) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5667 - _4756
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg1
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1818
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg1, _1818, Array(len=2, data=mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _4186 = mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                    _4210 = mem[_4186 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                    mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4186 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4186 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4186 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1818
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, _3428 - _1818
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > 0:
                        if not arg1:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5278 = mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5300 = mem[_5278 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5278 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5278 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5278 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5668 = mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6014 = mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                _6036 = mem[_6014 + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6014 + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6014 + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6014 + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448]
                                _6238 = mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] <= _5668:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5668
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] - _5668
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 484] = arg2
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 516] = _5668
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _5668, Array(len=2, data=mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6036) + (32 * _5300) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5668
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6238 - _5668
                            else:
                                require not arg2
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5280 = mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5301 = mem[_5280 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5280 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5280 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5280 + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5670 = mem[(32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6016 = mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                _6037 = mem[_6016 + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6016 + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6016 + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6016 + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448]
                                _6239 = mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] <= _5670:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5670
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] - _5670
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 484] = arg2
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 516] = _5670
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _5670, Array(len=2, data=mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6037) + (32 * _5301) + (32 * _4210) + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5670
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6239 - _5670
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                require not arg2
                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 324] = arg1
                mem[ceil32(arg3.length) + 356] = 64
                mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _956 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                _969 = mem[_956 + ceil32(arg3.length) + 320]
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_956 + ceil32(arg3.length) + 320])] = mem[_956 + ceil32(arg3.length) + 352 len floor32(mem[_956 + ceil32(arg3.length) + 320])]
                require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                _1820 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(sushiRouterAddress)
                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _2654 = mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                require mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                _2667 = mem[_2654 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2654 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2654 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2654 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                require 1 < mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                _3429 = mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                require ext_code.size(address(ext_call.return_data[0]))
                if mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1820:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > 0:
                        if not arg1:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4188 = mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                _4211 = mem[_4188 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4188 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4188 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4188 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384]
                                _4760 = mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5282 = mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5302 = mem[_5282 + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5282 + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5282 + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5282 + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5672 = mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] <= _4760:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] - _4760
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = _4760
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _4760, Array(len=2, data=mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5302) + (32 * _4211) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4760
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5672 - _4760
                            else:
                                require not arg2
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4190 = mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                _4212 = mem[_4190 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4190 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4190 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4190 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384]
                                _4762 = mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5284 = mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5303 = mem[_5284 + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5284 + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5284 + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5284 + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5673 = mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] <= _4762:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4762
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] - _4762
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = _4762
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _4762, Array(len=2, data=mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4762
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5673 - _4762
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg1
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1820
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg1, _1820, Array(len=2, data=mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _4192 = mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                    _4213 = mem[_4192 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                    mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4192 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4192 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4192 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, _3429 - _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > 0:
                        if not arg1:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5286 = mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5304 = mem[_5286 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5286 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5286 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5286 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5674 = mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6022 = mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                _6040 = mem[_6022 + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6022 + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6022 + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6022 + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448]
                                _6244 = mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] <= _5674:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5674
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] - _5674
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 484] = arg2
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 516] = _5674
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _5674, Array(len=2, data=mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6040) + (32 * _5304) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5674
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6244 - _5674
                            else:
                                require not arg2
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5288 = mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5305 = mem[_5288 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5288 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5288 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5288 + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5676 = mem[(32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6024 = mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                _6041 = mem[_6024 + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6024 + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6024 + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6024 + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448]
                                _6245 = mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] <= _5676:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5676
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] - _5676
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 484] = arg2
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 516] = _5676
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _5676, Array(len=2, data=mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6041) + (32 * _5305) + (32 * _4213) + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5676
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6245 - _5676
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
}

function sub_d053452f(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if stor6 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor6 = 0
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128] = 2
    mem[ceil32(arg3.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg3.length) + 224] = 2
    mem[ceil32(arg3.length) + 256 len 64] = call.data[calldata.size len 64]
    if arg1 <= 0:
        if arg2 > 0:
            if not arg1:
                require ext_code.size(msg.sender)
                staticcall msg.sender.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                staticcall msg.sender.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                    require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 324] = arg2
                    mem[ceil32(arg3.length) + 356] = 64
                    mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _948 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _966 = mem[_948 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg3.length) + 320])] = mem[_948 + ceil32(arg3.length) + 352 len floor32(mem[_948 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1812 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                    mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2646 = mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    _2664 = mem[_2646 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2646 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2646 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2646 + (32 * _966) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    _3426 = mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1812:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1812
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, mem[(32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1812
                    else:
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sushiRouterAddress, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1812
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, _1812, Array(len=2, data=mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2664) + (32 * _966) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2664) + (32 * _966) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1812
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, _3426 - _1812
                else:
                    require not arg2
                    require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                    require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 324] = arg2
                    mem[ceil32(arg3.length) + 356] = 64
                    mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _950 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                    _967 = mem[_950 + ceil32(arg3.length) + 320]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_950 + ceil32(arg3.length) + 320])] = mem[_950 + ceil32(arg3.length) + 352 len floor32(mem[_950 + ceil32(arg3.length) + 320])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                    _1814 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                    mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                    mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                    mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2648 = mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    _2665 = mem[_2648 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2648 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2648 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2648 + (32 * _967) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                    _3427 = mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1814:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1814
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, mem[(32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1814
                    else:
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sushiRouterAddress, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1814
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg2, _1814, Array(len=2, data=mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2665) + (32 * _967) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2665) + (32 * _967) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1814
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, _3427 - _1814
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if arg2:
            if arg2 > 0:
                if not arg1:
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg1:
                        require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                        require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 324] = arg2
                        mem[ceil32(arg3.length) + 356] = 64
                        mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _952 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                        _968 = mem[_952 + ceil32(arg3.length) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_952 + ceil32(arg3.length) + 320])] = mem[_952 + ceil32(arg3.length) + 352 len floor32(mem[_952 + ceil32(arg3.length) + 320])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                        _1816 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                        mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                        mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                        mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                        mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _2650 = mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                        mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        _2666 = mem[_2650 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2650 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2650 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2650 + (32 * _968) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                        require 1 < mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                        _3428 = mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1816:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1816
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, mem[(32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1816
                        else:
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1816
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                            require ext_code.size(sushiRouterAddress)
                            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args arg2, _1816, Array(len=2, data=mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1816
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, _3428 - _1816
                    else:
                        require not arg2
                        require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                        require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 324] = arg2
                        mem[ceil32(arg3.length) + 356] = 64
                        mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _954 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 320]
                        _969 = mem[_954 + ceil32(arg3.length) + 320]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_954 + ceil32(arg3.length) + 320])] = mem[_954 + ceil32(arg3.length) + 352 len floor32(mem[_954 + ceil32(arg3.length) + 320])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                        _1818 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                        mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                        mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg2
                        mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                        mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _2652 = mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                        mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        _2667 = mem[_2652 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                        mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2652 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2652 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2652 + (32 * _969) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                        require 1 < mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                        _3429 = mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1818:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1818
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, mem[(32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1818
                        else:
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1818
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                            require ext_code.size(sushiRouterAddress)
                            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args arg2, _1818, Array(len=2, data=mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1818
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, _3429 - _1818
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 324] = arg1
                mem[ceil32(arg3.length) + 356] = 64
                mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _956 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                _970 = mem[_956 + ceil32(arg3.length) + 320]
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_956 + ceil32(arg3.length) + 320])] = mem[_956 + ceil32(arg3.length) + 352 len floor32(mem[_956 + ceil32(arg3.length) + 320])]
                require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                _1820 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(sushiRouterAddress)
                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _2654 = mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                require mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                mem[(32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                _2668 = mem[_2654 + (32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                mem[(32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2654 + (32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2654 + (32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2654 + (32 * _970) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                require 1 < mem[(32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                _3430 = mem[(32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                require ext_code.size(address(ext_call.return_data[0]))
                if mem[(32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1820:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, mem[(32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > 0:
                        if not arg1:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4184 = mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                _4210 = mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384]
                                _4756 = mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5276 = mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5300 = mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5668 = mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] <= _4756:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] - _4756
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = _4756
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _4756, Array(len=2, data=mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5668 - _4756
                            else:
                                require not arg2
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4186 = mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                _4211 = mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384]
                                _4758 = mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5278 = mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5301 = mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5669 = mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] <= _4758:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] - _4758
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = _4758
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _4758, Array(len=2, data=mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5669 - _4758
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg1
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1820
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg1, _1820, Array(len=2, data=mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _4188 = mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                    _4212 = mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, _3430 - _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > 0:
                        if not arg1:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5280 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5302 = mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5670 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6016 = mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                _6038 = mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448]
                                _6240 = mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] <= _5670:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5670
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] - _5670
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 484] = arg2
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 516] = _5670
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _5670, Array(len=2, data=mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5670
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6240 - _5670
                            else:
                                require not arg2
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5282 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5303 = mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5672 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6018 = mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                _6039 = mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448]
                                _6241 = mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] <= _5672:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5672
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] - _5672
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 484] = arg2
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 516] = _5672
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _5672, Array(len=2, data=mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5672
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6241 - _5672
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                require not arg2
                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 324] = arg1
                mem[ceil32(arg3.length) + 356] = 64
                mem[ceil32(arg3.length) + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 420 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg3.length) + 324 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _958 = mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32
                require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320] <= 4294967296 and mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]) + 32 <= return_data.size
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg3.length) + 320 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 320]
                _971 = mem[_958 + ceil32(arg3.length) + 320]
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 352 len floor32(mem[_958 + ceil32(arg3.length) + 320])] = mem[_958 + ceil32(arg3.length) + 352 len floor32(mem[_958 + ceil32(arg3.length) + 320])]
                require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 320]
                _1822 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 352]
                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 356] = arg1
                mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 420] = 2
                mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(sushiRouterAddress)
                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _2656 = mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32
                require mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                mem[(32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg1) >> 32 + (32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                _2669 = mem[_2656 + (32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352]
                mem[(32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2656 + (32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352])] = mem[_2656 + (32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 384 len floor32(mem[_2656 + (32 * _971) + ceil32(arg3.length) + ceil32(return_data.size) + 352])]
                require 1 < mem[(32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 352]
                _3431 = mem[(32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416]
                require ext_code.size(address(ext_call.return_data[0]))
                if mem[(32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] <= _1822:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, mem[(32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416] - _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > 0:
                        if not arg1:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4190 = mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                _4213 = mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384]
                                _4762 = mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5284 = mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5304 = mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5674 = mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] <= _4762:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4762
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] - _4762
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = _4762
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _4762, Array(len=2, data=mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4762
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5674 - _4762
                            else:
                                require not arg2
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4192 = mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                _4214 = mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384]
                                _4764 = mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5286 = mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5305 = mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5675 = mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] <= _4764:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4764
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480] - _4764
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = _4764
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _4764, Array(len=2, data=mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4764
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5675 - _4764
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 388] = arg1
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 420] = _1822
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 452] = 160
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 548] = 2
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg1, _1822, Array(len=2, data=mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _4194 = mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg1) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                    _4215 = mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384]
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 384])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, _3431 - _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > 0:
                        if not arg1:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5288 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5306 = mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5676 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6024 = mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                _6042 = mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448]
                                _6246 = mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] <= _5676:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5676
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] - _5676
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 484] = arg2
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 516] = _5676
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _5676, Array(len=2, data=mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5676
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6246 - _5676
                            else:
                                require not arg2
                                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420] = arg2
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5290 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                _5307 = mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 416]
                                _5678 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 452] = arg2
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=2, data=mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6026 = mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                require mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                _6043 = mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 448]
                                _6247 = mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] <= _5678:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5678
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 512] - _5678
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 484] = arg2
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 516] = _5678
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg2, _5678, Array(len=2, data=mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                                    require mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5678
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6247 - _5678
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    stor6 = 1
}

function hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor6 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor6 = 0
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    mem[ceil32(arg4.length) + 256 len 64] = call.data[calldata.size len 64]
    if arg2 <= 0:
        if arg3 > 0:
            if not arg2:
                require ext_code.size(msg.sender)
                staticcall msg.sender.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                staticcall msg.sender.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg2:
                    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 324] = arg3
                    mem[ceil32(arg4.length) + 356] = 64
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1812 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2646 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    _2664 = mem[_2646 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2646 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2646 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2646 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    _3426 = mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1812:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1812
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1812
                    else:
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sushiRouterAddress, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1812
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg3, _1812, Array(len=2, data=mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2664) + (32 * _966) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1812
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, _3426 - _1812
                else:
                    require not arg3
                    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 324] = arg3
                    mem[ceil32(arg4.length) + 356] = 64
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _950 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_950 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_950 + ceil32(arg4.length) + 320])] = mem[_950 + ceil32(arg4.length) + 352 len floor32(mem[_950 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1814 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2648 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    _2665 = mem[_2648 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2648 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2648 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2648 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    _3427 = mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1814:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1814
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1814
                    else:
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sushiRouterAddress, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1814
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg3, _1814, Array(len=2, data=mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2665) + (32 * _967) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1814
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, _3427 - _1814
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if arg3:
            if arg3 > 0:
                if not arg2:
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                        require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 324] = arg3
                        mem[ceil32(arg4.length) + 356] = 64
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _952 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                        _968 = mem[_952 + ceil32(arg4.length) + 320]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_952 + ceil32(arg4.length) + 320])] = mem[_952 + ceil32(arg4.length) + 352 len floor32(mem[_952 + ceil32(arg4.length) + 320])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                        _1816 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _2650 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                        mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        _2666 = mem[_2650 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2650 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2650 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2650 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                        require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                        _3428 = mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1816:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1816
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1816
                        else:
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1816
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                            require ext_code.size(sushiRouterAddress)
                            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args arg3, _1816, Array(len=2, data=mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2666) + (32 * _968) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1816
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, _3428 - _1816
                    else:
                        require not arg3
                        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                        require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 324] = arg3
                        mem[ceil32(arg4.length) + 356] = 64
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _954 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                        _969 = mem[_954 + ceil32(arg4.length) + 320]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_954 + ceil32(arg4.length) + 320])] = mem[_954 + ceil32(arg4.length) + 352 len floor32(mem[_954 + ceil32(arg4.length) + 320])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                        _1818 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _2652 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                        mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        _2667 = mem[_2652 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2652 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2652 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2652 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                        require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                        _3429 = mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1818:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1818
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1818
                        else:
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1818
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                            require ext_code.size(sushiRouterAddress)
                            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args arg3, _1818, Array(len=2, data=mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2667) + (32 * _969) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1818
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, _3429 - _1818
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 324] = arg2
                mem[ceil32(arg4.length) + 356] = 64
                mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _956 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                _970 = mem[_956 + ceil32(arg4.length) + 320]
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_956 + ceil32(arg4.length) + 320])] = mem[_956 + ceil32(arg4.length) + 352 len floor32(mem[_956 + ceil32(arg4.length) + 320])]
                require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                _1820 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(sushiRouterAddress)
                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _2654 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                _2668 = mem[_2654 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2654 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2654 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2654 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                _3430 = mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                require ext_code.size(address(ext_call.return_data[0]))
                if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1820:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > 0:
                        if not arg2:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4184 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                _4210 = mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384]
                                _4756 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5276 = mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5300 = mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5668 = mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] <= _4756:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] - _4756
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = _4756
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _4756, Array(len=2, data=mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5668 - _4756
                            else:
                                require not arg3
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4186 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                _4211 = mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384]
                                _4758 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5278 = mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5301 = mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5669 = mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] <= _4758:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] - _4758
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = _4758
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _4758, Array(len=2, data=mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5669 - _4758
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1820
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, _1820, Array(len=2, data=mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _4188 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                    _4212 = mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, _3430 - _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > 0:
                        if not arg2:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5280 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5302 = mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5670 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6016 = mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                _6038 = mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448]
                                _6240 = mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] <= _5670:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5670
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] - _5670
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 484] = arg3
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 516] = _5670
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _5670, Array(len=2, data=mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5670
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6240 - _5670
                            else:
                                require not arg3
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5282 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5303 = mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5672 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6018 = mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                _6039 = mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448]
                                _6241 = mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] <= _5672:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5672
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] - _5672
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 484] = arg3
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 516] = _5672
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _5672, Array(len=2, data=mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5672
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6241 - _5672
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                require not arg3
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 324] = arg2
                mem[ceil32(arg4.length) + 356] = 64
                mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _958 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                _971 = mem[_958 + ceil32(arg4.length) + 320]
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_958 + ceil32(arg4.length) + 320])] = mem[_958 + ceil32(arg4.length) + 352 len floor32(mem[_958 + ceil32(arg4.length) + 320])]
                require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                _1822 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(sushiRouterAddress)
                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _2656 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                _2669 = mem[_2656 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2656 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2656 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2656 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                _3431 = mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                require ext_code.size(address(ext_call.return_data[0]))
                if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1822:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > 0:
                        if not arg2:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4190 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                _4213 = mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384]
                                _4762 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5284 = mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5304 = mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5674 = mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] <= _4762:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4762
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] - _4762
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = _4762
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _4762, Array(len=2, data=mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4762
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5674 - _4762
                            else:
                                require not arg3
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4192 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                _4214 = mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384]
                                _4764 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5286 = mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5305 = mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5675 = mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] <= _4764:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4764
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] - _4764
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = _4764
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _4764, Array(len=2, data=mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4764
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5675 - _4764
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1822
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, _1822, Array(len=2, data=mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _4194 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                    _4215 = mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, _3431 - _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > 0:
                        if not arg2:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5288 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5306 = mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5676 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6024 = mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                _6042 = mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448]
                                _6246 = mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] <= _5676:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5676
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] - _5676
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 484] = arg3
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 516] = _5676
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _5676, Array(len=2, data=mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5676
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6246 - _5676
                            else:
                                require not arg3
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5290 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5307 = mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5678 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6026 = mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                _6043 = mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448]
                                _6247 = mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] <= _5678:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5678
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] - _5678
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 484] = arg3
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 516] = _5678
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _5678, Array(len=2, data=mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5678
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6247 - _5678
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    stor6 = 1
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor6 != 1:
        revert with 0, 'UniswapV2: LOCKED'
    stor6 = 0
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    mem[ceil32(arg4.length) + 256 len 64] = call.data[calldata.size len 64]
    if arg2 <= 0:
        if arg3 > 0:
            if not arg2:
                require ext_code.size(msg.sender)
                staticcall msg.sender.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                staticcall msg.sender.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg2:
                    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 324] = arg3
                    mem[ceil32(arg4.length) + 356] = 64
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _948 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _966 = mem[_948 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])] = mem[_948 + ceil32(arg4.length) + 352 len floor32(mem[_948 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1812 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2646 = mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    _2664 = mem[_2646 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2646 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2646 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2646 + (32 * _966) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    _3426 = mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1812:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1812
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, mem[(32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1812
                    else:
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sushiRouterAddress, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1812
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg3, _1812, Array(len=2, data=mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2664) + (32 * _966) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2664) + (32 * _966) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1812
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, _3426 - _1812
                else:
                    require not arg3
                    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                    require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 324] = arg3
                    mem[ceil32(arg4.length) + 356] = 64
                    mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                    require return_data.size >= 32
                    _950 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                    _967 = mem[_950 + ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_950 + ceil32(arg4.length) + 320])] = mem[_950 + ceil32(arg4.length) + 352 len floor32(mem[_950 + ceil32(arg4.length) + 320])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                    _1814 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                    mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _2648 = mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    _2665 = mem[_2648 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                    mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2648 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2648 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2648 + (32 * _967) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                    require 1 < mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                    _3427 = mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1814:
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1814
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, mem[(32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1814
                    else:
                        call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sushiRouterAddress, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1814
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args arg3, _1814, Array(len=2, data=mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _2665) + (32 * _967) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        require mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2665) + (32 * _967) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1814
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor4, _3427 - _1814
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if arg3:
            if arg3 > 0:
                if not arg2:
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                        require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 324] = arg3
                        mem[ceil32(arg4.length) + 356] = 64
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _952 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                        _968 = mem[_952 + ceil32(arg4.length) + 320]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_952 + ceil32(arg4.length) + 320])] = mem[_952 + ceil32(arg4.length) + 352 len floor32(mem[_952 + ceil32(arg4.length) + 320])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                        _1816 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _2650 = mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                        mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        _2666 = mem[_2650 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2650 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2650 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2650 + (32 * _968) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                        require 1 < mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                        _3428 = mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1816:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1816
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, mem[(32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1816
                        else:
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1816
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                            require ext_code.size(sushiRouterAddress)
                            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args arg3, _1816, Array(len=2, data=mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2666) + (32 * _968) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2666) + (32 * _968) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1816
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, _3428 - _1816
                    else:
                        require not arg3
                        require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                        require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 324] = arg3
                        mem[ceil32(arg4.length) + 356] = 64
                        mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _954 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 320]
                        _969 = mem[_954 + ceil32(arg4.length) + 320]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_954 + ceil32(arg4.length) + 320])] = mem[_954 + ceil32(arg4.length) + 352 len floor32(mem[_954 + ceil32(arg4.length) + 320])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                        _1818 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                        mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg3
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=2, data=mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                        require return_data.size >= 32
                        _2652 = mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                        mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg3) >> 32 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        _2667 = mem[_2652 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                        mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2652 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2652 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2652 + (32 * _969) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                        require 1 < mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                        _3429 = mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1818:
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1818
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, mem[(32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1818
                        else:
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1818
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                            require ext_code.size(sushiRouterAddress)
                            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args arg3, _1818, Array(len=2, data=mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2667) + (32 * _969) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            require mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2667) + (32 * _969) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1818
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor4, _3429 - _1818
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 324] = arg2
                mem[ceil32(arg4.length) + 356] = 64
                mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _956 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                _970 = mem[_956 + ceil32(arg4.length) + 320]
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_956 + ceil32(arg4.length) + 320])] = mem[_956 + ceil32(arg4.length) + 352 len floor32(mem[_956 + ceil32(arg4.length) + 320])]
                require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                _1820 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(sushiRouterAddress)
                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _2654 = mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                _2668 = mem[_2654 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2654 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2654 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2654 + (32 * _970) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                require 1 < mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                _3430 = mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                require ext_code.size(address(ext_call.return_data[0]))
                if mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1820:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, mem[(32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > 0:
                        if not arg2:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4184 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                _4210 = mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4184 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384]
                                _4756 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5276 = mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5300 = mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5276 + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5668 = mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] <= _4756:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] - _4756
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = _4756
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _4756, Array(len=2, data=mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5300) + (32 * _4210) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5668 - _4756
                            else:
                                require not arg3
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4186 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                _4211 = mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4186 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384]
                                _4758 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5278 = mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5301 = mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5278 + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5669 = mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] <= _4758:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] - _4758
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = _4758
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _4758, Array(len=2, data=mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5301) + (32 * _4211) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5669 - _4758
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1820
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, _1820, Array(len=2, data=mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _4188 = mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                    _4212 = mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                    mem[(32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4188 + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, _3430 - _1820
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > 0:
                        if not arg2:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5280 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5302 = mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5280 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5670 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6016 = mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                _6038 = mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6016 + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448]
                                _6240 = mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] <= _5670:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5670
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] - _5670
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 484] = arg3
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 516] = _5670
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _5670, Array(len=2, data=mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6038) + (32 * _5302) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5670
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6240 - _5670
                            else:
                                require not arg3
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5282 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5303 = mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5282 + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5672 = mem[(32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6018 = mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                _6039 = mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6018 + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448]
                                _6241 = mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] <= _5672:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5672
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] - _5672
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 484] = arg3
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 516] = _5672
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _5672, Array(len=2, data=mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6039) + (32 * _5303) + (32 * _4212) + (32 * _2668) + (32 * _970) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5672
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6241 - _5672
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                require not arg3
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 324] = arg2
                mem[ceil32(arg4.length) + 356] = 64
                mem[ceil32(arg4.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 420 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg4.length) + 324 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _958 = mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320] <= 4294967296 and mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]) + 32 <= return_data.size
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 320] = mem[mem[ceil32(arg4.length) + 320 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 320]
                _971 = mem[_958 + ceil32(arg4.length) + 320]
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 352 len floor32(mem[_958 + ceil32(arg4.length) + 320])] = mem[_958 + ceil32(arg4.length) + 352 len floor32(mem[_958 + ceil32(arg4.length) + 320])]
                require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 320]
                _1822 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 352]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg2
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = 64
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 420] = 2
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 0] = None
                require ext_code.size(sushiRouterAddress)
                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _2656 = mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
                mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg2) >> 32 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                _2669 = mem[_2656 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352]
                mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_2656 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])] = mem[_2656 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 384 len floor32(mem[_2656 + (32 * _971) + ceil32(arg4.length) + ceil32(return_data.size) + 352])]
                require 1 < mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 352]
                _3431 = mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416]
                require ext_code.size(address(ext_call.return_data[0]))
                if mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] <= _1822:
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, mem[(32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416] - _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > 0:
                        if not arg2:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4190 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                _4213 = mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4190 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384]
                                _4762 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5284 = mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5304 = mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5284 + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5674 = mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] <= _4762:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4762
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] - _4762
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = _4762
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _4762, Array(len=2, data=mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5304) + (32 * _4213) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4762
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5674 - _4762
                            else:
                                require not arg3
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg3
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = 64
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                _4192 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                _4214 = mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                                mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4192 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                                require 0 < mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384]
                                _4764 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = 2
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5286 = mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5305 = mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5286 + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 1 < mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5675 = mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] <= _4764:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4764
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480] - _4764
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = _4764
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548] = this.address
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 580] = 9999999999999999999
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 160
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 612] = 2
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _4764, Array(len=2, data=mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 644 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                    require return_data.size >= 32
                                    require mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5305) + (32 * _4214) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4764
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _5675 - _4764
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 388] = arg2
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 420] = _1822
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = this.address
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = 9999999999999999999
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 452] = 160
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 548] = 2
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, _1822, Array(len=2, data=mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 580 len 64]), address(this.address), 9999999999999999999
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _4194 = mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                    _4215 = mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384]
                    mem[(32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_4194 + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 384])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor4, _3431 - _1822
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > 0:
                        if not arg2:
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(msg.sender)
                            staticcall msg.sender.token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg2:
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5288 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5306 = mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5288 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5676 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6024 = mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                _6042 = mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6024 + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448]
                                _6246 = mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] <= _5676:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5676
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] - _5676
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 484] = arg3
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 516] = _5676
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _5676, Array(len=2, data=mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6042) + (32 * _5306) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5676
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6246 - _5676
                            else:
                                require not arg3
                                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420] = arg3
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 452] = 64
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 516 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 420 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _5290 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                _5307 = mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416]
                                mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len floor32(mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])] = mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_5290 + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 416])]
                                require 0 < mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 416]
                                _5678 = mem[(32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 452] = arg3
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 484] = 64
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 516] = 2
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg3, Array(len=2, data=mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 548 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448
                                require return_data.size >= 32
                                _6026 = mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                _6043 = mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448]
                                mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len floor32(mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])] = mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 480 len floor32(mem[_6026 + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (6 * ceil32(return_data.size)) + 448])]
                                require 1 < mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 448]
                                _6247 = mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512]
                                require ext_code.size(address(ext_call.return_data[0]))
                                if mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] <= _5678:
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5678
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, mem[(32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 512] - _5678
                                else:
                                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args sushiRouterAddress, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 484] = arg3
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 516] = _5678
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 580] = this.address
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 612] = 9999999999999999999
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 548] = 160
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 644] = 2
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args arg3, _5678, Array(len=2, data=mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 676 len 64]), address(this.address), 9999999999999999999
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (8 * ceil32(return_data.size)) + 480
                                    require return_data.size >= 32
                                    require mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                    require mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                    require mem[mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg3) >> 32 + (32 * _6043) + (32 * _5307) + (32 * _4215) + (32 * _2669) + (32 * _971) + ceil32(arg4.length) + (7 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5678
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor4, _6247 - _5678
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
    stor6 = 1
}



}
