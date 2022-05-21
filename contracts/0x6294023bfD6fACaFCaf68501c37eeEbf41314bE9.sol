contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
address owner;
array of address sub_44951130;
array of struct sub_d373b52e;
array of address allPairs;
mapping of uint256 sub_1b5f7267;
mapping of uint256 sub_1fbedece;
uint32 stor7;
address routerAddress;
uint256 stor7;
uint256 sub_82654169;
address chefAddress;
address factoryAddress;
uint256 sub_68b8bb39;
uint256 sub_acca827a;

function sub_1b5f7267(?) {
    require calldata.size - 4 >= 32
    return sub_1b5f7267[arg1]
}

function allPairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function sub_1fbedece(?) {
    require calldata.size - 4 >= 32
    return sub_1fbedece[arg1]
}

function chef() {
    return chefAddress
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_44951130(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_44951130.length
    return sub_44951130[arg1]
}

function sub_68b8bb39(?) {
    return sub_68b8bb39
}

function sub_82654169(?) {
    return sub_82654169
}

function owner() {
    return owner
}

function sub_acca827a(?) {
    return sub_acca827a
}

function factory() {
    return factoryAddress
}

function sub_d373b52e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_d373b52e.length
    return sub_d373b52e[arg1].field_0
}

function router() {
    return address(routerAddress)
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] -= arg1
}

function sub_4c0bcfa4(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require msg.sender == owner
    mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(address(routerAddress))
    call address(routerAddress).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapExactTokensForTokensSupportingFeeOnTransferTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        mem[388 len 0] = None
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, this.address, block.timestamp, 2, mem[388 len 64]
    else:
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[356 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, '!safeApprove'
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 489 len 0] = None
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, this.address, block.timestamp, 2, mem[ceil32(return_data.size) + 489 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_923df378(?) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, 0, arg3, arg4, arg5, this.address, block.timestamp
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg2 with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                revert with 0, '!safeApprove'
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, '!safeApprove'
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg1), arg3, arg4, arg5, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_35315332(?) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg4:
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args 0, 0, address(arg2), arg4, arg5, arg6, this.address, block.timestamp
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg3 with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                revert with 0, '!safeApprove'
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, '!safeApprove'
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg4, arg5, arg6, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        require ext_code.size(address(routerAddress))
        call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value arg2 wei
             gas gas_remaining wei
            args 0, 0, arg3, arg4, arg5, this.address, block.timestamp
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                revert with 0, '!safeApprove'
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, '!safeApprove'
        require ext_code.size(address(routerAddress))
        call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value arg2 wei
             gas gas_remaining wei
            args address(arg1), arg3, arg4, arg5, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[64]
}

function sub_c97381c6(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(routerAddress))
    staticcall address(routerAddress).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(routerAddress))
    staticcall address(routerAddress).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
            return 666
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        staticcall arg1.price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + Mask(112, 0, ext_call.return_data[32]))
    staticcall arg1.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + Mask(112, 0, ext_call.return_data[0]))
}

function sub_be4ee1b9(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args chefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(routerAddress))
    staticcall address(routerAddress).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(routerAddress))
    staticcall address(routerAddress).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        staticcall arg1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
            return 666
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        staticcall arg1.price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]))
    staticcall arg1.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((ext_call.return_data[0] * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]))
}

function sub_29337d88(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require msg.sender == owner
    require 0 < arg3.length
    _3 = mem[128]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= -1:
        mem[(32 * arg3.length) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 324 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
    else:
        mem[(32 * arg3.length) + 128] = 68
        mem[(32 * arg3.length) + 228 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call address(_3) with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * arg3.length) + 292 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if arg3.length:
                require arg3.length >= 32
                if not mem[128]:
                    revert with 0, '!safeApprove'
            mem[(32 * arg3.length) + 424 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 424 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
        else:
            mem[(32 * arg3.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * arg3.length) + 260]:
                    revert with 0, '!safeApprove'
            mem[(32 * arg3.length) + ceil32(return_data.size) + 425 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + ceil32(return_data.size) + floor32(arg3.length) + 425 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateInfo() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    if sub_d373b52e.length:
        sub_d373b52e.length = 0
        mem[0] = 3
        idx = 0
        while sub_d373b52e.length > idx:
            sub_d373b52e[idx].field_0 = 0
            idx = idx + 1
            continue 
        if not sub_44951130.length:
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var58003 len 4] with:
                    gas gas_remaining wei
                   args mem[var58003 + 4 len var58004 - 4]
            mem[var58005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var62003 >= mem[var62002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var64001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var66003 len 4] with:
                    gas gas_remaining wei
                   args mem[var66003 + 4 len var66004 - 4]
            mem[var66005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            sub_d373b52e[sub_d373b52e.length].field_0 = mem[var70002 + 12 len 20]
            require var70004 < sub_d373b52e.length
            mem[0] = 3
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = chefAddress
            require ext_code.size(address(var74001))
            staticcall var76002.mem[var76003 len 4] with:
                    gas gas_remaining wei
                   args mem[var76003 + 4 len var76004 - 4]
            mem[var76005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(var80005))
            staticcall var82002.mem[var82003 len 4] with:
                    gas gas_remaining wei
                   args mem[var82003 + 4 len var82004 - 4]
            mem[var82005 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(var86007))
            staticcall var88002.mem[var88003 len 4] with:
                    gas gas_remaining wei
                   args mem[var88003 + 4 len var88004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            # nil
        else:
            idx = 0
            s = 0
            while idx < sub_44951130.length:
                mem[0] = 2
                mem[100] = this.address
                require ext_code.size(sub_44951130[idx])
                staticcall sub_44951130[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var62003 len 4] with:
                    gas gas_remaining wei
                   args mem[var62003 + 4 len var62004 - 4]
            mem[var62005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var66003 >= mem[var66002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var68001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var70003 len 4] with:
                    gas gas_remaining wei
                   args mem[var70003 + 4 len var70004 - 4]
            mem[var70005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            sub_d373b52e[sub_d373b52e.length].field_0 = mem[var74002 + 12 len 20]
            require var74004 < sub_d373b52e.length
            mem[0] = 3
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = chefAddress
            require ext_code.size(address(var78001))
            staticcall var80002.mem[var80003 len 4] with:
                    gas gas_remaining wei
                   args mem[var80003 + 4 len var80004 - 4]
            mem[var80005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(var84005))
            staticcall var86002.mem[var86003 len 4] with:
                    gas gas_remaining wei
                   args mem[var86003 + 4 len var86004 - 4]
            mem[var86005 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(var90007))
            staticcall var92002.mem[var92003 len 4] with:
                    gas gas_remaining wei
                   args mem[var92003 + 4 len var92004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
    else:
        if sub_44951130.length:
            idx = 0
            s = 0
            while idx < sub_44951130.length:
                mem[0] = 2
                mem[100] = this.address
                require ext_code.size(sub_44951130[idx])
                staticcall sub_44951130[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var55003 len 4] with:
                    gas gas_remaining wei
                   args mem[var55003 + 4 len var55004 - 4]
            mem[var55005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var59003 >= mem[var59002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var61001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var63003 len 4] with:
                    gas gas_remaining wei
                   args mem[var63003 + 4 len var63004 - 4]
            mem[var63005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            sub_d373b52e[sub_d373b52e.length].field_0 = mem[var67002 + 12 len 20]
            require var67004 < sub_d373b52e.length
            mem[0] = 3
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = chefAddress
            require ext_code.size(address(var71001))
            staticcall var73002.mem[var73003 len 4] with:
                    gas gas_remaining wei
                   args mem[var73003 + 4 len var73004 - 4]
            mem[var73005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(var77005))
            staticcall var79002.mem[var79003 len 4] with:
                    gas gas_remaining wei
                   args mem[var79003 + 4 len var79004 - 4]
            mem[var79005 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(var83007))
            staticcall var85002.mem[var85003 len 4] with:
                    gas gas_remaining wei
                   args mem[var85003 + 4 len var85004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            # nil
        else:
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var51003 len 4] with:
                    gas gas_remaining wei
                   args mem[var51003 + 4 len var51004 - 4]
            mem[var51005] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if var55003 >= mem[var55002]:
                mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                mem[100] = var57001
                require ext_code.size(chefAddress)
                staticcall chefAddress.mem[var59003 len 4] with:
                        gas gas_remaining wei
                       args mem[var59003 + 4 len var59004 - 4]
                mem[var59005 len 160] = ext_call.return_data[0 len 160]
                if ext_call.success:
                    require return_data.size >= 160
                    sub_d373b52e.length++
                    sub_d373b52e[sub_d373b52e.length].field_0 = mem[var63002 + 12 len 20]
                    require var63004 < sub_d373b52e.length
                    mem[0] = 3
                    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                    mem[100] = chefAddress
                    require ext_code.size(address(var67001))
                    staticcall var69002.mem[var69003 len 4] with:
                            gas gas_remaining wei
                           args mem[var69003 + 4 len var69004 - 4]
                    mem[var69005] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(var73005))
                        staticcall var75002.mem[var75003 len 4] with:
                                gas gas_remaining wei
                               args mem[var75003 + 4 len var75004 - 4]
                        mem[var75005 len 96] = ext_call.return_data[0 len 96]
                        if ext_call.success:
                            require return_data.size >= 96
                            mem[96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(var79007))
                            staticcall var81002.mem[var81003 len 4] with:
                                    gas gas_remaining wei
                                   args mem[var81003 + 4 len var81004 - 4]
                            mem[var81005] = ext_call.return_data[0]
                            if ext_call.success:
                                require return_data.size >= 32
                                require 0x18160ddd00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(var83011))
                                staticcall address(var83011).0x18160ddd with:
                                        gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = 96
                                s = var83007
                                t = var83008
                                u = var83009
                                v = var83011
                                w = var83013
                                w = var83014
                                while ext_call.success:
                                    require return_data.size >= 32
                                    require mem[96]
                                    require ext_code.size(address(routerAddress))
                                    staticcall address(routerAddress).WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(v))
                                    staticcall address(v).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(routerAddress))
                                    staticcall address(routerAddress).WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(v))
                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                        staticcall address(v).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(v))
                                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                                            staticcall address(v).price0CumulativeLast() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require w < sub_d373b52e.length
                                            mem[32] = 6
                                            sub_1fbedece[stor3[w].field_0] = (ext_call.return_data[0] * u * t / 0x18160ddd00000000000000000000000000000000000000000000000000000000) + (u * s / mem[96])
                                        else:
                                            staticcall address(v).price1CumulativeLast() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require w < sub_d373b52e.length
                                            mem[32] = 6
                                            sub_1fbedece[stor3[w].field_0] = (ext_call.return_data[0] * u * s / mem[96]) + (u * t / 0x18160ddd00000000000000000000000000000000000000000000000000000000)
                                    else:
                                        staticcall address(v).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                                            require w < sub_d373b52e.length
                                            mem[32] = 6
                                            sub_1fbedece[stor3[w].field_0] = 666
                                        else:
                                            require ext_code.size(address(routerAddress))
                                            staticcall address(routerAddress).WETH() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(v))
                                            staticcall address(v).token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(v))
                                            if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                                                staticcall address(v).price0CumulativeLast() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require w < sub_d373b52e.length
                                                mem[32] = 6
                                                sub_1fbedece[stor3[w].field_0] = (ext_call.return_data[0] * u * t / 0x18160ddd00000000000000000000000000000000000000000000000000000000) + (u * s / mem[96])
                                            else:
                                                staticcall address(v).price1CumulativeLast() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require w < sub_d373b52e.length
                                                mem[32] = 6
                                                sub_1fbedece[stor3[w].field_0] = (ext_call.return_data[0] * u * s / mem[96]) + (u * t / 0x18160ddd00000000000000000000000000000000000000000000000000000000)
                                    require ext_code.size(chefAddress)
                                    staticcall chefAddress.poolLength() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if w + 1 >= ext_call.return_data[0]:
                                    require ext_code.size(chefAddress)
                                    staticcall chefAddress.0x1526fe27 with:
                                            gas gas_remaining wei
                                           args (w + 1)
                                    mem[96 len 160] = ext_call.return_data[0 len 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 160
                                    sub_d373b52e.length++
                                    sub_d373b52e[sub_d373b52e.length].field_0 = address(ext_call.return_data[0])
                                    require w + 1 < sub_d373b52e.length
                                    mem[0] = 3
                                    require ext_code.size(sub_d373b52e[w].field_256)
                                    staticcall sub_d373b52e[w].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args chefAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_d373b52e[w].field_256)
                                    staticcall sub_d373b52e[w].field_256.getReserves() with:
                                            gas gas_remaining wei
                                    mem[96 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_code.size(sub_d373b52e[w].field_256)
                                    staticcall sub_d373b52e[w].field_256.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require ext_code.size(sub_d373b52e[w].field_512)
                                    staticcall sub_d373b52e[w].field_512.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    s = 96
                                    s = Mask(112, 0, ext_call.return_data[32])
                                    t = Mask(112, 0, ext_call.return_data[0])
                                    u = ext_call.return_data[0]
                                    v = sub_d373b52e[w].field_256
                                    w = ext_call.return_data[0]
                                    w = w + 1
                                    continue 
            revert with ext_call.return_data[0 len return_data.size]
}



}
