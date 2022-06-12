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

function sub_9576088b(?) payable {
    if 15 > !block.timestamp:
        revert with 0, 17
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
    mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = ceil32(return_data.size) + 356
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = block.timestamp + 15
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 15, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 < 0:
        revert with 0, 65
    require return_data.size >= mem[ceil32(return_data.size) + 192 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32
}



}
