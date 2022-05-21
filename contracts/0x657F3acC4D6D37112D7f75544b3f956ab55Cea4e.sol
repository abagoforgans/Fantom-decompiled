contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = ''

const decimals = 18

const symbol = ''

const ROUTER = 0xf491e7b69e4244ad4002bc14e878a34207e38c29


address govAddress;
address uniswapRouterAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor5;
uint256 sub_ef016fc9;
uint256 slippage;
uint256 sub_617ff386;
address sub_4e148a4cAddress;
address pairPoolAddress;
uint256 float_target;
uint256 constant_target;

function gov() {
    return govAddress
}

function totalSupply() {
    return totalSupply
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function uniswapRouter() {
    return uniswapRouterAddress
}

function constant_target() {
    return constant_target
}

function pairPool() {
    return pairPoolAddress
}

function float_target() {
    return float_target
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ef016fc9(?) {
    return sub_ef016fc9
}

function _fallback() payable {
    revert
}

function sub_3309ab6a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    slippage = arg1
}

function sub_b4a6808e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    govAddress = arg1
}

function sub_ccd54bd8(?) {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    sub_ef016fc9 = arg1
}

function sub_f8b8bc6f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == govAddress
    sub_617ff386 = arg1
}

function sub_77003954(?) {
    if block.timestamp <= stor5 + sub_ef016fc9:
        return 0
    return (block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function sub_2db5ae04(?) payable {
    require msg.sender == govAddress
    require ext_code.size(this.address)
    call this.address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, balanceOf[this.address]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(this.address), balanceOf[this.address], balanceOf[this.address], msg.value, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function sub_57d08d2f(?) {
    require calldata.size - 4 >= 32
    if not pairPoolAddress:
        return 0
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = this.address
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
    _28 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _31 = mem[_28 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_28 + 192])] = mem[_28 + 224 len floor32(mem[_28 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _31) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 224]
    return memory
      from (32 * _31) + ceil32(return_data.size) + 224
       len 32
}

function sub_ea47c8a6(?) {
    require calldata.size - 4 >= 32
    if not pairPoolAddress:
        return 0
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
    _28 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _31 = mem[_28 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_28 + 192])] = mem[_28 + 224 len floor32(mem[_28 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _31) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 224]
    return memory
      from (32 * _31) + ceil32(return_data.size) + 224
       len 32
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 2
    require arg2 <= balanceOf[msg.sender]
    if arg2:
        if 25 * arg2 / arg2 != 25:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require 25 * arg2 / 100 <= arg2
        if not pairPoolAddress:
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            mem[96] = 2
            mem[128] = this.address
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[160] = ext_call.return_data[12 len 20]
            mem[292] = this.address
            mem[324] = block.timestamp
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 25 * arg2 / 100, 0 / slippage, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 / slippage:
                if sub_617ff386 * 0 / slippage / 0 / slippage != sub_617ff386:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(152, 0, this.address) << 96
                call sub_4e148a4cAddress with:
                   value sub_617ff386 * 0 / slippage / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[224] = block.difficulty
                    mem[256] = block.timestamp
                    mem[288] = stor5
                    mem[192] = 96
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if eth.balance(this.address):
                            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                revert with 0, 32, 33, 0, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            if not pairPoolAddress:
                                if slippage <= 0:
                                    revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[580 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[580 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[480] = this.address
                                    mem[512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[516] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                    mem[548] = 64
                                    mem[580] = 2
                                    mem[612 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 512
                                    require return_data.size >= 32
                                    _21954 = mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                    require mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512]
                                    _21982 = mem[_21954 + 512]
                                    mem[ceil32(return_data.size) + 544 len floor32(mem[_21954 + 512])] = mem[_21954 + 544 len floor32(mem[_21954 + 512])]
                                    require 0 < mem[ceil32(return_data.size) + 512]
                                    if not mem[ceil32(return_data.size) + 544]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[ceil32(return_data.size) + 544] / mem[ceil32(return_data.size) + 544] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _21982) + ceil32(return_data.size) + 645 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[ceil32(return_data.size) + 544] / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 100 * mem[ceil32(return_data.size) + 544] / slippage, 100 * mem[ceil32(return_data.size) + 544] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[384] = this.address
                                mem[416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[420] = 80 * eth.balance(this.address) / 100
                                mem[452] = 64
                                mem[484] = 2
                                mem[516 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 416
                                require return_data.size >= 32
                                _14854 = mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                require mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                require mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                require mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416] <= 4294967296 and mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 416] = mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416]
                                _14878 = mem[_14854 + 416]
                                mem[ceil32(return_data.size) + 448 len floor32(mem[_14854 + 416])] = mem[_14854 + 448 len floor32(mem[_14854 + 416])]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                if not mem[ceil32(return_data.size) + 448]:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14878) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _14878) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14878) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14878) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14878) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _14878) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14878) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14878) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _14878) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14878) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14878) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34692 = mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14878) + ceil32(return_data.size) + mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _14878) + ceil32(return_data.size) + mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14878) + ceil32(return_data.size) + mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34779 = mem[(32 * _14878) + ceil32(return_data.size) + _34692 + 640]
                                        mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14878) + ceil32(return_data.size) + _34692 + 640])] = mem[(32 * _14878) + ceil32(return_data.size) + _34692 + 672 len floor32(mem[(32 * _14878) + ceil32(return_data.size) + _34692 + 640])]
                                        require 0 < mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34779) + (32 * _14878) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    if 100 * mem[ceil32(return_data.size) + 448] / mem[ceil32(return_data.size) + 448] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14878) + ceil32(return_data.size) + 549 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14878) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 100 * mem[ceil32(return_data.size) + 448] / slippage, Array(len=2, data=mem[(32 * _14878) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14878) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14878) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14878) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _14878) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14878) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14878) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _14878) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14878) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14878) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34690 = mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14878) + ceil32(return_data.size) + mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _14878) + ceil32(return_data.size) + mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14878) + ceil32(return_data.size) + mem[(32 * _14878) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34778 = mem[(32 * _14878) + ceil32(return_data.size) + _34690 + 640]
                                        mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14878) + ceil32(return_data.size) + _34690 + 640])] = mem[(32 * _14878) + ceil32(return_data.size) + _34690 + 672 len floor32(mem[(32 * _14878) + ceil32(return_data.size) + _34690 + 640])]
                                        require 0 < mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34778) + (32 * _14878) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14878) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                        else:
                            if not pairPoolAddress:
                                if slippage <= 0:
                                    revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[580 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[580 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[480] = this.address
                                    mem[512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[516] = eth.balance(this.address)
                                    mem[548] = 64
                                    mem[580] = 2
                                    mem[612 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args eth.balance(this.address), 64, 0, 2, mem[612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 512
                                    require return_data.size >= 32
                                    _21956 = mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                    require mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512]
                                    _21983 = mem[_21956 + 512]
                                    mem[ceil32(return_data.size) + 544 len floor32(mem[_21956 + 512])] = mem[_21956 + 544 len floor32(mem[_21956 + 512])]
                                    require 0 < mem[ceil32(return_data.size) + 512]
                                    if not mem[ceil32(return_data.size) + 544]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[ceil32(return_data.size) + 544] / mem[ceil32(return_data.size) + 544] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _21983) + ceil32(return_data.size) + 645 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[ceil32(return_data.size) + 544] / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 100 * mem[ceil32(return_data.size) + 544] / slippage, 100 * mem[ceil32(return_data.size) + 544] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                mem[320] = 2
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[352] = ext_call.return_data[12 len 20]
                                mem[384] = this.address
                                mem[416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[420] = 0
                                mem[452] = 64
                                mem[484] = 2
                                mem[516 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 0, 64, 2, mem[516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 416
                                require return_data.size >= 32
                                _14856 = mem[416 len 4], 0
                                require mem[416 len 4], 0 <= 4294967296
                                require mem[416 len 4], 0 + 32 <= return_data.size
                                require mem[mem[416 len 4], 0 + 416] <= 4294967296 and mem[416 len 4], 0 + (32 * mem[mem[416 len 4], 0 + 416]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 416] = mem[mem[416 len 4], 0 + 416]
                                _14879 = mem[_14856 + 416]
                                mem[ceil32(return_data.size) + 448 len floor32(mem[_14856 + 416])] = mem[_14856 + 448 len floor32(mem[_14856 + 416])]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                if not mem[ceil32(return_data.size) + 448]:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14879) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _14879) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14879) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14879) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14879) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _14879) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14879) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14879) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _14879) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14879) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14879) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34696 = mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14879) + ceil32(return_data.size) + mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _14879) + ceil32(return_data.size) + mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14879) + ceil32(return_data.size) + mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34781 = mem[(32 * _14879) + ceil32(return_data.size) + _34696 + 640]
                                        mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14879) + ceil32(return_data.size) + _34696 + 640])] = mem[(32 * _14879) + ceil32(return_data.size) + _34696 + 672 len floor32(mem[(32 * _14879) + ceil32(return_data.size) + _34696 + 640])]
                                        require 0 < mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34781) + (32 * _14879) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    if 100 * mem[ceil32(return_data.size) + 448] / mem[ceil32(return_data.size) + 448] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14879) + ceil32(return_data.size) + 549 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14879) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 100 * mem[ceil32(return_data.size) + 448] / slippage, Array(len=2, data=mem[(32 * _14879) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14879) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14879) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14879) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _14879) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14879) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14879) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _14879) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14879) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14879) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34694 = mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14879) + ceil32(return_data.size) + mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _14879) + ceil32(return_data.size) + mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14879) + ceil32(return_data.size) + mem[(32 * _14879) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34780 = mem[(32 * _14879) + ceil32(return_data.size) + _34694 + 640]
                                        mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14879) + ceil32(return_data.size) + _34694 + 640])] = mem[(32 * _14879) + ceil32(return_data.size) + _34694 + 672 len floor32(mem[(32 * _14879) + ceil32(return_data.size) + _34694 + 640])]
                                        require 0 < mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34780) + (32 * _14879) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14879) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 0, eth.balance(this.address)
            else:
                call sub_4e148a4cAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[224] = block.difficulty
                    mem[256] = block.timestamp
                    mem[288] = stor5
                    mem[192] = 96
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if not eth.balance(this.address):
                            if not pairPoolAddress:
                                if slippage <= 0:
                                    revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[580 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[580 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[480] = this.address
                                    mem[512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[516] = eth.balance(this.address)
                                    mem[548] = 64
                                    mem[580] = 2
                                    mem[612 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args eth.balance(this.address), 64, 0, 2, mem[612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 512
                                    require return_data.size >= 32
                                    _21960 = mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                    require mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512]
                                    _21985 = mem[_21960 + 512]
                                    mem[ceil32(return_data.size) + 544 len floor32(mem[_21960 + 512])] = mem[_21960 + 544 len floor32(mem[_21960 + 512])]
                                    require 0 < mem[ceil32(return_data.size) + 512]
                                    if not mem[ceil32(return_data.size) + 544]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[ceil32(return_data.size) + 544] / mem[ceil32(return_data.size) + 544] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _21985) + ceil32(return_data.size) + 645 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[ceil32(return_data.size) + 544] / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 100 * mem[ceil32(return_data.size) + 544] / slippage, 100 * mem[ceil32(return_data.size) + 544] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                mem[320] = 2
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[352] = ext_call.return_data[12 len 20]
                                mem[384] = this.address
                                mem[416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[420] = 0
                                mem[452] = 64
                                mem[484] = 2
                                mem[516 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 0, 64, 2, mem[516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 416
                                require return_data.size >= 32
                                _14860 = mem[416 len 4], 0
                                require mem[416 len 4], 0 <= 4294967296
                                require mem[416 len 4], 0 + 32 <= return_data.size
                                require mem[mem[416 len 4], 0 + 416] <= 4294967296 and mem[416 len 4], 0 + (32 * mem[mem[416 len 4], 0 + 416]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 416] = mem[mem[416 len 4], 0 + 416]
                                _14881 = mem[_14860 + 416]
                                mem[ceil32(return_data.size) + 448 len floor32(mem[_14860 + 416])] = mem[_14860 + 448 len floor32(mem[_14860 + 416])]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                if not mem[ceil32(return_data.size) + 448]:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14881) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _14881) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14881) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14881) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14881) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _14881) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14881) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14881) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _14881) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14881) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14881) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34704 = mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14881) + ceil32(return_data.size) + mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _14881) + ceil32(return_data.size) + mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14881) + ceil32(return_data.size) + mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34785 = mem[(32 * _14881) + ceil32(return_data.size) + _34704 + 640]
                                        mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14881) + ceil32(return_data.size) + _34704 + 640])] = mem[(32 * _14881) + ceil32(return_data.size) + _34704 + 672 len floor32(mem[(32 * _14881) + ceil32(return_data.size) + _34704 + 640])]
                                        require 0 < mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34785) + (32 * _14881) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    if 100 * mem[ceil32(return_data.size) + 448] / mem[ceil32(return_data.size) + 448] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14881) + ceil32(return_data.size) + 549 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14881) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 100 * mem[ceil32(return_data.size) + 448] / slippage, Array(len=2, data=mem[(32 * _14881) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14881) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14881) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14881) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _14881) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14881) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14881) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _14881) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14881) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14881) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34702 = mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14881) + ceil32(return_data.size) + mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _14881) + ceil32(return_data.size) + mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14881) + ceil32(return_data.size) + mem[(32 * _14881) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34784 = mem[(32 * _14881) + ceil32(return_data.size) + _34702 + 640]
                                        mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14881) + ceil32(return_data.size) + _34702 + 640])] = mem[(32 * _14881) + ceil32(return_data.size) + _34702 + 672 len floor32(mem[(32 * _14881) + ceil32(return_data.size) + _34702 + 640])]
                                        require 0 < mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34784) + (32 * _14881) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14881) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 0, eth.balance(this.address)
                        else:
                            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                revert with 0, 32, 33, 0, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            if not pairPoolAddress:
                                if slippage <= 0:
                                    revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[580 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[580 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[480] = this.address
                                    mem[512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[516] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                    mem[548] = 64
                                    mem[580] = 2
                                    mem[612 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 512
                                    require return_data.size >= 32
                                    _21958 = mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                    require mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512]
                                    _21984 = mem[_21958 + 512]
                                    mem[ceil32(return_data.size) + 544 len floor32(mem[_21958 + 512])] = mem[_21958 + 544 len floor32(mem[_21958 + 512])]
                                    require 0 < mem[ceil32(return_data.size) + 512]
                                    if not mem[ceil32(return_data.size) + 544]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[ceil32(return_data.size) + 544] / mem[ceil32(return_data.size) + 544] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _21984) + ceil32(return_data.size) + 645 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[ceil32(return_data.size) + 544] / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 100 * mem[ceil32(return_data.size) + 544] / slippage, 100 * mem[ceil32(return_data.size) + 544] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                mem[320] = 2
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[352] = ext_call.return_data[12 len 20]
                                mem[384] = this.address
                                mem[416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[420] = 80 * eth.balance(this.address) / 100
                                mem[452] = 64
                                mem[484] = 2
                                mem[516 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 416
                                require return_data.size >= 32
                                _14858 = mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                require mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                require mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                require mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416] <= 4294967296 and mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 416] = mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416]
                                _14880 = mem[_14858 + 416]
                                mem[ceil32(return_data.size) + 448 len floor32(mem[_14858 + 416])] = mem[_14858 + 448 len floor32(mem[_14858 + 416])]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                if not mem[ceil32(return_data.size) + 448]:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14880) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _14880) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14880) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14880) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14880) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _14880) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14880) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14880) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _14880) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14880) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14880) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34700 = mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14880) + ceil32(return_data.size) + mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _14880) + ceil32(return_data.size) + mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14880) + ceil32(return_data.size) + mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34783 = mem[(32 * _14880) + ceil32(return_data.size) + _34700 + 640]
                                        mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14880) + ceil32(return_data.size) + _34700 + 640])] = mem[(32 * _14880) + ceil32(return_data.size) + _34700 + 672 len floor32(mem[(32 * _14880) + ceil32(return_data.size) + _34700 + 640])]
                                        require 0 < mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34783) + (32 * _14880) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    if 100 * mem[ceil32(return_data.size) + 448] / mem[ceil32(return_data.size) + 448] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14880) + ceil32(return_data.size) + 549 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14880) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 100 * mem[ceil32(return_data.size) + 448] / slippage, Array(len=2, data=mem[(32 * _14880) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14880) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14880) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14880) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _14880) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14880) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14880) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _14880) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14880) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14880) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34698 = mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14880) + ceil32(return_data.size) + mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _14880) + ceil32(return_data.size) + mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14880) + ceil32(return_data.size) + mem[(32 * _14880) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34782 = mem[(32 * _14880) + ceil32(return_data.size) + _34698 + 640]
                                        mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14880) + ceil32(return_data.size) + _34698 + 640])] = mem[(32 * _14880) + ceil32(return_data.size) + _34698 + 672 len floor32(mem[(32 * _14880) + ceil32(return_data.size) + _34698 + 640])]
                                        require 0 < mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34782) + (32 * _14880) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14880) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
        else:
            mem[96] = 2
            mem[128] = this.address
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[160] = ext_call.return_data[12 len 20]
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 25 * arg2 / 100
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 25 * arg2 / 100, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _7438 = mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32
            require mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192]
            _7444 = mem[_7438 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_7438 + 192])] = mem[_7438 + 224 len floor32(mem[_7438 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _14844 = mem[ceil32(return_data.size) + 224]
            if mem[ceil32(return_data.size) + 224]:
                if 100 * mem[ceil32(return_data.size) + 224] / mem[ceil32(return_data.size) + 224] != 100:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _7444) + ceil32(return_data.size) + 325 len 31]
                if slippage <= 0:
                    revert with 0, ':divErr'
                require slippage
                mem[(32 * _7444) + ceil32(return_data.size) + 224] = 2
                mem[(32 * _7444) + ceil32(return_data.size) + 256] = this.address
                require ext_code.size(uniswapRouterAddress)
                staticcall uniswapRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _7444) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                mem[(32 * _7444) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _7444) + ceil32(return_data.size) + 452] = block.timestamp
                mem[(32 * _7444) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _7444) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(uniswapRouterAddress)
                call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 25 * arg2 / 100, 100 * _14844 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 100 * _14844 / slippage:
                    if sub_617ff386 * 100 * _14844 / slippage / 100 * _14844 / slippage != sub_617ff386:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(152, 0, this.address) << 96
                    call sub_4e148a4cAddress with:
                       value sub_617ff386 * 100 * _14844 / slippage / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp > stor5 + sub_ef016fc9:
                        mem[(32 * _7444) + ceil32(return_data.size) + 352] = block.difficulty
                        mem[(32 * _7444) + ceil32(return_data.size) + 384] = block.timestamp
                        mem[(32 * _7444) + ceil32(return_data.size) + 416] = stor5
                        mem[(32 * _7444) + ceil32(return_data.size) + 320] = 96
                        if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                            stor5 = block.timestamp
                            if eth.balance(this.address):
                                if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                    revert with 0, 
                                                32,
                                                33,
                                                0,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _7444) + ceil32(return_data.size) + 549 len 31]
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7444) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7444) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _7444) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7444) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7444) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _7444) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34674 = mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34770 = mem[(32 * _7444) + ceil32(return_data.size) + _34674 + 640]
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34674 + 640])] = mem[(32 * _7444) + ceil32(return_data.size) + _34674 + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34674 + 640])]
                                        require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34770) + (32 * _7444) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7444) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                                    mem[(32 * _7444) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7444) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7444) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 644 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28770 = mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                                    _28818 = mem[(32 * _7444) + ceil32(return_data.size) + _28770 + 544]
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28770 + 544])] = mem[(32 * _7444) + ceil32(return_data.size) + _28770 + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28770 + 544])]
                                    require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42932 = mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43027 = mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42932 + 768]
                                            mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42932 + 768])] = mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42932 + 800 len floor32(mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42932 + 768])]
                                            require 0 < mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43027) + (32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42930 = mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43026 = mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42930 + 768]
                                            mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42930 + 768])] = mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42930 + 800 len floor32(mem[(32 * _28818) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42930 + 768])]
                                            require 0 < mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43026) + (32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28818) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                            else:
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7444) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7444) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _7444) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7444) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7444) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _7444) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34676 = mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34771 = mem[(32 * _7444) + ceil32(return_data.size) + _34676 + 640]
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34676 + 640])] = mem[(32 * _7444) + ceil32(return_data.size) + _34676 + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34676 + 640])]
                                        require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34771) + (32 * _7444) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    mem[(32 * _7444) + ceil32(return_data.size) + 448] = 2
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7444) + ceil32(return_data.size) + 548] = 0
                                    mem[(32 * _7444) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7444) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7444) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[(32 * _7444) + ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28772 = mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                                    require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                                    _28819 = mem[(32 * _7444) + ceil32(return_data.size) + _28772 + 544]
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28772 + 544])] = mem[(32 * _7444) + ceil32(return_data.size) + _28772 + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28772 + 544])]
                                    require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42936 = mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43029 = mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42936 + 768]
                                            mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42936 + 768])] = mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42936 + 800 len floor32(mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42936 + 768])]
                                            require 0 < mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43029) + (32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42934 = mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43028 = mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42934 + 768]
                                            mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42934 + 768])] = mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42934 + 800 len floor32(mem[(32 * _28819) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42934 + 768])]
                                            require 0 < mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43028) + (32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28819) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 0, eth.balance(this.address)
                else:
                    call sub_4e148a4cAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp > stor5 + sub_ef016fc9:
                        mem[(32 * _7444) + ceil32(return_data.size) + 352] = block.difficulty
                        mem[(32 * _7444) + ceil32(return_data.size) + 384] = block.timestamp
                        mem[(32 * _7444) + ceil32(return_data.size) + 416] = stor5
                        mem[(32 * _7444) + ceil32(return_data.size) + 320] = 96
                        if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                            stor5 = block.timestamp
                            if not eth.balance(this.address):
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7444) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7444) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _7444) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7444) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7444) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _7444) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34680 = mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34773 = mem[(32 * _7444) + ceil32(return_data.size) + _34680 + 640]
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34680 + 640])] = mem[(32 * _7444) + ceil32(return_data.size) + _34680 + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34680 + 640])]
                                        require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34773) + (32 * _7444) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7444) + ceil32(return_data.size) + 548] = 0
                                    mem[(32 * _7444) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7444) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7444) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[(32 * _7444) + ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28776 = mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                                    require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                                    _28821 = mem[(32 * _7444) + ceil32(return_data.size) + _28776 + 544]
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28776 + 544])] = mem[(32 * _7444) + ceil32(return_data.size) + _28776 + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28776 + 544])]
                                    require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42944 = mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43033 = mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42944 + 768]
                                            mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42944 + 768])] = mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42944 + 800 len floor32(mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42944 + 768])]
                                            require 0 < mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43033) + (32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42942 = mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43032 = mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42942 + 768]
                                            mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42942 + 768])] = mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42942 + 800 len floor32(mem[(32 * _28821) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42942 + 768])]
                                            require 0 < mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43032) + (32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28821) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 0, eth.balance(this.address)
                            else:
                                if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                    revert with 0, 
                                                32,
                                                33,
                                                0,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _7444) + ceil32(return_data.size) + 549 len 31]
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7444) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7444) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _7444) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7444) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7444) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _7444) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34678 = mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34772 = mem[(32 * _7444) + ceil32(return_data.size) + _34678 + 640]
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34678 + 640])] = mem[(32 * _7444) + ceil32(return_data.size) + _34678 + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34678 + 640])]
                                        require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34772) + (32 * _7444) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    mem[(32 * _7444) + ceil32(return_data.size) + 448] = 2
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7444) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                                    mem[(32 * _7444) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7444) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7444) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 644 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28774 = mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                                    _28820 = mem[(32 * _7444) + ceil32(return_data.size) + _28774 + 544]
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28774 + 544])] = mem[(32 * _7444) + ceil32(return_data.size) + _28774 + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28774 + 544])]
                                    require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42940 = mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43031 = mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42940 + 768]
                                            mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42940 + 768])] = mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42940 + 800 len floor32(mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42940 + 768])]
                                            require 0 < mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43031) + (32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42938 = mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43030 = mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42938 + 768]
                                            mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42938 + 768])] = mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42938 + 800 len floor32(mem[(32 * _28820) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42938 + 768])]
                                            require 0 < mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43030) + (32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28820) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
            else:
                if slippage <= 0:
                    revert with 0, ':divErr'
                require slippage
                mem[(32 * _7444) + ceil32(return_data.size) + 224] = 2
                mem[(32 * _7444) + ceil32(return_data.size) + 256] = this.address
                require ext_code.size(uniswapRouterAddress)
                staticcall uniswapRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _7444) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                mem[(32 * _7444) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _7444) + ceil32(return_data.size) + 452] = block.timestamp
                mem[(32 * _7444) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _7444) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(uniswapRouterAddress)
                call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 25 * arg2 / 100, 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / slippage:
                    call sub_4e148a4cAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp > stor5 + sub_ef016fc9:
                        mem[(32 * _7444) + ceil32(return_data.size) + 352] = block.difficulty
                        mem[(32 * _7444) + ceil32(return_data.size) + 384] = block.timestamp
                        mem[(32 * _7444) + ceil32(return_data.size) + 416] = stor5
                        if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                            stor5 = block.timestamp
                            if not eth.balance(this.address):
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7444) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7444) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _7444) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7444) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7444) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _7444) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34688 = mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34777 = mem[(32 * _7444) + ceil32(return_data.size) + _34688 + 640]
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34688 + 640])] = mem[(32 * _7444) + ceil32(return_data.size) + _34688 + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34688 + 640])]
                                        require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34777) + (32 * _7444) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7444) + ceil32(return_data.size) + 548] = 0
                                    mem[(32 * _7444) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7444) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7444) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[(32 * _7444) + ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28784 = mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                                    require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                                    _28825 = mem[(32 * _7444) + ceil32(return_data.size) + _28784 + 544]
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28784 + 544])] = mem[(32 * _7444) + ceil32(return_data.size) + _28784 + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28784 + 544])]
                                    require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42960 = mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43041 = mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42960 + 768]
                                            mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42960 + 768])] = mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42960 + 800 len floor32(mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42960 + 768])]
                                            require 0 < mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43041) + (32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42958 = mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43040 = mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42958 + 768]
                                            mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42958 + 768])] = mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42958 + 800 len floor32(mem[(32 * _28825) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42958 + 768])]
                                            require 0 < mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43040) + (32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28825) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 0, eth.balance(this.address)
                            else:
                                if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                    revert with 0, 
                                                32,
                                                33,
                                                0,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _7444) + ceil32(return_data.size) + 549 len 31]
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7444) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7444) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _7444) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7444) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7444) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _7444) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34686 = mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34776 = mem[(32 * _7444) + ceil32(return_data.size) + _34686 + 640]
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34686 + 640])] = mem[(32 * _7444) + ceil32(return_data.size) + _34686 + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34686 + 640])]
                                        require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34776) + (32 * _7444) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7444) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                                    mem[(32 * _7444) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7444) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7444) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 644 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28782 = mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                                    _28824 = mem[(32 * _7444) + ceil32(return_data.size) + _28782 + 544]
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28782 + 544])] = mem[(32 * _7444) + ceil32(return_data.size) + _28782 + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28782 + 544])]
                                    require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42956 = mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43039 = mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42956 + 768]
                                            mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42956 + 768])] = mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42956 + 800 len floor32(mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42956 + 768])]
                                            require 0 < mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43039) + (32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42954 = mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43038 = mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42954 + 768]
                                            mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42954 + 768])] = mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42954 + 800 len floor32(mem[(32 * _28824) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42954 + 768])]
                                            require 0 < mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43038) + (32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28824) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                else:
                    if sub_617ff386 * 0 / slippage / 0 / slippage != sub_617ff386:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(152, 0, this.address) << 96
                    call sub_4e148a4cAddress with:
                       value sub_617ff386 * 0 / slippage / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp > stor5 + sub_ef016fc9:
                        mem[(32 * _7444) + ceil32(return_data.size) + 352] = block.difficulty
                        mem[(32 * _7444) + ceil32(return_data.size) + 384] = block.timestamp
                        mem[(32 * _7444) + ceil32(return_data.size) + 416] = stor5
                        mem[(32 * _7444) + ceil32(return_data.size) + 320] = 96
                        if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                            stor5 = block.timestamp
                            if not eth.balance(this.address):
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7444) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7444) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _7444) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7444) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7444) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _7444) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34684 = mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34775 = mem[(32 * _7444) + ceil32(return_data.size) + _34684 + 640]
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34684 + 640])] = mem[(32 * _7444) + ceil32(return_data.size) + _34684 + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34684 + 640])]
                                        require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34775) + (32 * _7444) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    mem[(32 * _7444) + ceil32(return_data.size) + 448] = 2
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7444) + ceil32(return_data.size) + 548] = 0
                                    mem[(32 * _7444) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7444) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7444) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[(32 * _7444) + ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28780 = mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                                    require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                                    _28823 = mem[(32 * _7444) + ceil32(return_data.size) + _28780 + 544]
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28780 + 544])] = mem[(32 * _7444) + ceil32(return_data.size) + _28780 + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28780 + 544])]
                                    require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42952 = mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43037 = mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42952 + 768]
                                            mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42952 + 768])] = mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42952 + 800 len floor32(mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42952 + 768])]
                                            require 0 < mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43037) + (32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42950 = mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43036 = mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42950 + 768]
                                            mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42950 + 768])] = mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42950 + 800 len floor32(mem[(32 * _28823) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42950 + 768])]
                                            require 0 < mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43036) + (32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28823) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 0, eth.balance(this.address)
                            else:
                                if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                    revert with 0, 
                                                32,
                                                33,
                                                0,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _7444) + ceil32(return_data.size) + 549 len 31]
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7444) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7444) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _7444) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7444) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7444) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _7444) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7444) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34682 = mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34774 = mem[(32 * _7444) + ceil32(return_data.size) + _34682 + 640]
                                        mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34682 + 640])] = mem[(32 * _7444) + ceil32(return_data.size) + _34682 + 672 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _34682 + 640])]
                                        require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34774) + (32 * _7444) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    mem[(32 * _7444) + ceil32(return_data.size) + 448] = 2
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7444) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7444) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                                    mem[(32 * _7444) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7444) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7444) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _7444) + ceil32(return_data.size) + 644 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7444) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7444) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28778 = mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                    require mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7444) + ceil32(return_data.size) + mem[(32 * _7444) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                                    _28822 = mem[(32 * _7444) + ceil32(return_data.size) + _28778 + 544]
                                    mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28778 + 544])] = mem[(32 * _7444) + ceil32(return_data.size) + _28778 + 576 len floor32(mem[(32 * _7444) + ceil32(return_data.size) + _28778 + 544])]
                                    require 0 < mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42948 = mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43035 = mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42948 + 768]
                                            mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42948 + 768])] = mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42948 + 800 len floor32(mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42948 + 768])]
                                            require 0 < mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43035) + (32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7444) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42946 = mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43034 = mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42946 + 768]
                                            mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42946 + 768])] = mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42946 + 800 len floor32(mem[(32 * _28822) + (32 * _7444) + (2 * ceil32(return_data.size)) + _42946 + 768])]
                                            require 0 < mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43034) + (32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28822) + (32 * _7444) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
        require arg2 - (25 * arg2 / 100) <= balanceOf[msg.sender]
        balanceOf[msg.sender] = balanceOf[msg.sender] - arg2 + (25 * arg2 / 100)
        require arg2 - (25 * arg2 / 100) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 - (25 * arg2 / 100) + balanceOf[arg1]
        emit Transfer((arg2 - (25 * arg2 / 100)), msg.sender, arg1);
    else:
        require 0 <= arg2
        if not pairPoolAddress:
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            mem[96] = 2
            mem[128] = this.address
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[160] = ext_call.return_data[12 len 20]
            mem[292] = this.address
            mem[324] = block.timestamp
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0 / slippage, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 / slippage:
                if sub_617ff386 * 0 / slippage / 0 / slippage != sub_617ff386:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(152, 0, this.address) << 96
                call sub_4e148a4cAddress with:
                   value sub_617ff386 * 0 / slippage / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[224] = block.difficulty
                    mem[256] = block.timestamp
                    mem[288] = stor5
                    mem[192] = 96
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if eth.balance(this.address):
                            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                revert with 0, 32, 33, 0, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            if not pairPoolAddress:
                                if slippage <= 0:
                                    revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[580 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[580 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[480] = this.address
                                    mem[512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[516] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                    mem[548] = 64
                                    mem[580] = 2
                                    mem[612 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 512
                                    require return_data.size >= 32
                                    _21962 = mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                    require mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512]
                                    _21990 = mem[_21962 + 512]
                                    mem[ceil32(return_data.size) + 544 len floor32(mem[_21962 + 512])] = mem[_21962 + 544 len floor32(mem[_21962 + 512])]
                                    require 0 < mem[ceil32(return_data.size) + 512]
                                    if not mem[ceil32(return_data.size) + 544]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[ceil32(return_data.size) + 544] / mem[ceil32(return_data.size) + 544] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _21990) + ceil32(return_data.size) + 645 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[ceil32(return_data.size) + 544] / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 100 * mem[ceil32(return_data.size) + 544] / slippage, 100 * mem[ceil32(return_data.size) + 544] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[384] = this.address
                                mem[416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[420] = 80 * eth.balance(this.address) / 100
                                mem[452] = 64
                                mem[484] = 2
                                mem[516 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 416
                                require return_data.size >= 32
                                _14862 = mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                require mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                require mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                require mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416] <= 4294967296 and mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 416] = mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416]
                                _14882 = mem[_14862 + 416]
                                mem[ceil32(return_data.size) + 448 len floor32(mem[_14862 + 416])] = mem[_14862 + 448 len floor32(mem[_14862 + 416])]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                if not mem[ceil32(return_data.size) + 448]:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14882) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _14882) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14882) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14882) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14882) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _14882) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14882) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14882) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _14882) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14882) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14882) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34724 = mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14882) + ceil32(return_data.size) + mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _14882) + ceil32(return_data.size) + mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14882) + ceil32(return_data.size) + mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34795 = mem[(32 * _14882) + ceil32(return_data.size) + _34724 + 640]
                                        mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14882) + ceil32(return_data.size) + _34724 + 640])] = mem[(32 * _14882) + ceil32(return_data.size) + _34724 + 672 len floor32(mem[(32 * _14882) + ceil32(return_data.size) + _34724 + 640])]
                                        require 0 < mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34795) + (32 * _14882) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    if 100 * mem[ceil32(return_data.size) + 448] / mem[ceil32(return_data.size) + 448] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14882) + ceil32(return_data.size) + 549 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14882) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 100 * mem[ceil32(return_data.size) + 448] / slippage, Array(len=2, data=mem[(32 * _14882) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14882) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14882) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14882) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _14882) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14882) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14882) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _14882) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14882) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14882) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34722 = mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14882) + ceil32(return_data.size) + mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _14882) + ceil32(return_data.size) + mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14882) + ceil32(return_data.size) + mem[(32 * _14882) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34794 = mem[(32 * _14882) + ceil32(return_data.size) + _34722 + 640]
                                        mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14882) + ceil32(return_data.size) + _34722 + 640])] = mem[(32 * _14882) + ceil32(return_data.size) + _34722 + 672 len floor32(mem[(32 * _14882) + ceil32(return_data.size) + _34722 + 640])]
                                        require 0 < mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34794) + (32 * _14882) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14882) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                        else:
                            if not pairPoolAddress:
                                if slippage <= 0:
                                    revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[580 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[580 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[480] = this.address
                                    mem[512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[516] = eth.balance(this.address)
                                    mem[548] = 64
                                    mem[580] = 2
                                    mem[612 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args eth.balance(this.address), 64, 0, 2, mem[612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 512
                                    require return_data.size >= 32
                                    _21964 = mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                    require mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512]
                                    _21991 = mem[_21964 + 512]
                                    mem[ceil32(return_data.size) + 544 len floor32(mem[_21964 + 512])] = mem[_21964 + 544 len floor32(mem[_21964 + 512])]
                                    require 0 < mem[ceil32(return_data.size) + 512]
                                    if not mem[ceil32(return_data.size) + 544]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[ceil32(return_data.size) + 544] / mem[ceil32(return_data.size) + 544] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _21991) + ceil32(return_data.size) + 645 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[ceil32(return_data.size) + 544] / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 100 * mem[ceil32(return_data.size) + 544] / slippage, 100 * mem[ceil32(return_data.size) + 544] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                mem[320] = 2
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[352] = ext_call.return_data[12 len 20]
                                mem[384] = this.address
                                mem[416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[420] = 0
                                mem[452] = 64
                                mem[484] = 2
                                mem[516 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 0, 64, 2, mem[516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 416
                                require return_data.size >= 32
                                _14864 = mem[416 len 4], 0
                                require mem[416 len 4], 0 <= 4294967296
                                require mem[416 len 4], 0 + 32 <= return_data.size
                                require mem[mem[416 len 4], 0 + 416] <= 4294967296 and mem[416 len 4], 0 + (32 * mem[mem[416 len 4], 0 + 416]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 416] = mem[mem[416 len 4], 0 + 416]
                                _14883 = mem[_14864 + 416]
                                mem[ceil32(return_data.size) + 448 len floor32(mem[_14864 + 416])] = mem[_14864 + 448 len floor32(mem[_14864 + 416])]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                if not mem[ceil32(return_data.size) + 448]:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14883) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _14883) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14883) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14883) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14883) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _14883) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14883) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14883) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _14883) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14883) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14883) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34728 = mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14883) + ceil32(return_data.size) + mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _14883) + ceil32(return_data.size) + mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14883) + ceil32(return_data.size) + mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34797 = mem[(32 * _14883) + ceil32(return_data.size) + _34728 + 640]
                                        mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14883) + ceil32(return_data.size) + _34728 + 640])] = mem[(32 * _14883) + ceil32(return_data.size) + _34728 + 672 len floor32(mem[(32 * _14883) + ceil32(return_data.size) + _34728 + 640])]
                                        require 0 < mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34797) + (32 * _14883) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    if 100 * mem[ceil32(return_data.size) + 448] / mem[ceil32(return_data.size) + 448] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14883) + ceil32(return_data.size) + 549 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14883) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 100 * mem[ceil32(return_data.size) + 448] / slippage, Array(len=2, data=mem[(32 * _14883) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14883) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14883) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14883) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _14883) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14883) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14883) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _14883) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14883) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14883) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34726 = mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14883) + ceil32(return_data.size) + mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _14883) + ceil32(return_data.size) + mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14883) + ceil32(return_data.size) + mem[(32 * _14883) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34796 = mem[(32 * _14883) + ceil32(return_data.size) + _34726 + 640]
                                        mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14883) + ceil32(return_data.size) + _34726 + 640])] = mem[(32 * _14883) + ceil32(return_data.size) + _34726 + 672 len floor32(mem[(32 * _14883) + ceil32(return_data.size) + _34726 + 640])]
                                        require 0 < mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34796) + (32 * _14883) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14883) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 0, eth.balance(this.address)
            else:
                call sub_4e148a4cAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[224] = block.difficulty
                    mem[256] = block.timestamp
                    mem[288] = stor5
                    mem[192] = 96
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if not eth.balance(this.address):
                            if not pairPoolAddress:
                                if slippage <= 0:
                                    revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[580 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[580 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[480] = this.address
                                    mem[512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[516] = eth.balance(this.address)
                                    mem[548] = 64
                                    mem[580] = 2
                                    mem[612 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args eth.balance(this.address), 64, 0, 2, mem[612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 512
                                    require return_data.size >= 32
                                    _21968 = mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                    require mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 512]
                                    _21993 = mem[_21968 + 512]
                                    mem[ceil32(return_data.size) + 544 len floor32(mem[_21968 + 512])] = mem[_21968 + 544 len floor32(mem[_21968 + 512])]
                                    require 0 < mem[ceil32(return_data.size) + 512]
                                    if not mem[ceil32(return_data.size) + 544]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[ceil32(return_data.size) + 544] / mem[ceil32(return_data.size) + 544] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _21993) + ceil32(return_data.size) + 645 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[ceil32(return_data.size) + 544] / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 100 * mem[ceil32(return_data.size) + 544] / slippage, 100 * mem[ceil32(return_data.size) + 544] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                mem[320] = 2
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[352] = ext_call.return_data[12 len 20]
                                mem[384] = this.address
                                mem[416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[420] = 0
                                mem[452] = 64
                                mem[484] = 2
                                mem[516 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 0, 64, 2, mem[516 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 416
                                require return_data.size >= 32
                                _14868 = mem[416 len 4], 0
                                require mem[416 len 4], 0 <= 4294967296
                                require mem[416 len 4], 0 + 32 <= return_data.size
                                require mem[mem[416 len 4], 0 + 416] <= 4294967296 and mem[416 len 4], 0 + (32 * mem[mem[416 len 4], 0 + 416]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 416] = mem[mem[416 len 4], 0 + 416]
                                _14885 = mem[_14868 + 416]
                                mem[ceil32(return_data.size) + 448 len floor32(mem[_14868 + 416])] = mem[_14868 + 448 len floor32(mem[_14868 + 416])]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                if not mem[ceil32(return_data.size) + 448]:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14885) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _14885) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14885) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14885) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14885) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _14885) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14885) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14885) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _14885) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14885) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14885) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34736 = mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14885) + ceil32(return_data.size) + mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _14885) + ceil32(return_data.size) + mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14885) + ceil32(return_data.size) + mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34801 = mem[(32 * _14885) + ceil32(return_data.size) + _34736 + 640]
                                        mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14885) + ceil32(return_data.size) + _34736 + 640])] = mem[(32 * _14885) + ceil32(return_data.size) + _34736 + 672 len floor32(mem[(32 * _14885) + ceil32(return_data.size) + _34736 + 640])]
                                        require 0 < mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34801) + (32 * _14885) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    if 100 * mem[ceil32(return_data.size) + 448] / mem[ceil32(return_data.size) + 448] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14885) + ceil32(return_data.size) + 549 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14885) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 100 * mem[ceil32(return_data.size) + 448] / slippage, Array(len=2, data=mem[(32 * _14885) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14885) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14885) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14885) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _14885) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14885) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14885) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _14885) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14885) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14885) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34734 = mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14885) + ceil32(return_data.size) + mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _14885) + ceil32(return_data.size) + mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14885) + ceil32(return_data.size) + mem[(32 * _14885) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34800 = mem[(32 * _14885) + ceil32(return_data.size) + _34734 + 640]
                                        mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14885) + ceil32(return_data.size) + _34734 + 640])] = mem[(32 * _14885) + ceil32(return_data.size) + _34734 + 672 len floor32(mem[(32 * _14885) + ceil32(return_data.size) + _34734 + 640])]
                                        require 0 < mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34800) + (32 * _14885) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14885) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 0, eth.balance(this.address)
                        else:
                            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                revert with 0, 32, 33, 0, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                            if not pairPoolAddress:
                                if slippage <= 0:
                                    revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[580 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[580 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[480] = this.address
                                    mem[512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[516] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                    mem[548] = 64
                                    mem[580] = 2
                                    mem[612 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[612 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 512
                                    require return_data.size >= 32
                                    _21966 = mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                    require mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                    require mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512] <= 4294967296 and mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 512] = mem[mem[512 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 512]
                                    _21992 = mem[_21966 + 512]
                                    mem[ceil32(return_data.size) + 544 len floor32(mem[_21966 + 512])] = mem[_21966 + 544 len floor32(mem[_21966 + 512])]
                                    require 0 < mem[ceil32(return_data.size) + 512]
                                    if not mem[ceil32(return_data.size) + 544]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[ceil32(return_data.size) + 544] / mem[ceil32(return_data.size) + 544] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _21992) + ceil32(return_data.size) + 645 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[ceil32(return_data.size) + 544] / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 100 * mem[ceil32(return_data.size) + 544] / slippage, 100 * mem[ceil32(return_data.size) + 544] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                mem[320] = 2
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[352] = ext_call.return_data[12 len 20]
                                mem[384] = this.address
                                mem[416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[420] = 80 * eth.balance(this.address) / 100
                                mem[452] = 64
                                mem[484] = 2
                                mem[516 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[516 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 416
                                require return_data.size >= 32
                                _14866 = mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                require mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                require mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                require mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416] <= 4294967296 and mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 416] = mem[mem[416 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 416]
                                _14884 = mem[_14866 + 416]
                                mem[ceil32(return_data.size) + 448 len floor32(mem[_14866 + 416])] = mem[_14866 + 448 len floor32(mem[_14866 + 416])]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                if not mem[ceil32(return_data.size) + 448]:
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14884) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _14884) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14884) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14884) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14884) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _14884) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14884) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14884) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _14884) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14884) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14884) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34732 = mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14884) + ceil32(return_data.size) + mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _14884) + ceil32(return_data.size) + mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14884) + ceil32(return_data.size) + mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34799 = mem[(32 * _14884) + ceil32(return_data.size) + _34732 + 640]
                                        mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14884) + ceil32(return_data.size) + _34732 + 640])] = mem[(32 * _14884) + ceil32(return_data.size) + _34732 + 672 len floor32(mem[(32 * _14884) + ceil32(return_data.size) + _34732 + 640])]
                                        require 0 < mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34799) + (32 * _14884) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    if 100 * mem[ceil32(return_data.size) + 448] / mem[ceil32(return_data.size) + 448] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _14884) + ceil32(return_data.size) + 549 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _14884) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 100 * mem[ceil32(return_data.size) + 448] / slippage, Array(len=2, data=mem[(32 * _14884) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _14884) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _14884) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _14884) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _14884) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _14884) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _14884) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _14884) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _14884) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _14884) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34730 = mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _14884) + ceil32(return_data.size) + mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _14884) + ceil32(return_data.size) + mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _14884) + ceil32(return_data.size) + mem[(32 * _14884) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34798 = mem[(32 * _14884) + ceil32(return_data.size) + _34730 + 640]
                                        mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _14884) + ceil32(return_data.size) + _34730 + 640])] = mem[(32 * _14884) + ceil32(return_data.size) + _34730 + 672 len floor32(mem[(32 * _14884) + ceil32(return_data.size) + _34730 + 640])]
                                        require 0 < mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34798) + (32 * _14884) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _14884) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
        else:
            mem[96] = 2
            mem[128] = this.address
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[160] = ext_call.return_data[12 len 20]
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 0
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, 2, mem[292 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _7440 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= 4294967296
            require mem[192 len 4], 0 + 32 <= return_data.size
            require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            _7447 = mem[_7440 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_7440 + 192])] = mem[_7440 + 224 len floor32(mem[_7440 + 192])]
            require 0 < mem[ceil32(return_data.size) + 192]
            _14845 = mem[ceil32(return_data.size) + 224]
            if not mem[ceil32(return_data.size) + 224]:
                if slippage <= 0:
                    revert with 0, ':divErr'
                require slippage
                mem[(32 * _7447) + ceil32(return_data.size) + 224] = 2
                mem[(32 * _7447) + ceil32(return_data.size) + 256] = this.address
                require ext_code.size(uniswapRouterAddress)
                staticcall uniswapRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _7447) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                mem[(32 * _7447) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _7447) + ceil32(return_data.size) + 452] = block.timestamp
                mem[(32 * _7447) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _7447) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(uniswapRouterAddress)
                call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0 / slippage, 160, address(this.address), block.timestamp, 2, mem[(32 * _7447) + ceil32(return_data.size) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / slippage:
                    call sub_4e148a4cAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp > stor5 + sub_ef016fc9:
                        mem[(32 * _7447) + ceil32(return_data.size) + 352] = block.difficulty
                        mem[(32 * _7447) + ceil32(return_data.size) + 384] = block.timestamp
                        mem[(32 * _7447) + ceil32(return_data.size) + 416] = stor5
                        mem[(32 * _7447) + ceil32(return_data.size) + 320] = 96
                        if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                            stor5 = block.timestamp
                            if eth.balance(this.address):
                                if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                    revert with 0, 
                                                32,
                                                33,
                                                0,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _7447) + ceil32(return_data.size) + 549 len 31]
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7447) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7447) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _7447) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7447) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7447) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _7447) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34718 = mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34792 = mem[(32 * _7447) + ceil32(return_data.size) + _34718 + 640]
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34718 + 640])] = mem[(32 * _7447) + ceil32(return_data.size) + _34718 + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34718 + 640])]
                                        require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34792) + (32 * _7447) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7447) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                                    mem[(32 * _7447) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7447) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7447) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 644 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28798 = mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                                    _28832 = mem[(32 * _7447) + ceil32(return_data.size) + _28798 + 544]
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28798 + 544])] = mem[(32 * _7447) + ceil32(return_data.size) + _28798 + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28798 + 544])]
                                    require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42988 = mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43055 = mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42988 + 768]
                                            mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42988 + 768])] = mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42988 + 800 len floor32(mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42988 + 768])]
                                            require 0 < mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43055) + (32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42986 = mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43054 = mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42986 + 768]
                                            mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42986 + 768])] = mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42986 + 800 len floor32(mem[(32 * _28832) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42986 + 768])]
                                            require 0 < mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43054) + (32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28832) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                            else:
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7447) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7447) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _7447) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7447) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7447) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _7447) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34720 = mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34793 = mem[(32 * _7447) + ceil32(return_data.size) + _34720 + 640]
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34720 + 640])] = mem[(32 * _7447) + ceil32(return_data.size) + _34720 + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34720 + 640])]
                                        require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34793) + (32 * _7447) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    mem[(32 * _7447) + ceil32(return_data.size) + 448] = 2
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7447) + ceil32(return_data.size) + 548] = 0
                                    mem[(32 * _7447) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7447) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7447) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[(32 * _7447) + ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28800 = mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                                    require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                                    _28833 = mem[(32 * _7447) + ceil32(return_data.size) + _28800 + 544]
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28800 + 544])] = mem[(32 * _7447) + ceil32(return_data.size) + _28800 + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28800 + 544])]
                                    require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42992 = mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43057 = mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42992 + 768]
                                            mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42992 + 768])] = mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42992 + 800 len floor32(mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42992 + 768])]
                                            require 0 < mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43057) + (32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42990 = mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43056 = mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42990 + 768]
                                            mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42990 + 768])] = mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42990 + 800 len floor32(mem[(32 * _28833) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42990 + 768])]
                                            require 0 < mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43056) + (32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28833) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 0, eth.balance(this.address)
                else:
                    if sub_617ff386 * 0 / slippage / 0 / slippage != sub_617ff386:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(152, 0, this.address) << 96
                    call sub_4e148a4cAddress with:
                       value sub_617ff386 * 0 / slippage / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp > stor5 + sub_ef016fc9:
                        mem[(32 * _7447) + ceil32(return_data.size) + 352] = block.difficulty
                        mem[(32 * _7447) + ceil32(return_data.size) + 384] = block.timestamp
                        mem[(32 * _7447) + ceil32(return_data.size) + 416] = stor5
                        mem[(32 * _7447) + ceil32(return_data.size) + 320] = 96
                        if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                            stor5 = block.timestamp
                            if eth.balance(this.address):
                                if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                    revert with 0, 
                                                32,
                                                33,
                                                0,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _7447) + ceil32(return_data.size) + 549 len 31]
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7447) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7447) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _7447) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7447) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7447) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _7447) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34714 = mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34790 = mem[(32 * _7447) + ceil32(return_data.size) + _34714 + 640]
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34714 + 640])] = mem[(32 * _7447) + ceil32(return_data.size) + _34714 + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34714 + 640])]
                                        require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34790) + (32 * _7447) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7447) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                                    mem[(32 * _7447) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7447) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7447) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 644 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28794 = mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                                    _28830 = mem[(32 * _7447) + ceil32(return_data.size) + _28794 + 544]
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28794 + 544])] = mem[(32 * _7447) + ceil32(return_data.size) + _28794 + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28794 + 544])]
                                    require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42980 = mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43051 = mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42980 + 768]
                                            mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42980 + 768])] = mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42980 + 800 len floor32(mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42980 + 768])]
                                            require 0 < mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43051) + (32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42978 = mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43050 = mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42978 + 768]
                                            mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42978 + 768])] = mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42978 + 800 len floor32(mem[(32 * _28830) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42978 + 768])]
                                            require 0 < mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43050) + (32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28830) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                            else:
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7447) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7447) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _7447) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7447) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7447) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _7447) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34716 = mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34791 = mem[(32 * _7447) + ceil32(return_data.size) + _34716 + 640]
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34716 + 640])] = mem[(32 * _7447) + ceil32(return_data.size) + _34716 + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34716 + 640])]
                                        require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34791) + (32 * _7447) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    mem[(32 * _7447) + ceil32(return_data.size) + 448] = 2
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7447) + ceil32(return_data.size) + 548] = 0
                                    mem[(32 * _7447) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7447) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7447) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[(32 * _7447) + ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28796 = mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                                    require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                                    _28831 = mem[(32 * _7447) + ceil32(return_data.size) + _28796 + 544]
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28796 + 544])] = mem[(32 * _7447) + ceil32(return_data.size) + _28796 + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28796 + 544])]
                                    require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42984 = mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43053 = mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42984 + 768]
                                            mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42984 + 768])] = mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42984 + 800 len floor32(mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42984 + 768])]
                                            require 0 < mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43053) + (32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42982 = mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43052 = mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42982 + 768]
                                            mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42982 + 768])] = mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42982 + 800 len floor32(mem[(32 * _28831) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42982 + 768])]
                                            require 0 < mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43052) + (32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28831) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 0, eth.balance(this.address)
            else:
                if 100 * mem[ceil32(return_data.size) + 224] / mem[ceil32(return_data.size) + 224] != 100:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _7447) + ceil32(return_data.size) + 325 len 31]
                if slippage <= 0:
                    revert with 0, ':divErr'
                require slippage
                mem[(32 * _7447) + ceil32(return_data.size) + 224] = 2
                mem[(32 * _7447) + ceil32(return_data.size) + 256] = this.address
                require ext_code.size(uniswapRouterAddress)
                staticcall uniswapRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _7447) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                mem[(32 * _7447) + ceil32(return_data.size) + 420] = this.address
                mem[(32 * _7447) + ceil32(return_data.size) + 452] = block.timestamp
                mem[(32 * _7447) + ceil32(return_data.size) + 484] = 2
                mem[(32 * _7447) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(uniswapRouterAddress)
                call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 100 * _14845 / slippage, 160, address(this.address), block.timestamp, 2, mem[(32 * _7447) + ceil32(return_data.size) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 100 * _14845 / slippage:
                    call sub_4e148a4cAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp > stor5 + sub_ef016fc9:
                        mem[(32 * _7447) + ceil32(return_data.size) + 352] = block.difficulty
                        mem[(32 * _7447) + ceil32(return_data.size) + 384] = block.timestamp
                        mem[(32 * _7447) + ceil32(return_data.size) + 416] = stor5
                        mem[(32 * _7447) + ceil32(return_data.size) + 320] = 96
                        if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                            stor5 = block.timestamp
                            if eth.balance(this.address):
                                if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                    revert with 0, 
                                                32,
                                                33,
                                                0,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _7447) + ceil32(return_data.size) + 549 len 31]
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7447) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7447) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _7447) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7447) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7447) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _7447) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34710 = mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34788 = mem[(32 * _7447) + ceil32(return_data.size) + _34710 + 640]
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34710 + 640])] = mem[(32 * _7447) + ceil32(return_data.size) + _34710 + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34710 + 640])]
                                        require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34788) + (32 * _7447) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7447) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                                    mem[(32 * _7447) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7447) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7447) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 644 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28790 = mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                                    _28828 = mem[(32 * _7447) + ceil32(return_data.size) + _28790 + 544]
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28790 + 544])] = mem[(32 * _7447) + ceil32(return_data.size) + _28790 + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28790 + 544])]
                                    require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42972 = mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43047 = mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42972 + 768]
                                            mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42972 + 768])] = mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42972 + 800 len floor32(mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42972 + 768])]
                                            require 0 < mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43047) + (32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42970 = mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43046 = mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42970 + 768]
                                            mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42970 + 768])] = mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42970 + 800 len floor32(mem[(32 * _28828) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42970 + 768])]
                                            require 0 < mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43046) + (32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28828) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                            else:
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7447) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7447) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _7447) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7447) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7447) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _7447) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34712 = mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34789 = mem[(32 * _7447) + ceil32(return_data.size) + _34712 + 640]
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34712 + 640])] = mem[(32 * _7447) + ceil32(return_data.size) + _34712 + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34712 + 640])]
                                        require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34789) + (32 * _7447) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    mem[(32 * _7447) + ceil32(return_data.size) + 448] = 2
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7447) + ceil32(return_data.size) + 548] = 0
                                    mem[(32 * _7447) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7447) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7447) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[(32 * _7447) + ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28792 = mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                                    require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                                    _28829 = mem[(32 * _7447) + ceil32(return_data.size) + _28792 + 544]
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28792 + 544])] = mem[(32 * _7447) + ceil32(return_data.size) + _28792 + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28792 + 544])]
                                    require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42976 = mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43049 = mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42976 + 768]
                                            mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42976 + 768])] = mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42976 + 800 len floor32(mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42976 + 768])]
                                            require 0 < mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43049) + (32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42974 = mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43048 = mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42974 + 768]
                                            mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42974 + 768])] = mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42974 + 800 len floor32(mem[(32 * _28829) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42974 + 768])]
                                            require 0 < mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43048) + (32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28829) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 0, eth.balance(this.address)
                else:
                    if sub_617ff386 * 100 * _14845 / slippage / 100 * _14845 / slippage != sub_617ff386:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(152, 0, this.address) << 96
                    call sub_4e148a4cAddress with:
                       value sub_617ff386 * 100 * _14845 / slippage / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if block.timestamp > stor5 + sub_ef016fc9:
                        mem[(32 * _7447) + ceil32(return_data.size) + 352] = block.difficulty
                        mem[(32 * _7447) + ceil32(return_data.size) + 384] = block.timestamp
                        mem[(32 * _7447) + ceil32(return_data.size) + 416] = stor5
                        mem[(32 * _7447) + ceil32(return_data.size) + 320] = 96
                        if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                            stor5 = block.timestamp
                            if not eth.balance(this.address):
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7447) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7447) + ceil32(return_data.size) + 644] = eth.balance(this.address)
                                        mem[(32 * _7447) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7447) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7447) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address), 64, 0, 2, mem[(32 * _7447) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34708 = mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 640]
                                        _34787 = mem[(32 * _7447) + ceil32(return_data.size) + _34708 + 640]
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34708 + 640])] = mem[(32 * _7447) + ceil32(return_data.size) + _34708 + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34708 + 640])]
                                        require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34787) + (32 * _7447) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address), this.address, block.timestamp
                                else:
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7447) + ceil32(return_data.size) + 548] = 0
                                    mem[(32 * _7447) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7447) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7447) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 0, 64, 2, mem[(32 * _7447) + ceil32(return_data.size) + 644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28788 = mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                                    require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                                    _28827 = mem[(32 * _7447) + ceil32(return_data.size) + _28788 + 544]
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28788 + 544])] = mem[(32 * _7447) + ceil32(return_data.size) + _28788 + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28788 + 544])]
                                    require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42968 = mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43045 = mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42968 + 768]
                                            mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42968 + 768])] = mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42968 + 800 len floor32(mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42968 + 768])]
                                            require 0 < mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43045) + (32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 0 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address), 64, 0, 2, mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42966 = mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                            require mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                            require mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                            _43044 = mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42966 + 768]
                                            mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42966 + 768])] = mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42966 + 800 len floor32(mem[(32 * _28827) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42966 + 768])]
                                            require 0 < mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43044) + (32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28827) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 0, eth.balance(this.address)
                            else:
                                if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                    revert with 0, 
                                                32,
                                                33,
                                                0,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _7447) + ceil32(return_data.size) + 549 len 31]
                                if not pairPoolAddress:
                                    if slippage <= 0:
                                        revert with 0, '', 0x3a64697645727200000000000000000000000000000000000000000000000000
                                    require slippage
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 708 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value 80 * eth.balance(this.address) / 100 wei
                                         gas gas_remaining wei
                                        args 0 / slippage, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 708 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                    if not pairPoolAddress:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(this.address)
                                        call this.address.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                             gas gas_remaining wei
                                            args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                    else:
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _7447) + ceil32(return_data.size) + 608] = this.address
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _7447) + ceil32(return_data.size) + 644] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                        mem[(32 * _7447) + ceil32(return_data.size) + 676] = 64
                                        mem[(32 * _7447) + ceil32(return_data.size) + 708] = 2
                                        mem[(32 * _7447) + ceil32(return_data.size) + 740 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _7447) + ceil32(return_data.size) + 740 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _7447) + ceil32(return_data.size) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 640
                                        require return_data.size >= 32
                                        _34706 = mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                        require mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]) + 32 <= return_data.size
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 640 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 640]
                                        _34786 = mem[(32 * _7447) + ceil32(return_data.size) + _34706 + 640]
                                        mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34706 + 640])] = mem[(32 * _7447) + ceil32(return_data.size) + _34706 + 672 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _34706 + 640])]
                                        require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 640]
                                        if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672]:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                        else:
                                            if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] != 100:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * _34786) + (32 * _7447) + (2 * ceil32(return_data.size)) + 773 len 31]
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 672] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                else:
                                    mem[(32 * _7447) + ceil32(return_data.size) + 448] = 2
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(32 * _7447) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 512] = this.address
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7447) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                                    mem[(32 * _7447) + ceil32(return_data.size) + 580] = 64
                                    mem[(32 * _7447) + ceil32(return_data.size) + 612] = 2
                                    mem[(32 * _7447) + ceil32(return_data.size) + 644 len 0] = None
                                    require ext_code.size(uniswapRouterAddress)
                                    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _7447) + ceil32(return_data.size) + 644 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _7447) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _7447) + (2 * ceil32(return_data.size)) + 544
                                    require return_data.size >= 32
                                    _28786 = mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                                    require mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _7447) + ceil32(return_data.size) + mem[(32 * _7447) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                                    _28826 = mem[(32 * _7447) + ceil32(return_data.size) + _28786 + 544]
                                    mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28786 + 544])] = mem[(32 * _7447) + ceil32(return_data.size) + _28786 + 576 len floor32(mem[(32 * _7447) + ceil32(return_data.size) + _28786 + 544])]
                                    require 0 < mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 544]
                                    if not mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576]:
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 0 / slippage, Array(len=2, data=mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42964 = mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43043 = mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42964 + 768]
                                            mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42964 + 768])] = mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42964 + 800 len floor32(mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42964 + 768])]
                                            require 0 < mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43043) + (32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                    else:
                                        if 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] != 100:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 677 len 31]
                                        if slippage <= 0:
                                            revert with 0, ':divErr'
                                        require slippage
                                        require ext_code.size(uniswapRouterAddress)
                                        staticcall uniswapRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                        require ext_code.size(uniswapRouterAddress)
                                        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value 80 * eth.balance(this.address) / 100 wei
                                             gas gas_remaining wei
                                            args 100 * mem[(32 * _7447) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                        if not pairPoolAddress:
                                            if slippage <= 0:
                                                revert with 0, ':divErr'
                                            require slippage
                                            require ext_code.size(this.address)
                                            call this.address.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(uniswapRouterAddress)
                                            call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                 gas gas_remaining wei
                                                args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, 0, block.timestamp
                                        else:
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 736] = this.address
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 804] = 64
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 836] = 2
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                            require ext_code.size(uniswapRouterAddress)
                                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 868 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768
                                            require return_data.size >= 32
                                            _42962 = mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                            require mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                            require mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                            require mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                            mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                            _43042 = mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42962 + 768]
                                            mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42962 + 768])] = mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42962 + 800 len floor32(mem[(32 * _28826) + (32 * _7447) + (2 * ceil32(return_data.size)) + _42962 + 768])]
                                            require 0 < mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 768]
                                            if not mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800]:
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0 / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 0 / slippage, 0 / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                            else:
                                                if 100 * mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] != 100:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * _43042) + (32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 901 len 31]
                                                if slippage <= 0:
                                                    revert with 0, ':divErr'
                                                require slippage
                                                require ext_code.size(this.address)
                                                call this.address.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(uniswapRouterAddress)
                                                call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                                     gas gas_remaining wei
                                                    args this.address, 100 * mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _28826) + (32 * _7447) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
