contract main {




// =====================  Runtime code  =====================


address sushiFactoryAddress;
address sushiRouterAddress;
address uniRouterAddress;
address token0Address;
address token1Address;
address pairaddr;
uint256 sub_a26d24e3;
uint256 sub_d524b0ff;
array of struct path;
array of struct path1;
array of address tokens;
array of address sub_03bdd72e;
array of address sub_e7492977;
uint8 sub_bf85c715;
address stor13; offset 8
address stor14;
uint256 num;

function sub_03bdd72e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_03bdd72e.length
    return sub_03bdd72e[arg1]
}

function token0() payable {
    return token0Address
}

function sushiFactory() payable {
    return sushiFactoryAddress
}

function path1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < path1.length
    return path1[arg1].field_0
}

function num() payable {
    return num
}

function pairaddr() payable {
    return pairaddr
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function sushiRouter() payable {
    return sushiRouterAddress
}

function uniRouter() payable {
    return uniRouterAddress
}

function sub_a26d24e3(?) payable {
    return sub_a26d24e3
}

function path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < path.length
    return path[arg1].field_0
}

function sub_bf85c715(?) payable {
    return bool(sub_bf85c715)
}

function token1() payable {
    return token1Address
}

function sub_d524b0ff(?) payable {
    return sub_d524b0ff
}

function sub_e7492977(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e7492977.length
    return sub_e7492977[arg1]
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
    stor13 = arg1
    require ext_code.size(stor13)
    call stor13.withdraw(uint256 rg1) with:
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
    stor13 = arg1
    require ext_code.size(stor13)
    call stor13.transfer(address rg1, uint256 rg2) with:
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

function sub_2eeb3c60(?) payable {
    require calldata.size - 4 >= 256
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    stor14 = arg7
    uniRouterAddress = arg5
    sushiRouterAddress = arg6
    require ext_code.size(arg4)
    staticcall arg4.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[260 len arg8.length] = arg8[all]
    mem[arg8.length + 260] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, arg1, 0, address(this.address), 128, arg8.length, arg8[all], mem[arg8.length + 260 len ceil32(arg8.length) - arg8.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 'my func was called'
}

function sub_91345291(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
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

function sub_ad49bbb5(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
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
            args sushiRouterAddress, arg1
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
        require ext_code.size(sushiRouterAddress)
        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
        mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 196 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
        delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 168 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
    else:
        if msg.sender == 0x9d3592092e23606e899fb8f05692ed1a3b323f4e:
            mem[ceil32(arg2.length) + 128] = 4
            mem[64] = ceil32(arg2.length) + 164
            mem[ceil32(arg2.length) + 164 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
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
                mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
                mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 196 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 168 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
            else:
                if msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96:
                    mem[ceil32(arg2.length) + 128] = 4
                    mem[64] = ceil32(arg2.length) + 164
                    mem[ceil32(arg2.length) + 164 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
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
                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
                    mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 196 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                    delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 168 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
}

function sub_ab368908(?) payable {
    require calldata.size - 4 >= 128
    if msg.sender == 0x5d2238753f3ca5e649f9250c303d5c196a069f24:
        mem[160] = arg3
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sushiRouterAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 0
        mem[292] = this.address
        mem[324] = 9999999999999999999
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(sushiRouterAddress)
        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _181 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        _196 = mem[_181 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_181 + 192])] = mem[_181 + 224 len floor32(mem[_181 + 192])]
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sushiRouterAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _196) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + ceil32(return_data.size) + 228] = arg1
        mem[(32 * _196) + ceil32(return_data.size) + 260] = 0
        mem[(32 * _196) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _196) + ceil32(return_data.size) + 356] = 9999999999999999999
        mem[(32 * _196) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _196) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _196) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(sushiRouterAddress)
        call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[(32 * _196) + ceil32(return_data.size) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(32 * _196) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * _196) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _196) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _196) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _196) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _196) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _196) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    else:
        if msg.sender == 0x9d3592092e23606e899fb8f05692ed1a3b323f4e:
            mem[96] = 2
            mem[128] = arg2
            mem[160] = arg3
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sushiRouterAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = 0
            mem[292] = this.address
            mem[324] = 9999999999999999999
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(sushiRouterAddress)
            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _183 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            _197 = mem[_183 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_183 + 192])] = mem[_183 + 224 len floor32(mem[_183 + 192])]
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sushiRouterAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _197) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _197) + ceil32(return_data.size) + 228] = arg1
            mem[(32 * _197) + ceil32(return_data.size) + 260] = 0
            mem[(32 * _197) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _197) + ceil32(return_data.size) + 356] = 9999999999999999999
            mem[(32 * _197) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _197) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _197) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(sushiRouterAddress)
            call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[(32 * _197) + ceil32(return_data.size) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _197) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _197) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[(32 * _197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _197) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _197) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        else:
            if msg.sender == 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13:
                mem[96] = 2
                mem[128] = arg2
                mem[160] = arg3
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sushiRouterAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = arg1
                mem[228] = 0
                mem[292] = this.address
                mem[324] = 9999999999999999999
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(sushiRouterAddress)
                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _185 = mem[192 len 4], Mask(224, 32, arg1) >> 32
                require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                _198 = mem[_185 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_185 + 192])] = mem[_185 + 224 len floor32(mem[_185 + 192])]
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sushiRouterAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _198) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _198) + ceil32(return_data.size) + 228] = arg1
                mem[(32 * _198) + ceil32(return_data.size) + 260] = 0
                mem[(32 * _198) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _198) + ceil32(return_data.size) + 356] = 9999999999999999999
                mem[(32 * _198) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _198) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _198) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(sushiRouterAddress)
                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[(32 * _198) + ceil32(return_data.size) + 420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _198) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _198) + (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(32 * _198) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _198) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _198) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _198) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _198) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _198) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _198) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
            else:
                if msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96:
                    mem[160] = arg3
                    require ext_code.size(arg2)
                    call arg2.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg1
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = 9999999999999999999
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _187 = mem[192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    _199 = mem[_187 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_187 + 192])] = mem[_187 + 224 len floor32(mem[_187 + 192])]
                    require ext_code.size(arg2)
                    call arg2.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _199) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _199) + ceil32(return_data.size) + 228] = arg1
                    mem[(32 * _199) + ceil32(return_data.size) + 260] = 0
                    mem[(32 * _199) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _199) + ceil32(return_data.size) + 356] = 9999999999999999999
                    mem[(32 * _199) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _199) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _199) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[(32 * _199) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _199) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _199) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    require mem[(32 * _199) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _199) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _199) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _199) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _199) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _199) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _199) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                else:
                    require msg.sender == 0x55aec00dc22bfca3f2acf092148bddf218e1ac7
                    mem[96] = 2
                    mem[128] = arg2
                    mem[160] = arg3
                    require ext_code.size(arg2)
                    call arg2.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = arg1
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = 9999999999999999999
                    mem[260] = 160
                    mem[356] = 2
                    mem[388 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _189 = mem[192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    _200 = mem[_189 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_189 + 192])] = mem[_189 + 224 len floor32(mem[_189 + 192])]
                    require ext_code.size(arg2)
                    call arg2.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sushiRouterAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * _200) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _200) + ceil32(return_data.size) + 228] = arg1
                    mem[(32 * _200) + ceil32(return_data.size) + 260] = 0
                    mem[(32 * _200) + ceil32(return_data.size) + 324] = this.address
                    mem[(32 * _200) + ceil32(return_data.size) + 356] = 9999999999999999999
                    mem[(32 * _200) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _200) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _200) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(sushiRouterAddress)
                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg1, 0, 160, address(this.address), 9999999999999999999, 2, mem[(32 * _200) + ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _200) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _200) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    require mem[(32 * _200) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _200) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _200) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _200) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _200) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _200) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _200) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg2 > 0:
        if not arg3:
            require ext_code.size(msg.sender)
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(msg.sender)
            staticcall msg.sender.0xd21220a7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                require 0 < path.length
                address(path.field_0) = address(ext_call.return_data[0])
                require 1 < path.length
                address(path.field_256) = address(ext_call.return_data[0])
                mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[100] = arg2
                mem[132] = 64
                mem[164] = path.length
                if not path.length:
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg2, 64, path.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _20 = mem[96 len 4], Mask(224, 32, arg2) >> 32
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                    _26 = mem[_20 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_20 + 96])] = mem[_20 + 128 len floor32(mem[_20 + 96])]
                    require 0 < mem[ceil32(return_data.size) + 96]
                    _123 = mem[ceil32(return_data.size) + 128]
                    require 0 < path1.length
                    address(path1.field_0) = address(ext_call.return_data[0])
                    require 1 < path1.length
                    mem[0] = 9
                    address(path1.field_256) = address(ext_call.return_data[0])
                    mem[(32 * _26) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _26) + ceil32(return_data.size) + 132] = arg2
                    mem[(32 * _26) + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _26) + ceil32(return_data.size) + 196] = path1.length
                    if not path1.length:
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, 64, path1.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _26) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _26) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _137 = mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _26) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _26) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _26) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _26) + ceil32(return_data.size) + 128]
                        _143 = mem[_137 + (32 * _26) + ceil32(return_data.size) + 128]
                        mem[(32 * _26) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_137 + (32 * _26) + ceil32(return_data.size) + 128])] = mem[_137 + (32 * _26) + ceil32(return_data.size) + 160 len floor32(mem[_137 + (32 * _26) + ceil32(return_data.size) + 128])]
                        require path1.length - 1 < mem[(32 * _26) + (2 * ceil32(return_data.size)) + 128]
                        sub_d524b0ff = mem[(32 * path1.length - 1) + (32 * _26) + (2 * ceil32(return_data.size)) + 160]
                        if sub_d524b0ff > _123:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 164] = arg2
                            mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 196] = _123
                            mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 260] = this.address
                            mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 292] = 9999999999999999999
                            mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 324] = path1.length
                            if not path1.length:
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _123, 160, address(this.address), 9999999999999999999, path1.length
                            else:
                                mem[0] = 9
                                mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 356] = address(path1.field_0)
                                idx = (32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 356
                                s = 0
                                while (32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + (32 * path1.length) + 356 > idx + 32:
                                    mem[idx + 32] = path1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _123, Array(len=path1.length, data=mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 356 len 32 * path1.length]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _143) + (32 * _26) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            require mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _143) + (32 * _26) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
                    else:
                        mem[0] = 9
                        mem[(32 * _26) + ceil32(return_data.size) + 228] = address(path1.field_0)
                        idx = (32 * _26) + ceil32(return_data.size) + 228
                        s = 0
                        while (32 * _26) + ceil32(return_data.size) + (32 * path1.length) + 228 > idx + 32:
                            mem[idx + 32] = path1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=path1.length, data=mem[(32 * _26) + ceil32(return_data.size) + 228 len 32 * path1.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _26) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _26) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _391 = mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _26) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _26) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _26) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _26) + ceil32(return_data.size) + 128]
                        _415 = mem[_391 + (32 * _26) + ceil32(return_data.size) + 128]
                        mem[(32 * _26) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_391 + (32 * _26) + ceil32(return_data.size) + 128])] = mem[_391 + (32 * _26) + ceil32(return_data.size) + 160 len floor32(mem[_391 + (32 * _26) + ceil32(return_data.size) + 128])]
                        require path1.length - 1 < mem[(32 * _26) + (2 * ceil32(return_data.size)) + 128]
                        sub_d524b0ff = mem[(32 * path1.length - 1) + (32 * _26) + (2 * ceil32(return_data.size)) + 160]
                        if sub_d524b0ff > _123:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 164] = arg2
                            mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 196] = _123
                            mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 260] = this.address
                            mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 292] = 9999999999999999999
                            mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 324] = path1.length
                            if not path1.length:
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _123, 160, address(this.address), 9999999999999999999, path1.length
                            else:
                                mem[0] = 9
                                mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 356] = address(path1.field_0)
                                idx = (32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 356
                                s = 0
                                while (32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + (32 * path1.length) + 356 > idx + 32:
                                    mem[idx + 32] = path1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _123, Array(len=path1.length, data=mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 356 len 32 * path1.length]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _415) + (32 * _26) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            require mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _415) + (32 * _26) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _123
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor14, sub_d524b0ff - _123
                else:
                    mem[0] = 8
                    mem[196] = address(path.field_0)
                    idx = 196
                    s = 0
                    while (32 * path.length) + 196 > idx + 32:
                        mem[idx + 32] = path[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=path.length, data=mem[196 len 32 * path.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _223 = mem[96 len 4], Mask(224, 32, arg2) >> 32
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                    _242 = mem[_223 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_223 + 96])] = mem[_223 + 128 len floor32(mem[_223 + 96])]
                    require 0 < mem[ceil32(return_data.size) + 96]
                    _386 = mem[ceil32(return_data.size) + 128]
                    require 0 < path1.length
                    address(path1.field_0) = address(ext_call.return_data[0])
                    require 1 < path1.length
                    mem[0] = 9
                    address(path1.field_256) = address(ext_call.return_data[0])
                    mem[(32 * _242) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _242) + ceil32(return_data.size) + 132] = arg2
                    mem[(32 * _242) + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _242) + ceil32(return_data.size) + 196] = path1.length
                    if not path1.length:
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, 64, path1.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _242) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _242) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _424 = mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _242) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _242) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _242) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _242) + ceil32(return_data.size) + 128]
                        _443 = mem[_424 + (32 * _242) + ceil32(return_data.size) + 128]
                        mem[(32 * _242) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_424 + (32 * _242) + ceil32(return_data.size) + 128])] = mem[_424 + (32 * _242) + ceil32(return_data.size) + 160 len floor32(mem[_424 + (32 * _242) + ceil32(return_data.size) + 128])]
                        require path1.length - 1 < mem[(32 * _242) + (2 * ceil32(return_data.size)) + 128]
                        sub_d524b0ff = mem[(32 * path1.length - 1) + (32 * _242) + (2 * ceil32(return_data.size)) + 160]
                        if sub_d524b0ff > _386:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 164] = arg2
                            mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 196] = _386
                            mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 260] = this.address
                            mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 292] = 9999999999999999999
                            mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 324] = path1.length
                            if not path1.length:
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _386, 160, address(this.address), 9999999999999999999, path1.length
                            else:
                                mem[0] = 9
                                mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 356] = address(path1.field_0)
                                idx = (32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 356
                                s = 0
                                while (32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + (32 * path1.length) + 356 > idx + 32:
                                    mem[idx + 32] = path1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _386, Array(len=path1.length, data=mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 356 len 32 * path1.length]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _443) + (32 * _242) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            require mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _443) + (32 * _242) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
                    else:
                        mem[0] = 9
                        mem[(32 * _242) + ceil32(return_data.size) + 228] = address(path1.field_0)
                        idx = (32 * _242) + ceil32(return_data.size) + 228
                        s = 0
                        while (32 * _242) + ceil32(return_data.size) + (32 * path1.length) + 228 > idx + 32:
                            mem[idx + 32] = path1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=path1.length, data=mem[(32 * _242) + ceil32(return_data.size) + 228 len 32 * path1.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _242) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _242) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _739 = mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _242) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _242) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _242) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _242) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _242) + ceil32(return_data.size) + 128]
                        _769 = mem[_739 + (32 * _242) + ceil32(return_data.size) + 128]
                        mem[(32 * _242) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_739 + (32 * _242) + ceil32(return_data.size) + 128])] = mem[_739 + (32 * _242) + ceil32(return_data.size) + 160 len floor32(mem[_739 + (32 * _242) + ceil32(return_data.size) + 128])]
                        require path1.length - 1 < mem[(32 * _242) + (2 * ceil32(return_data.size)) + 128]
                        sub_d524b0ff = mem[(32 * path1.length - 1) + (32 * _242) + (2 * ceil32(return_data.size)) + 160]
                        if sub_d524b0ff > _386:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 164] = arg2
                            mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 196] = _386
                            mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 260] = this.address
                            mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 292] = 9999999999999999999
                            mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 324] = path1.length
                            if not path1.length:
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _386, 160, address(this.address), 9999999999999999999, path1.length
                            else:
                                mem[0] = 9
                                mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 356] = address(path1.field_0)
                                idx = (32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 356
                                s = 0
                                while (32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + (32 * path1.length) + 356 > idx + 32:
                                    mem[idx + 32] = path1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _386, Array(len=path1.length, data=mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 356 len 32 * path1.length]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _769) + (32 * _242) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            require mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _769) + (32 * _242) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _386
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor14, sub_d524b0ff - _386
            else:
                require not arg3
                require 0 < path.length
                address(path.field_0) = address(ext_call.return_data[0])
                require 1 < path.length
                address(path.field_256) = address(ext_call.return_data[0])
                mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[100] = arg2
                mem[132] = 64
                mem[164] = path.length
                if not path.length:
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg2, 64, path.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _23 = mem[96 len 4], Mask(224, 32, arg2) >> 32
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                    _28 = mem[_23 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_23 + 96])] = mem[_23 + 128 len floor32(mem[_23 + 96])]
                    require 0 < mem[ceil32(return_data.size) + 96]
                    _124 = mem[ceil32(return_data.size) + 128]
                    require 0 < path1.length
                    address(path1.field_0) = address(ext_call.return_data[0])
                    require 1 < path1.length
                    mem[0] = 9
                    address(path1.field_256) = address(ext_call.return_data[0])
                    mem[(32 * _28) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _28) + ceil32(return_data.size) + 132] = arg2
                    mem[(32 * _28) + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _28) + ceil32(return_data.size) + 196] = path1.length
                    if not path1.length:
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, 64, path1.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _28) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _28) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _139 = mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _28) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _28) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _28) + ceil32(return_data.size) + 128]
                        _144 = mem[_139 + (32 * _28) + ceil32(return_data.size) + 128]
                        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_139 + (32 * _28) + ceil32(return_data.size) + 128])] = mem[_139 + (32 * _28) + ceil32(return_data.size) + 160 len floor32(mem[_139 + (32 * _28) + ceil32(return_data.size) + 128])]
                        require path1.length - 1 < mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128]
                        sub_d524b0ff = mem[(32 * path1.length - 1) + (32 * _28) + (2 * ceil32(return_data.size)) + 160]
                        if sub_d524b0ff > _124:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 164] = arg2
                            mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 196] = _124
                            mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 260] = this.address
                            mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 292] = 9999999999999999999
                            mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 324] = path1.length
                            if not path1.length:
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _124, 160, address(this.address), 9999999999999999999, path1.length
                            else:
                                mem[0] = 9
                                mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 356] = address(path1.field_0)
                                idx = (32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 356
                                s = 0
                                while (32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + (32 * path1.length) + 356 > idx + 32:
                                    mem[idx + 32] = path1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _124, Array(len=path1.length, data=mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 356 len 32 * path1.length]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _144) + (32 * _28) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            require mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _144) + (32 * _28) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
                    else:
                        mem[0] = 9
                        mem[(32 * _28) + ceil32(return_data.size) + 228] = address(path1.field_0)
                        idx = (32 * _28) + ceil32(return_data.size) + 228
                        s = 0
                        while (32 * _28) + ceil32(return_data.size) + (32 * path1.length) + 228 > idx + 32:
                            mem[idx + 32] = path1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=path1.length, data=mem[(32 * _28) + ceil32(return_data.size) + 228 len 32 * path1.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _28) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _28) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _394 = mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _28) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _28) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _28) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _28) + ceil32(return_data.size) + 128]
                        _416 = mem[_394 + (32 * _28) + ceil32(return_data.size) + 128]
                        mem[(32 * _28) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_394 + (32 * _28) + ceil32(return_data.size) + 128])] = mem[_394 + (32 * _28) + ceil32(return_data.size) + 160 len floor32(mem[_394 + (32 * _28) + ceil32(return_data.size) + 128])]
                        require path1.length - 1 < mem[(32 * _28) + (2 * ceil32(return_data.size)) + 128]
                        sub_d524b0ff = mem[(32 * path1.length - 1) + (32 * _28) + (2 * ceil32(return_data.size)) + 160]
                        if sub_d524b0ff > _124:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 164] = arg2
                            mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 196] = _124
                            mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 260] = this.address
                            mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 292] = 9999999999999999999
                            mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 324] = path1.length
                            if not path1.length:
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _124, 160, address(this.address), 9999999999999999999, path1.length
                            else:
                                mem[0] = 9
                                mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 356] = address(path1.field_0)
                                idx = (32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 356
                                s = 0
                                while (32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + (32 * path1.length) + 356 > idx + 32:
                                    mem[idx + 32] = path1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _124, Array(len=path1.length, data=mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 356 len 32 * path1.length]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _416) + (32 * _28) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            require mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _416) + (32 * _28) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _124
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor14, sub_d524b0ff - _124
                else:
                    mem[0] = 8
                    mem[196] = address(path.field_0)
                    idx = 196
                    s = 0
                    while (32 * path.length) + 196 > idx + 32:
                        mem[idx + 32] = path[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=path.length, data=mem[196 len 32 * path.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _229 = mem[96 len 4], Mask(224, 32, arg2) >> 32
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                    _248 = mem[_229 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[_229 + 96])] = mem[_229 + 128 len floor32(mem[_229 + 96])]
                    require 0 < mem[ceil32(return_data.size) + 96]
                    _390 = mem[ceil32(return_data.size) + 128]
                    require 0 < path1.length
                    address(path1.field_0) = address(ext_call.return_data[0])
                    require 1 < path1.length
                    mem[0] = 9
                    address(path1.field_256) = address(ext_call.return_data[0])
                    mem[(32 * _248) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _248) + ceil32(return_data.size) + 132] = arg2
                    mem[(32 * _248) + ceil32(return_data.size) + 164] = 64
                    mem[(32 * _248) + ceil32(return_data.size) + 196] = path1.length
                    if not path1.length:
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, 64, path1.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _248) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _248) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _429 = mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _248) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _248) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _248) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _248) + ceil32(return_data.size) + 128]
                        _444 = mem[_429 + (32 * _248) + ceil32(return_data.size) + 128]
                        mem[(32 * _248) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_429 + (32 * _248) + ceil32(return_data.size) + 128])] = mem[_429 + (32 * _248) + ceil32(return_data.size) + 160 len floor32(mem[_429 + (32 * _248) + ceil32(return_data.size) + 128])]
                        require path1.length - 1 < mem[(32 * _248) + (2 * ceil32(return_data.size)) + 128]
                        sub_d524b0ff = mem[(32 * path1.length - 1) + (32 * _248) + (2 * ceil32(return_data.size)) + 160]
                        if sub_d524b0ff > _390:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 164] = arg2
                            mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 196] = _390
                            mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 260] = this.address
                            mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 292] = 9999999999999999999
                            mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 324] = path1.length
                            if not path1.length:
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _390, 160, address(this.address), 9999999999999999999, path1.length
                            else:
                                mem[0] = 9
                                mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 356] = address(path1.field_0)
                                idx = (32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 356
                                s = 0
                                while (32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + (32 * path1.length) + 356 > idx + 32:
                                    mem[idx + 32] = path1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _390, Array(len=path1.length, data=mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 356 len 32 * path1.length]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _444) + (32 * _248) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            require mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _444) + (32 * _248) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
                    else:
                        mem[0] = 9
                        mem[(32 * _248) + ceil32(return_data.size) + 228] = address(path1.field_0)
                        idx = (32 * _248) + ceil32(return_data.size) + 228
                        s = 0
                        while (32 * _248) + ceil32(return_data.size) + (32 * path1.length) + 228 > idx + 32:
                            mem[idx + 32] = path1[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sushiRouterAddress)
                        staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=path1.length, data=mem[(32 * _248) + ceil32(return_data.size) + 228 len 32 * path1.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _248) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _248) + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _741 = mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _248) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _248) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                        mem[(32 * _248) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _248) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _248) + ceil32(return_data.size) + 128]
                        _770 = mem[_741 + (32 * _248) + ceil32(return_data.size) + 128]
                        mem[(32 * _248) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_741 + (32 * _248) + ceil32(return_data.size) + 128])] = mem[_741 + (32 * _248) + ceil32(return_data.size) + 160 len floor32(mem[_741 + (32 * _248) + ceil32(return_data.size) + 128])]
                        require path1.length - 1 < mem[(32 * _248) + (2 * ceil32(return_data.size)) + 128]
                        sub_d524b0ff = mem[(32 * path1.length - 1) + (32 * _248) + (2 * ceil32(return_data.size)) + 160]
                        if sub_d524b0ff > _390:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sushiRouterAddress, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 164] = arg2
                            mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 196] = _390
                            mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 260] = this.address
                            mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 292] = 9999999999999999999
                            mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 228] = 160
                            mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 324] = path1.length
                            if not path1.length:
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _390, 160, address(this.address), 9999999999999999999, path1.length
                            else:
                                mem[0] = 9
                                mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 356] = address(path1.field_0)
                                idx = (32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 356
                                s = 0
                                while (32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + (32 * path1.length) + 356 > idx + 32:
                                    mem[idx + 32] = path1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args arg2, _390, Array(len=path1.length, data=mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 356 len 32 * path1.length]), address(this.address), 9999999999999999999
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _770) + (32 * _248) + (4 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            require mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                            require mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, arg2) >> 32 + (32 * _770) + (32 * _248) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _390
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor14, sub_d524b0ff - _390
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
