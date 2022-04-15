contract main {




// =====================  Runtime code  =====================


address sub_7f1bab78Address;
address routerAddress;
address factoryAddress;

function sub_7f1bab78(?) {
    return sub_7f1bab78Address
}

function factory() {
    return factoryAddress
}

function router() {
    return routerAddress
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function WETH() {
    require ext_code.size(routerAddress)
    staticcall routerAddress.WFTM() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if arg6 < block.timestamp:
        revert with 0, 'UniswapV2Router: EXPIRED'
    require ext_code.size(sub_7f1bab78Address)
    call sub_7f1bab78Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7f1bab78Address)
    call sub_7f1bab78Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228] = arg5
    mem[260] = arg6
    require ext_code.size(routerAddress)
    call routerAddress.addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if msg.value > ext_call.return_data[32]:
        call msg.sender with:
           value msg.value - ext_call.return_data[32] wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0xfe5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, Mask(136, 0, arg5) << 96
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0xfe5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 232 len 29]
        ('bool', 'ext_call.success')
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg5 < block.timestamp:
        revert with 0, 'UniswapV2Router: EXPIRED'
    require ext_code.size(sub_7f1bab78Address)
    call sub_7f1bab78Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7f1bab78Address)
    call sub_7f1bab78Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228] = arg5
    mem[260] = arg3.length
    mem[292 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 292] = 0
    require ext_code.size(routerAddress)
    call routerAddress.0x2c0c0598 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, 160, address(arg4), arg5, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(routerAddress)
    staticcall routerAddress.WFTM() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.WFTM() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg4 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0xfe5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, Mask(232, 0, arg5)
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0xfe5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
}



}
