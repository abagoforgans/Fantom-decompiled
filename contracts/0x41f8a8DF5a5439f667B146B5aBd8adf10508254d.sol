contract main {




// =====================  Runtime code  =====================


address uniswapRouterAddress;
address stor1;

function uniswapRouter() {
    return uniswapRouterAddress
}

function _fallback() payable {
    revert
}

function sub_415bec6e(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function convertEthToDai(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > -16:
        revert with 'NH{q', 17
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor1
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function pay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value <= 0:
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = arg1
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        if block.timestamp > -16:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 96] = 2
        require ext_code.size(uniswapRouterAddress)
        staticcall uniswapRouterAddress.WETH() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = stor1
        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg1
        mem[(2 * ceil32(return_data.size)) + 228] = 128
        mem[(2 * ceil32(return_data.size)) + 324] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 260] = this.address
        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 15
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.mem[mem[64] len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'refund failed'
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[96] = 2
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor1
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = block.timestamp + 15
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'refund failed'
        if block.timestamp > -16:
            revert with 'NH{q', 17
        require ext_code.size(uniswapRouterAddress)
        staticcall uniswapRouterAddress.WETH() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 0 >= 0, Mask(224, 32, arg1) >> 32:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
        if 1 >= 0, Mask(224, 32, arg1) >> 32:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 256] = stor1
        mem[(2 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = arg1
        mem[(2 * ceil32(return_data.size)) + 324] = 128
        mem[(2 * ceil32(return_data.size)) + 420] = 0, Mask(224, 32, arg1) >> 32
        idx = 0
        s = ceil32(return_data.size) + 224
        t = (2 * ceil32(return_data.size)) + 452
        while idx < mem[ceil32(return_data.size) + 192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 356] = this.address
        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp + 15
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args arg1, 128, address(this.address), block.timestamp + 15, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not return_data.size:
            if ext_call.success:
            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 292] = 32
            mem[(2 * ceil32(return_data.size)) + 324] = 13
            mem[(2 * ceil32(return_data.size)) + 356] = 'refund failed'
            revert with memory
              from (2 * ceil32(return_data.size)) + 288
               len ceil32(return_data.size) + 100
        mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 13
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 'refund failed'
        revert with memory
          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289
           len ceil32(return_data.size) + 100
    mem[ceil32(return_data.size) + 192] = return_data.size
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'refund failed'
    if block.timestamp > -16:
        revert with 'NH{q', 17
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 289] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = ext_call.return_data[12 len 20]
    if 1 >= mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = stor1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 128
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]
    idx = 0
    s = ceil32(return_data.size) + ceil32(return_data.size) + 225
    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
    while idx < mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = block.timestamp + 15
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg1, 128, address(this.address), block.timestamp + 15, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len (32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 193]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if ext_call.success:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 13
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 'refund failed'
        revert with memory
          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289
           len ceil32(return_data.size) + 100
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 321 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
    mem[(4 * ceil32(return_data.size)) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 294] = 32
    mem[(4 * ceil32(return_data.size)) + 326] = 13
    mem[(4 * ceil32(return_data.size)) + 358] = 'refund failed'
    revert with memory
      from (4 * ceil32(return_data.size)) + 290
       len (3 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
