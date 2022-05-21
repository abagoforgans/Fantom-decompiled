contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'sbotunsafe1'

const decimals = 18

const symbol = 'sbotunsafe1'

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
    _26 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _29 = mem[_26 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_26 + 192])] = mem[_26 + 224 len floor32(mem[_26 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _29) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 224]
    return memory
      from (32 * _29) + ceil32(return_data.size) + 224
       len 32
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
    require 0 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _29) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 224]
    return memory
      from (32 * _29) + ceil32(return_data.size) + 224
       len 32
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 2
    require arg2 <= balanceOf[msg.sender]
    if not arg2:
        require 0 <= arg2
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
        _2960 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _2965 = mem[_2960 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2960 + 192])] = mem[_2960 + 224 len floor32(mem[_2960 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _5885 = mem[ceil32(return_data.size) + 224]
        if not mem[ceil32(return_data.size) + 224]:
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            mem[(32 * _2965) + ceil32(return_data.size) + 224] = 2
            mem[(32 * _2965) + ceil32(return_data.size) + 256] = this.address
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _2965) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
            mem[(32 * _2965) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _2965) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _2965) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _2965) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0 / slippage, 160, address(this.address), block.timestamp, 2, mem[(32 * _2965) + ceil32(return_data.size) + 516 len 64]
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
                    mem[(32 * _2965) + ceil32(return_data.size) + 352] = block.difficulty
                    mem[(32 * _2965) + ceil32(return_data.size) + 384] = block.timestamp
                    mem[(32 * _2965) + ceil32(return_data.size) + 416] = stor5
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if not eth.balance(this.address):
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2965) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2965) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2965) + ceil32(return_data.size) + 548] = 0
                            mem[(32 * _2965) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2965) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2965) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, 2, mem[(32 * _2965) + ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2965) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2965) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11724 = mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                            require mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                            _11759 = mem[(32 * _2965) + ceil32(return_data.size) + _11724 + 544]
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11724 + 544])] = mem[(32 * _2965) + ceil32(return_data.size) + _11724 + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11724 + 544])]
                            require 0 < mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18600 = mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18669 = mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18600 + 768]
                                mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18600 + 768])] = mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18600 + 800 len floor32(mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18600 + 768])]
                                require 0 < mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18669) + (32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18598 = mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18668 = mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18598 + 768]
                                mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18598 + 768])] = mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18598 + 800 len floor32(mem[(32 * _11759) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18598 + 768])]
                                require 0 < mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18668) + (32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11759) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
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
                                            mem[(32 * _2965) + ceil32(return_data.size) + 549 len 31]
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2965) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2965) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2965) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                            mem[(32 * _2965) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2965) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2965) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _2965) + ceil32(return_data.size) + 644 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2965) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2965) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11722 = mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                            require mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                            _11758 = mem[(32 * _2965) + ceil32(return_data.size) + _11722 + 544]
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11722 + 544])] = mem[(32 * _2965) + ceil32(return_data.size) + _11722 + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11722 + 544])]
                            require 0 < mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18596 = mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18667 = mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18596 + 768]
                                mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18596 + 768])] = mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18596 + 800 len floor32(mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18596 + 768])]
                                require 0 < mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18667) + (32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18594 = mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18666 = mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18594 + 768]
                                mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18594 + 768])] = mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18594 + 800 len floor32(mem[(32 * _11758) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18594 + 768])]
                                require 0 < mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18666) + (32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11758) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
            else:
                call sub_4e148a4cAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[(32 * _2965) + ceil32(return_data.size) + 352] = block.difficulty
                    mem[(32 * _2965) + ceil32(return_data.size) + 384] = block.timestamp
                    mem[(32 * _2965) + ceil32(return_data.size) + 416] = stor5
                    mem[(32 * _2965) + ceil32(return_data.size) + 320] = 96
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if eth.balance(this.address):
                            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                revert with 0, 
                                            32,
                                            33,
                                            0,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _2965) + ceil32(return_data.size) + 549 len 31]
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2965) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2965) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2965) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                            mem[(32 * _2965) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2965) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2965) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _2965) + ceil32(return_data.size) + 644 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2965) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2965) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11726 = mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                            require mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                            _11760 = mem[(32 * _2965) + ceil32(return_data.size) + _11726 + 544]
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11726 + 544])] = mem[(32 * _2965) + ceil32(return_data.size) + _11726 + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11726 + 544])]
                            require 0 < mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18604 = mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18671 = mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18604 + 768]
                                mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18604 + 768])] = mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18604 + 800 len floor32(mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18604 + 768])]
                                require 0 < mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18671) + (32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18602 = mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18670 = mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18602 + 768]
                                mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18602 + 768])] = mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18602 + 800 len floor32(mem[(32 * _11760) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18602 + 768])]
                                require 0 < mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18670) + (32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11760) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                        else:
                            mem[(32 * _2965) + ceil32(return_data.size) + 448] = 2
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2965) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                            mem[(32 * _2965) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2965) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2965) + ceil32(return_data.size) + 548] = 0
                            mem[(32 * _2965) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2965) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2965) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, 2, mem[(32 * _2965) + ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2965) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2965) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11728 = mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                            require mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                            _11761 = mem[(32 * _2965) + ceil32(return_data.size) + _11728 + 544]
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11728 + 544])] = mem[(32 * _2965) + ceil32(return_data.size) + _11728 + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11728 + 544])]
                            require 0 < mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18608 = mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18673 = mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18608 + 768]
                                mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18608 + 768])] = mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18608 + 800 len floor32(mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18608 + 768])]
                                require 0 < mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18673) + (32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18606 = mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18672 = mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18606 + 768]
                                mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18606 + 768])] = mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18606 + 800 len floor32(mem[(32 * _11761) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18606 + 768])]
                                require 0 < mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18672) + (32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11761) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
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
                            mem[(32 * _2965) + ceil32(return_data.size) + 325 len 31]
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            mem[(32 * _2965) + ceil32(return_data.size) + 224] = 2
            mem[(32 * _2965) + ceil32(return_data.size) + 256] = this.address
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _2965) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
            mem[(32 * _2965) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _2965) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _2965) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _2965) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 100 * _5885 / slippage, 160, address(this.address), block.timestamp, 2, mem[(32 * _2965) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 100 * _5885 / slippage:
                if sub_617ff386 * 100 * _5885 / slippage / 100 * _5885 / slippage != sub_617ff386:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(152, 0, this.address) << 96
                call sub_4e148a4cAddress with:
                   value sub_617ff386 * 100 * _5885 / slippage / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[(32 * _2965) + ceil32(return_data.size) + 352] = block.difficulty
                    mem[(32 * _2965) + ceil32(return_data.size) + 384] = block.timestamp
                    mem[(32 * _2965) + ceil32(return_data.size) + 416] = stor5
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if not eth.balance(this.address):
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2965) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2965) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2965) + ceil32(return_data.size) + 548] = 0
                            mem[(32 * _2965) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2965) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2965) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, 2, mem[(32 * _2965) + ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2965) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2965) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11716 = mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                            require mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                            _11755 = mem[(32 * _2965) + ceil32(return_data.size) + _11716 + 544]
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11716 + 544])] = mem[(32 * _2965) + ceil32(return_data.size) + _11716 + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11716 + 544])]
                            require 0 < mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18584 = mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18661 = mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18584 + 768]
                                mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18584 + 768])] = mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18584 + 800 len floor32(mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18584 + 768])]
                                require 0 < mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18661) + (32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18582 = mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18660 = mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18582 + 768]
                                mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18582 + 768])] = mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18582 + 800 len floor32(mem[(32 * _11755) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18582 + 768])]
                                require 0 < mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18660) + (32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11755) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
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
                                            mem[(32 * _2965) + ceil32(return_data.size) + 549 len 31]
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2965) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2965) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2965) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                            mem[(32 * _2965) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2965) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2965) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _2965) + ceil32(return_data.size) + 644 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2965) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2965) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11714 = mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                            require mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                            _11754 = mem[(32 * _2965) + ceil32(return_data.size) + _11714 + 544]
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11714 + 544])] = mem[(32 * _2965) + ceil32(return_data.size) + _11714 + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11714 + 544])]
                            require 0 < mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18580 = mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18659 = mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18580 + 768]
                                mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18580 + 768])] = mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18580 + 800 len floor32(mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18580 + 768])]
                                require 0 < mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18659) + (32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18578 = mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18658 = mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18578 + 768]
                                mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18578 + 768])] = mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18578 + 800 len floor32(mem[(32 * _11754) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18578 + 768])]
                                require 0 < mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18658) + (32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11754) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
            else:
                call sub_4e148a4cAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[(32 * _2965) + ceil32(return_data.size) + 352] = block.difficulty
                    mem[(32 * _2965) + ceil32(return_data.size) + 384] = block.timestamp
                    mem[(32 * _2965) + ceil32(return_data.size) + 416] = stor5
                    mem[(32 * _2965) + ceil32(return_data.size) + 320] = 96
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if eth.balance(this.address):
                            if 80 * eth.balance(this.address) / eth.balance(this.address) != 80:
                                revert with 0, 
                                            32,
                                            33,
                                            0,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _2965) + ceil32(return_data.size) + 549 len 31]
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2965) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2965) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2965) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                            mem[(32 * _2965) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2965) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2965) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _2965) + ceil32(return_data.size) + 644 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2965) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2965) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11718 = mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                            require mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                            _11756 = mem[(32 * _2965) + ceil32(return_data.size) + _11718 + 544]
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11718 + 544])] = mem[(32 * _2965) + ceil32(return_data.size) + _11718 + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11718 + 544])]
                            require 0 < mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18588 = mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18663 = mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18588 + 768]
                                mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18588 + 768])] = mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18588 + 800 len floor32(mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18588 + 768])]
                                require 0 < mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18663) + (32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18586 = mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18662 = mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18586 + 768]
                                mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18586 + 768])] = mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18586 + 800 len floor32(mem[(32 * _11756) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18586 + 768])]
                                require 0 < mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18662) + (32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11756) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                        else:
                            mem[(32 * _2965) + ceil32(return_data.size) + 448] = 2
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2965) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                            mem[(32 * _2965) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2965) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2965) + ceil32(return_data.size) + 548] = 0
                            mem[(32 * _2965) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2965) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2965) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, 2, mem[(32 * _2965) + ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2965) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2965) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11720 = mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                            require mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                            require mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2965) + ceil32(return_data.size) + mem[(32 * _2965) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                            _11757 = mem[(32 * _2965) + ceil32(return_data.size) + _11720 + 544]
                            mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11720 + 544])] = mem[(32 * _2965) + ceil32(return_data.size) + _11720 + 576 len floor32(mem[(32 * _2965) + ceil32(return_data.size) + _11720 + 544])]
                            require 0 < mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18592 = mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18665 = mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18592 + 768]
                                mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18592 + 768])] = mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18592 + 800 len floor32(mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18592 + 768])]
                                require 0 < mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18665) + (32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2965) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18590 = mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18664 = mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18590 + 768]
                                mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18590 + 768])] = mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18590 + 800 len floor32(mem[(32 * _11757) + (32 * _2965) + (2 * ceil32(return_data.size)) + _18590 + 768])]
                                require 0 < mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18664) + (32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11757) + (32 * _2965) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 0, eth.balance(this.address)
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if 25 * arg2 / arg2 != 25:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require 25 * arg2 / 100 <= arg2
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
        _2958 = mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32
        require mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192]
        _2964 = mem[_2958 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2958 + 192])] = mem[_2958 + 224 len floor32(mem[_2958 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _5884 = mem[ceil32(return_data.size) + 224]
        if not mem[ceil32(return_data.size) + 224]:
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _2964) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _2964) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _2964) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _2964) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 25 * arg2 / 100, 0 / slippage, Array(len=2, data=mem[(32 * _2964) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / slippage:
                call sub_4e148a4cAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[(32 * _2964) + ceil32(return_data.size) + 352] = block.difficulty
                    mem[(32 * _2964) + ceil32(return_data.size) + 384] = block.timestamp
                    mem[(32 * _2964) + ceil32(return_data.size) + 416] = stor5
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if not eth.balance(this.address):
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2964) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2964) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2964) + ceil32(return_data.size) + 548] = 0
                            mem[(32 * _2964) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2964) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2964) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, 2, mem[(32 * _2964) + ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2964) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2964) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11712 = mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                            require mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                            _11753 = mem[(32 * _2964) + ceil32(return_data.size) + _11712 + 544]
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11712 + 544])] = mem[(32 * _2964) + ceil32(return_data.size) + _11712 + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11712 + 544])]
                            require 0 < mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18576 = mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18657 = mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18576 + 768]
                                mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18576 + 768])] = mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18576 + 800 len floor32(mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18576 + 768])]
                                require 0 < mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18657) + (32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18574 = mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18656 = mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18574 + 768]
                                mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18574 + 768])] = mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18574 + 800 len floor32(mem[(32 * _11753) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18574 + 768])]
                                require 0 < mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18656) + (32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11753) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
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
                                            mem[(32 * _2964) + ceil32(return_data.size) + 549 len 31]
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2964) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2964) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2964) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                            mem[(32 * _2964) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2964) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2964) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _2964) + ceil32(return_data.size) + 644 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2964) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2964) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11710 = mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                            require mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                            _11752 = mem[(32 * _2964) + ceil32(return_data.size) + _11710 + 544]
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11710 + 544])] = mem[(32 * _2964) + ceil32(return_data.size) + _11710 + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11710 + 544])]
                            require 0 < mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18572 = mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18655 = mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18572 + 768]
                                mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18572 + 768])] = mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18572 + 800 len floor32(mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18572 + 768])]
                                require 0 < mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18655) + (32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18570 = mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18654 = mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18570 + 768]
                                mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18570 + 768])] = mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18570 + 800 len floor32(mem[(32 * _11752) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18570 + 768])]
                                require 0 < mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18654) + (32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11752) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
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
                    mem[(32 * _2964) + ceil32(return_data.size) + 352] = block.difficulty
                    mem[(32 * _2964) + ceil32(return_data.size) + 384] = block.timestamp
                    mem[(32 * _2964) + ceil32(return_data.size) + 416] = stor5
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if not eth.balance(this.address):
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2964) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2964) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2964) + ceil32(return_data.size) + 548] = 0
                            mem[(32 * _2964) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2964) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2964) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, 2, mem[(32 * _2964) + ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2964) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2964) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11708 = mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                            require mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                            _11751 = mem[(32 * _2964) + ceil32(return_data.size) + _11708 + 544]
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11708 + 544])] = mem[(32 * _2964) + ceil32(return_data.size) + _11708 + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11708 + 544])]
                            require 0 < mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18568 = mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18653 = mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18568 + 768]
                                mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18568 + 768])] = mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18568 + 800 len floor32(mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18568 + 768])]
                                require 0 < mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18653) + (32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18566 = mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18652 = mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18566 + 768]
                                mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18566 + 768])] = mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18566 + 800 len floor32(mem[(32 * _11751) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18566 + 768])]
                                require 0 < mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18652) + (32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11751) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
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
                                            mem[(32 * _2964) + ceil32(return_data.size) + 549 len 31]
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2964) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2964) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2964) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                            mem[(32 * _2964) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2964) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2964) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _2964) + ceil32(return_data.size) + 644 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2964) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2964) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11706 = mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                            require mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                            _11750 = mem[(32 * _2964) + ceil32(return_data.size) + _11706 + 544]
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11706 + 544])] = mem[(32 * _2964) + ceil32(return_data.size) + _11706 + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11706 + 544])]
                            require 0 < mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18564 = mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18651 = mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18564 + 768]
                                mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18564 + 768])] = mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18564 + 800 len floor32(mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18564 + 768])]
                                require 0 < mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18651) + (32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18562 = mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18650 = mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18562 + 768]
                                mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18562 + 768])] = mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18562 + 800 len floor32(mem[(32 * _11750) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18562 + 768])]
                                require 0 < mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18650) + (32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11750) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
        else:
            if 100 * mem[ceil32(return_data.size) + 224] / mem[ceil32(return_data.size) + 224] != 100:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2964) + ceil32(return_data.size) + 325 len 31]
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            mem[(32 * _2964) + ceil32(return_data.size) + 224] = 2
            mem[(32 * _2964) + ceil32(return_data.size) + 256] = this.address
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _2964) + ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
            mem[(32 * _2964) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _2964) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _2964) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _2964) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 25 * arg2 / 100, 100 * _5884 / slippage, Array(len=2, data=mem[(32 * _2964) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 100 * _5884 / slippage:
                call sub_4e148a4cAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[(32 * _2964) + ceil32(return_data.size) + 352] = block.difficulty
                    mem[(32 * _2964) + ceil32(return_data.size) + 384] = block.timestamp
                    mem[(32 * _2964) + ceil32(return_data.size) + 416] = stor5
                    mem[(32 * _2964) + ceil32(return_data.size) + 320] = 96
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if not eth.balance(this.address):
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2964) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2964) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2964) + ceil32(return_data.size) + 548] = 0
                            mem[(32 * _2964) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2964) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2964) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, 2, mem[(32 * _2964) + ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2964) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2964) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11704 = mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                            require mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                            _11749 = mem[(32 * _2964) + ceil32(return_data.size) + _11704 + 544]
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11704 + 544])] = mem[(32 * _2964) + ceil32(return_data.size) + _11704 + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11704 + 544])]
                            require 0 < mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18560 = mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18649 = mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18560 + 768]
                                mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18560 + 768])] = mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18560 + 800 len floor32(mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18560 + 768])]
                                require 0 < mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18649) + (32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18558 = mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18648 = mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18558 + 768]
                                mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18558 + 768])] = mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18558 + 800 len floor32(mem[(32 * _11749) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18558 + 768])]
                                require 0 < mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18648) + (32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11749) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
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
                                            mem[(32 * _2964) + ceil32(return_data.size) + 549 len 31]
                            mem[(32 * _2964) + ceil32(return_data.size) + 448] = 2
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2964) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                            mem[(32 * _2964) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2964) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2964) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                            mem[(32 * _2964) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2964) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2964) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _2964) + ceil32(return_data.size) + 644 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2964) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2964) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11702 = mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                            require mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                            _11748 = mem[(32 * _2964) + ceil32(return_data.size) + _11702 + 544]
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11702 + 544])] = mem[(32 * _2964) + ceil32(return_data.size) + _11702 + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11702 + 544])]
                            require 0 < mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18556 = mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18647 = mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18556 + 768]
                                mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18556 + 768])] = mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18556 + 800 len floor32(mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18556 + 768])]
                                require 0 < mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18647) + (32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18554 = mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18646 = mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18554 + 768]
                                mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18554 + 768])] = mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18554 + 800 len floor32(mem[(32 * _11748) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18554 + 768])]
                                require 0 < mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18646) + (32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11748) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
            else:
                if sub_617ff386 * 100 * _5884 / slippage / 100 * _5884 / slippage != sub_617ff386:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(152, 0, this.address) << 96
                call sub_4e148a4cAddress with:
                   value sub_617ff386 * 100 * _5884 / slippage / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.timestamp > stor5 + sub_ef016fc9:
                    mem[(32 * _2964) + ceil32(return_data.size) + 352] = block.difficulty
                    mem[(32 * _2964) + ceil32(return_data.size) + 384] = block.timestamp
                    mem[(32 * _2964) + ceil32(return_data.size) + 416] = stor5
                    mem[(32 * _2964) + ceil32(return_data.size) + 320] = 96
                    if block.timestamp % 30 == sha3(block.difficulty, block.timestamp, stor5) % 30:
                        stor5 = block.timestamp
                        if not eth.balance(this.address):
                            mem[(32 * _2964) + ceil32(return_data.size) + 448] = 2
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2964) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                            mem[(32 * _2964) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2964) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2964) + ceil32(return_data.size) + 548] = 0
                            mem[(32 * _2964) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2964) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2964) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 0, 64, 2, mem[(32 * _2964) + ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2964) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2964) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11700 = mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 <= 4294967296
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 32 <= return_data.size
                            require mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544] <= 4294967296 and mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + (32 * mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], 0 + 544]
                            _11747 = mem[(32 * _2964) + ceil32(return_data.size) + _11700 + 544]
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11700 + 544])] = mem[(32 * _2964) + ceil32(return_data.size) + _11700 + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11700 + 544])]
                            require 0 < mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18552 = mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18645 = mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18552 + 768]
                                mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18552 + 768])] = mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18552 + 800 len floor32(mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18552 + 768])]
                                require 0 < mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18645) + (32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address)
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address), 64, 0, 2, mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18550 = mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                                require mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
                                require mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768] <= 4294967296 and mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 768]
                                _18644 = mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18550 + 768]
                                mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18550 + 768])] = mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18550 + 800 len floor32(mem[(32 * _11747) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18550 + 768])]
                                require 0 < mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18644) + (32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11747) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address), this.address, block.timestamp
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
                                            mem[(32 * _2964) + ceil32(return_data.size) + 549 len 31]
                            mem[(32 * _2964) + ceil32(return_data.size) + 448] = 2
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _2964) + ceil32(return_data.size) + 480] = ext_call.return_data[12 len 20]
                            mem[(32 * _2964) + ceil32(return_data.size) + 512] = this.address
                            mem[(32 * _2964) + ceil32(return_data.size) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2964) + ceil32(return_data.size) + 548] = 80 * eth.balance(this.address) / 100
                            mem[(32 * _2964) + ceil32(return_data.size) + 580] = 64
                            mem[(32 * _2964) + ceil32(return_data.size) + 612] = 2
                            mem[(32 * _2964) + ceil32(return_data.size) + 644 len 0] = None
                            require ext_code.size(uniswapRouterAddress)
                            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 80 * eth.balance(this.address) / 100, Array(len=2, data=mem[(32 * _2964) + ceil32(return_data.size) + 644 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2964) + ceil32(return_data.size) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2964) + (2 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _11698 = mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 <= 4294967296
                            require mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 32 <= return_data.size
                            require mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544] <= 4294967296 and mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + (32 * mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]) + 32 <= return_data.size
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * _2964) + ceil32(return_data.size) + mem[(32 * _2964) + ceil32(return_data.size) + 544 len 4], Mask(224, 32, 80 * eth.balance(this.address) / 100) >> 32 + 544]
                            _11746 = mem[(32 * _2964) + ceil32(return_data.size) + _11698 + 544]
                            mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11698 + 544])] = mem[(32 * _2964) + ceil32(return_data.size) + _11698 + 576 len floor32(mem[(32 * _2964) + ceil32(return_data.size) + _11698 + 544])]
                            require 0 < mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 544]
                            if not mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576]:
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 0 / slippage, Array(len=2, data=mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18548 = mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18643 = mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18548 + 768]
                                mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18548 + 768])] = mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18548 + 800 len floor32(mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18548 + 768])]
                                require 0 < mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18643) + (32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            else:
                                if 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] != 100:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 677 len 31]
                                if slippage <= 0:
                                    revert with 0, ':divErr'
                                require slippage
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 80 * eth.balance(this.address) / 100 wei
                                     gas gas_remaining wei
                                    args 100 * mem[(32 * _2964) + (2 * ceil32(return_data.size)) + 576] / slippage, Array(len=2, data=mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 80 * eth.balance(this.address) / 100 <= eth.balance(this.address)
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 736] = this.address
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 772] = eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 804] = 64
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 836] = 2
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 0] = None
                                require ext_code.size(uniswapRouterAddress)
                                staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args eth.balance(this.address) - (80 * eth.balance(this.address) / 100), 64, 0, 2, mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768
                                require return_data.size >= 32
                                _18546 = mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32
                                require mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 <= 4294967296
                                require mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 32 <= return_data.size
                                require mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768] <= 4294967296 and mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + (32 * mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]) + 32 <= return_data.size
                                mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768] = mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + 768 len 4], Mask(224, 32, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)) >> 32 + 768]
                                _18642 = mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18546 + 768]
                                mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800 len floor32(mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18546 + 768])] = mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18546 + 800 len floor32(mem[(32 * _11746) + (32 * _2964) + (2 * ceil32(return_data.size)) + _18546 + 768])]
                                require 0 < mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 768]
                                if not mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800]:
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
                                    if 100 * mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] != 100:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * _18642) + (32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 901 len 31]
                                    if slippage <= 0:
                                        revert with 0, ':divErr'
                                    require slippage
                                    require ext_code.size(this.address)
                                    call this.address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 100 * mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) - (80 * eth.balance(this.address) / 100) wei
                                         gas gas_remaining wei
                                        args this.address, 100 * mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, 100 * mem[(32 * _11746) + (32 * _2964) + (4 * ceil32(return_data.size)) + 800] / slippage, eth.balance(this.address) - (80 * eth.balance(this.address) / 100), this.address, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit 0x1500574e: 80 * eth.balance(this.address) / 100, eth.balance(this.address) - (80 * eth.balance(this.address) / 100)
        require arg2 - (25 * arg2 / 100) <= balanceOf[msg.sender]
        balanceOf[msg.sender] = balanceOf[msg.sender] - arg2 + (25 * arg2 / 100)
        require arg2 - (25 * arg2 / 100) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 - (25 * arg2 / 100) + balanceOf[arg1]
        emit Transfer((arg2 - (25 * arg2 / 100)), msg.sender, arg1);
    return 1
}



}
