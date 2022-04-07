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
array of address path;
array of address path1;
array of address tokens;
array of address sub_03bdd72e;
array of address sub_e7492977;
uint8 sub_bf85c715;
address stor13; offset 8

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
    return path1[arg1]
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
    return path[arg1]
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

function sub_f38d82eb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
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
    call stor13.0xa9059cbb with:
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

function sub_4af0d349(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 36).length
    mem[196 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 196] = 0
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    require ('cd', 36).length - 1 < mem[ceil32(return_data.size) + 96]
    if mem[(32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 128] + cd[4] <= cd[4]:
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sushiRouterAddress, cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = cd[4]
    mem[(32 * _7) + ceil32(return_data.size) + 164] = cd[4]
    mem[(32 * _7) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _7) + ceil32(return_data.size) + 260] = 9999999999999999999
    mem[(32 * _7) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _7) + ceil32(return_data.size) + 292] = ('cd', 36).length
    mem[(32 * _7) + ceil32(return_data.size) + 324 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _7) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 324] = 0
    require ext_code.size(sushiRouterAddress)
    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[4], cd[4], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), 9999999999999999999
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _7) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * _7) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]
    require ('cd', 36).length - 1 < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
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
            mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 196 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + 168 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
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
                    mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 196 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                    delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 168 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
                else:
                    require msg.sender == 0x55aec00dc22bfca3f2acf092148bddf218e1ac7
                    mem[ceil32(arg2.length) + 128] = 4
                    mem[64] = ceil32(arg2.length) + 164
                    mem[ceil32(arg2.length) + 164 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 164 len arg2.length % 32])) >> 224
                    _125 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 164])
                    delegate arg1.mem[ceil32(arg2.length) + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(arg2.length) + 168 len _125 - 4]
}



}
