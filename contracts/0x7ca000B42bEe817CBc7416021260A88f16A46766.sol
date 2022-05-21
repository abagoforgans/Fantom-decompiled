contract main {




// =====================  Runtime code  =====================


const name = 'sbotunsafe7'

const decimals = 18

const symbol = 'sbotunsafe7'

const uniPool = ext_call.return_data[12 len 20]

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const FACTORY = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3

const ROUTER = 0xf491e7b69e4244ad4002bc14e878a34207e38c29


address govAddress;
address uniswapRouterAddress;
mapping of uint256 stor3;
uint256 stor4;
uint256 sub_ef016fc9;
uint256 slippage;
uint256 sub_617ff386;
address sub_4e148a4cAddress;

function gov() payable {
    return govAddress
}

function slippage() payable {
    return slippage
}

function sub_4e148a4c(?) payable {
    return sub_4e148a4cAddress
}

function sub_617ff386(?) payable {
    return sub_617ff386
}

function uniswapRouter() payable {
    return uniswapRouterAddress
}

function sub_ef016fc9(?) payable {
    return sub_ef016fc9
}

function _fallback() payable {
    revert
}

function sub_4323cf65(?) payable {
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256 len 0] = None
    return Array(len=2, data=mem[256 len 64])
}

function sub_95907755(?) payable {
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256 len 0] = None
    return Array(len=2, data=mem[256 len 64])
}

function sub_ea47c8a6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _26 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _29 = mem[_26 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_26 + 192])] = mem[_26 + 224 len floor32(mem[_26 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _29) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _29) + ceil32(return_data.size) + 224
       len 32
}

function sub_b1a475ef(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _70 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _73 = mem[_70 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_70 + 192])] = mem[_70 + 224 len floor32(mem[_70 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    if mem[ceil32(return_data.size) + 256]:
        if 100 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != 100:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _73) + ceil32(return_data.size) + 325 len 31]
    if slippage <= 0:
        revert with 0, ':divErr'
    require slippage
    stor3[this.address][0xf491e7b69e4244ad4002bc14e878a34207e38c29] = stor4
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _73) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
    mem[(32 * _73) + ceil32(return_data.size) + 320] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _73) + ceil32(return_data.size) + 324] = arg1
    mem[(32 * _73) + ceil32(return_data.size) + 356] = 1
    mem[(32 * _73) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _73) + ceil32(return_data.size) + 452] = block.timestamp + 300
    mem[(32 * _73) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _73) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _73) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[(32 * _73) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _73) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _73) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[(32 * _73) + ceil32(return_data.size) + mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + 320] <= 4294967296 and mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * _73) + ceil32(return_data.size) + mem[(32 * _73) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + 320]) + 32 <= return_data.size
}



}
