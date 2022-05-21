contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
address owner;
array of address sub_44951130;
array of address sub_d373b52e;
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
    return address(sub_d373b52e[arg1])
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
    staticcall arg1.allowance(address arg1, address arg2) with:
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
    staticcall arg2.allowance(address arg1, address arg2) with:
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
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
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
    staticcall arg3.allowance(address arg1, address arg2) with:
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
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
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
    staticcall arg1.allowance(address arg1, address arg2) with:
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
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
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
    staticcall arg1.balanceOf(address arg1) with:
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
    staticcall arg1.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.totalSupply() with:
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
    staticcall mem[140 len 20].allowance(address arg1, address arg2) with:
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
    if not sub_d373b52e.length:
        if not sub_44951130.length:
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var17003 len 4] with:
                    gas gas_remaining wei
                   args mem[var17003 + 4 len var17004 - 4]
            mem[var17005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var21003 >= mem[var21002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var23001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var25003 len 4] with:
                    gas gas_remaining wei
                   args mem[var25003 + 4 len var25004 - 4]
            mem[var25005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            address(sub_d373b52e[sub_d373b52e.length]) = mem[var29002 + 12 len 20]
            mem[0] = mem[var29002 + 12 len 20]
            mem[32] = 6
            sub_1fbedece[mem[0]] = 666
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var33003 len 4] with:
                    gas gas_remaining wei
                   args mem[var33003 + 4 len var33004 - 4]
            mem[var33005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var37003 >= mem[var37002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var39001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var41003 len 4] with:
                    gas gas_remaining wei
                   args mem[var41003 + 4 len var41004 - 4]
            mem[var41005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            address(sub_d373b52e[sub_d373b52e.length]) = mem[var45002 + 12 len 20]
            mem[0] = mem[var45002 + 12 len 20]
            mem[32] = 6
            sub_1fbedece[mem[0]] = 666
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var49003 len 4] with:
                    gas gas_remaining wei
                   args mem[var49003 + 4 len var49004 - 4]
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
                staticcall sub_44951130[idx].balanceOf(address arg1) with:
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
            staticcall chefAddress.mem[var21003 len 4] with:
                    gas gas_remaining wei
                   args mem[var21003 + 4 len var21004 - 4]
            mem[var21005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var25003 >= mem[var25002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var27001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var29003 len 4] with:
                    gas gas_remaining wei
                   args mem[var29003 + 4 len var29004 - 4]
            mem[var29005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            address(sub_d373b52e[sub_d373b52e.length]) = mem[var33002 + 12 len 20]
            mem[0] = mem[var33002 + 12 len 20]
            mem[32] = 6
            sub_1fbedece[mem[0]] = 666
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var37003 len 4] with:
                    gas gas_remaining wei
                   args mem[var37003 + 4 len var37004 - 4]
            mem[var37005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var41003 >= mem[var41002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var43001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var45003 len 4] with:
                    gas gas_remaining wei
                   args mem[var45003 + 4 len var45004 - 4]
            mem[var45005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            address(sub_d373b52e[sub_d373b52e.length]) = mem[var49002 + 12 len 20]
            mem[0] = mem[var49002 + 12 len 20]
            mem[32] = 6
            sub_1fbedece[mem[0]] = 666
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var53003 len 4] with:
                    gas gas_remaining wei
                   args mem[var53003 + 4 len var53004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
    else:
        sub_d373b52e.length = 0
        mem[0] = 3
        idx = 0
        while sub_d373b52e.length > idx:
            uint256(sub_d373b52e[idx]) = 0
            idx = idx + 1
            continue 
        if sub_44951130.length:
            idx = 0
            s = 0
            while idx < sub_44951130.length:
                mem[0] = 2
                mem[100] = this.address
                require ext_code.size(sub_44951130[idx])
                staticcall sub_44951130[idx].balanceOf(address arg1) with:
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
            staticcall chefAddress.mem[var28003 len 4] with:
                    gas gas_remaining wei
                   args mem[var28003 + 4 len var28004 - 4]
            mem[var28005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var32003 >= mem[var32002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var34001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var36003 len 4] with:
                    gas gas_remaining wei
                   args mem[var36003 + 4 len var36004 - 4]
            mem[var36005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            address(sub_d373b52e[sub_d373b52e.length]) = mem[var40002 + 12 len 20]
            mem[0] = mem[var40002 + 12 len 20]
            mem[32] = 6
            sub_1fbedece[mem[0]] = 666
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var44003 len 4] with:
                    gas gas_remaining wei
                   args mem[var44003 + 4 len var44004 - 4]
            mem[var44005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var48003 >= mem[var48002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var50001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var52003 len 4] with:
                    gas gas_remaining wei
                   args mem[var52003 + 4 len var52004 - 4]
            mem[var52005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            address(sub_d373b52e[sub_d373b52e.length]) = mem[var56002 + 12 len 20]
            mem[0] = mem[var56002 + 12 len 20]
            sub_1fbedece[mem[0]] = 666
            require ext_code.size(chefAddress)
            # nil
        else:
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var24003 len 4] with:
                    gas gas_remaining wei
                   args mem[var24003 + 4 len var24004 - 4]
            mem[var24005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var28003 >= mem[var28002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var30001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var32003 len 4] with:
                    gas gas_remaining wei
                   args mem[var32003 + 4 len var32004 - 4]
            mem[var32005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            address(sub_d373b52e[sub_d373b52e.length]) = mem[var36002 + 12 len 20]
            mem[0] = mem[var36002 + 12 len 20]
            mem[32] = 6
            sub_1fbedece[mem[0]] = 666
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var40003 len 4] with:
                    gas gas_remaining wei
                   args mem[var40003 + 4 len var40004 - 4]
            mem[var40005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var44003 >= mem[var44002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var46001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var48003 len 4] with:
                    gas gas_remaining wei
                   args mem[var48003 + 4 len var48004 - 4]
            mem[var48005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            sub_d373b52e.length++
            address(sub_d373b52e[sub_d373b52e.length]) = mem[var52002 + 12 len 20]
            mem[0] = mem[var52002 + 12 len 20]
            mem[32] = 6
            sub_1fbedece[mem[0]] = 666
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var56003 len 4] with:
                    gas gas_remaining wei
                   args mem[var56003 + 4 len var56004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}



}
