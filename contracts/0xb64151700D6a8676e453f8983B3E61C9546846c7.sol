contract main {




// =====================  Runtime code  =====================


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
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _29) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
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
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _29) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _29) + ceil32(return_data.size) + 224
       len 32
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[msg.sender]
    if not arg2:
        require 0 <= arg2
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
        _144 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _149 = mem[_144 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_144 + 192])] = mem[_144 + 224 len floor32(mem[_144 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        if not mem[ceil32(return_data.size) + 256]:
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _149) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0 / slippage, 160, address(this.address), block.timestamp, 2, mem[(32 * _149) + ceil32(return_data.size) + 516 len 64]
        else:
            if 100 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != 100:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _149) + ceil32(return_data.size) + 325 len 31]
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _149) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 100 * mem[ceil32(return_data.size) + 256] / slippage, 160, address(this.address), block.timestamp, 2, mem[(32 * _149) + ceil32(return_data.size) + 516 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        _142 = mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32
        require mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 25 * arg2 / 100) >> 32 + 192]
        _148 = mem[_142 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_142 + 192])] = mem[_142 + 224 len floor32(mem[_142 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        if not mem[ceil32(return_data.size) + 256]:
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _148) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 25 * arg2 / 100, 0 / slippage, Array(len=2, data=mem[(32 * _148) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
        else:
            if 100 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != 100:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _148) + ceil32(return_data.size) + 325 len 31]
            if slippage <= 0:
                revert with 0, ':divErr'
            require slippage
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _148) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 25 * arg2 / 100, 100 * mem[ceil32(return_data.size) + 256] / slippage, Array(len=2, data=mem[(32 * _148) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg2 - (25 * arg2 / 100) <= balanceOf[msg.sender]
        balanceOf[msg.sender] = balanceOf[msg.sender] - arg2 + (25 * arg2 / 100)
        require arg2 - (25 * arg2 / 100) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 - (25 * arg2 / 100) + balanceOf[arg1]
        emit Transfer((arg2 - (25 * arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    if not arg3:
        require 0 <= arg3
        if arg1 != this.address:
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
            _186 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= 4294967296
            require mem[192 len 4], 0 + 32 <= return_data.size
            require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            _191 = mem[_186 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_186 + 192])] = mem[_186 + 224 len floor32(mem[_186 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            if not mem[ceil32(return_data.size) + 256]:
                if slippage <= 0:
                    revert with 0, ':divErr'
                require slippage
                require ext_code.size(uniswapRouterAddress)
                staticcall uniswapRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _191) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(uniswapRouterAddress)
                call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0 / slippage, 160, address(this.address), block.timestamp, 2, mem[(32 * _191) + ceil32(return_data.size) + 516 len 64]
            else:
                if 100 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != 100:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _191) + ceil32(return_data.size) + 325 len 31]
                if slippage <= 0:
                    revert with 0, ':divErr'
                require slippage
                require ext_code.size(uniswapRouterAddress)
                staticcall uniswapRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _191) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(uniswapRouterAddress)
                call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 100 * mem[ceil32(return_data.size) + 256] / slippage, 160, address(this.address), block.timestamp, 2, mem[(32 * _191) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] -= arg3
        require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if 25 * arg3 / arg3 != 25:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require 25 * arg3 / 100 <= arg3
        if arg1 != this.address:
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[160] = ext_call.return_data[12 len 20]
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 25 * arg3 / 100
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(uniswapRouterAddress)
            staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 25 * arg3 / 100, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _184 = mem[192 len 4], Mask(224, 32, 25 * arg3 / 100) >> 32
            require mem[192 len 4], Mask(224, 32, 25 * arg3 / 100) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, 25 * arg3 / 100) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, 25 * arg3 / 100) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 25 * arg3 / 100) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 25 * arg3 / 100) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 25 * arg3 / 100) >> 32 + 192]
            _190 = mem[_184 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_184 + 192])] = mem[_184 + 224 len floor32(mem[_184 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            if not mem[ceil32(return_data.size) + 256]:
                if slippage <= 0:
                    revert with 0, ':divErr'
                require slippage
                require ext_code.size(uniswapRouterAddress)
                staticcall uniswapRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _190) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(uniswapRouterAddress)
                call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 25 * arg3 / 100, 0 / slippage, Array(len=2, data=mem[(32 * _190) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
            else:
                if 100 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != 100:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _190) + ceil32(return_data.size) + 325 len 31]
                if slippage <= 0:
                    revert with 0, ':divErr'
                require slippage
                require ext_code.size(uniswapRouterAddress)
                staticcall uniswapRouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _190) + ceil32(return_data.size) + 516 len 0] = None
                require ext_code.size(uniswapRouterAddress)
                call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 25 * arg3 / 100, 100 * mem[ceil32(return_data.size) + 256] / slippage, Array(len=2, data=mem[(32 * _190) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require arg3 - (25 * arg3 / 100) <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (25 * arg3 / 100)
        require arg3 - (25 * arg3 / 100) <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] = allowance[address(arg1)][msg.sender] - arg3 + (25 * arg3 / 100)
        require arg3 - (25 * arg3 / 100) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] = arg3 - (25 * arg3 / 100) + balanceOf[address(arg2)]
        emit Transfer((arg3 - (25 * arg3 / 100)), arg1, arg2);
    return 1
}



}
