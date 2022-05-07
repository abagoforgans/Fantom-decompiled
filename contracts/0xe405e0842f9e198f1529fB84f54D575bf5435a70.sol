contract main {




// =====================  Runtime code  =====================


array of struct wantToWrappedRoute;

function wantToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < wantToWrappedRoute.length
    return wantToWrappedRoute[arg1].field_0
}

function _fallback() payable {
    revert
}

function swap(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    mem[132] = this.address
    mem[164] = arg4
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = arg2
    mem[128] = arg3
    wantToWrappedRoute.length = 2
    s = 0
    idx = 96
    while 160 > idx:
        wantToWrappedRoute[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while wantToWrappedRoute.length > idx:
        wantToWrappedRoute[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[164] = arg4
    mem[196] = 0
    mem[260] = msg.sender
    mem[292] = block.timestamp + 600
    mem[228] = 160
    mem[324] = wantToWrappedRoute.length
    if not wantToWrappedRoute.length:
        require ext_code.size(arg1)
        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(arg4), 0, 160, msg.sender, block.timestamp + 600, wantToWrappedRoute.length
    else:
        mem[0] = 0
        mem[356] = address(wantToWrappedRoute.field_0)
        idx = 356
        s = 0
        while (32 * wantToWrappedRoute.length) + 356 > idx + 32:
            mem[idx + 32] = wantToWrappedRoute[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(arg4), 0, 160, msg.sender, block.timestamp + 600, wantToWrappedRoute.length, mem[356 len 32 * wantToWrappedRoute.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    require mem[160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160]) + 32 <= return_data.size
}



}
