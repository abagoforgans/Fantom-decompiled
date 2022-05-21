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
uint256 stor4;
uint256 sub_ef016fc9;
uint256 slippage;
uint256 sub_617ff386;
address sub_4e148a4cAddress;
address sub_af847dc6Address;

function gov() {
    return govAddress
}

function slippage() {
    return slippage
}

function sub_4e148a4c(?) {
    return sub_4e148a4cAddress
}

function sub_617ff386(?) {
    return sub_617ff386
}

function uniswapRouter() {
    return uniswapRouterAddress
}

function sub_af847dc6(?) {
    return sub_af847dc6Address
}

function sub_ef016fc9(?) {
    return sub_ef016fc9
}

function _fallback() payable {
    revert
}

function sub_4323cf65(?) {
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256 len 0] = None
    return Array(len=2, data=mem[256 len 64])
}

function sub_95907755(?) {
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256 len 0] = None
    return Array(len=2, data=mem[256 len 64])
}

function sub_ea47c8a6(?) {
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
    _56 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _59 = mem[_56 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_56 + 192])] = mem[_56 + 224 len floor32(mem[_56 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    if mem[ceil32(return_data.size) + 256]:
        if 100 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != 100:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _59) + ceil32(return_data.size) + 325 len 31]
    require ext_code.size(sub_af847dc6Address)
    call sub_af847dc6Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _59) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[(32 * _59) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
