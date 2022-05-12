contract main {




// =====================  Runtime code  =====================


#
#  - rebalance()
#
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
address stor9;
uint256 stor11;
uint256 stor12;

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

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_44951130(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_44951130.length
    return sub_44951130[arg1]
}

function sub_82654169(?) {
    return sub_82654169
}

function owner() {
    return owner
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
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[356 len 4]
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
            return 0
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
           args stor9
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
            return 0
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
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * arg3.length) + 292 len 4]
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
    sub_d373b52e.length = 0
    mem[0] = 3
    idx = 0
    while sub_d373b52e.length > idx:
        uint256(sub_d373b52e[idx]) = 0
        idx = idx + 1
        continue 
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
        _166 = ext_call.return_data[0]
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    stor12 = (_166 * sub_44951130.length) + eth.balance(this.address) - 10^18
    mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor9)
    staticcall stor9.mem[var57003 len 4] with:
            gas gas_remaining wei
           args mem[var57003 + 4 len var57004 - 4]
    mem[var57005] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require var61003 < mem[var61002]
        mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
        mem[100] = var63001
        require ext_code.size(stor9)
        staticcall stor9.mem[var65003 len 4] with:
                gas gas_remaining wei
               args mem[var65003 + 4 len var65004 - 4]
        mem[var65005 len 160] = ext_call.return_data[0 len 160]
        if ext_call.success:
            require return_data.size >= 160
            mem[100] = stor9
            require ext_code.size(0)
            staticcall 0x0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor9
            mem[96] = ext_call.return_data[0]
            s = 96
            s = var67006
            while ext_call.success:
                require return_data.size >= 32
                _2238 = mem[96]
                require ext_code.size(0)
                staticcall 0x0.getReserves() with:
                        gas gas_remaining wei
                mem[96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(0)
                staticcall 0x0.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(0)
                staticcall 0x0.totalSupply() with:
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
                require ext_code.size(0)
                staticcall 0x0.token0() with:
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
                require ext_code.size(0)
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    staticcall 0x0.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0)
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        staticcall 0x0.price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor9)
                        staticcall stor9.poolLength() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if s + 1 < ext_call.return_data[0]:
                            require ext_code.size(stor9)
                            staticcall stor9.poolInfo(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            mem[96 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[100] = stor9
                            require ext_code.size(0)
                            staticcall 0x0.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor9
                            mem[96] = ext_call.return_data[0]
                            s = 96
                            s = s + 1
                            continue 
                        require (ext_call.return_data[0] * _2238 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (_2238 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
                        stor11 = stor12 / (ext_call.return_data[0] * _2238 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (_2238 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
                        mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor9)
                        staticcall stor9.mem[var117003 len 4] with:
                                gas gas_remaining wei
                               args mem[var117003 + 4 len var117004 - 4]
                        mem[var117005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if var121003 >= mem[var121002]:
                        mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[100] = var123001
                        require ext_code.size(stor9)
                        staticcall stor9.mem[var125003 len 4] with:
                                gas gas_remaining wei
                               args mem[var125003 + 4 len var125004 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require var129004 < sub_d373b52e.length
                        address(sub_d373b52e[var131001]) = address(var131003)
                        require var131005 < sub_d373b52e.length
                        # nil
                    else:
                        staticcall 0x0.price1CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor9)
                        staticcall stor9.poolLength() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if s + 1 < ext_call.return_data[0]:
                            require ext_code.size(stor9)
                            staticcall stor9.poolInfo(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            mem[96 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[100] = stor9
                            require ext_code.size(0)
                            staticcall 0x0.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor9
                            mem[96] = ext_call.return_data[0]
                            s = 96
                            s = s + 1
                            continue 
                        require (ext_call.return_data[0] * _2238 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (_2238 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
                        stor11 = stor12 / (ext_call.return_data[0] * _2238 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (_2238 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
                        mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor9)
                        staticcall stor9.mem[var117003 len 4] with:
                                gas gas_remaining wei
                               args mem[var117003 + 4 len var117004 - 4]
                        mem[var117005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if var121003 >= mem[var121002]:
                        mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[100] = var123001
                        require ext_code.size(stor9)
                        staticcall stor9.mem[var125003 len 4] with:
                                gas gas_remaining wei
                               args mem[var125003 + 4 len var125004 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require var129004 < sub_d373b52e.length
                        address(sub_d373b52e[var131001]) = address(var131003)
                        require var131005 < sub_d373b52e.length
                        # nil
                else:
                    staticcall 0x0.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        require ext_code.size(stor9)
                        staticcall stor9.poolLength() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require s + 1 < ext_call.return_data[0]
                        require ext_code.size(stor9)
                        staticcall stor9.poolInfo(uint256 arg1) with:
                                gas gas_remaining wei
                               args (s + 1)
                        mem[96 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        mem[100] = stor9
                        require ext_code.size(0)
                        staticcall 0x0.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor9
                        mem[96] = ext_call.return_data[0]
                        s = 96
                        s = s + 1
                        continue 
                    require ext_code.size(address(routerAddress))
                    staticcall address(routerAddress).WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0)
                    staticcall 0x0.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0)
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        staticcall 0x0.price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor9)
                        staticcall stor9.poolLength() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if s + 1 < ext_call.return_data[0]:
                            require ext_code.size(stor9)
                            staticcall stor9.poolInfo(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            mem[96 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[100] = stor9
                            require ext_code.size(0)
                            staticcall 0x0.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor9
                            mem[96] = ext_call.return_data[0]
                            s = 96
                            s = s + 1
                            continue 
                        require (ext_call.return_data[0] * _2238 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (_2238 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
                        stor11 = stor12 / (ext_call.return_data[0] * _2238 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (_2238 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
                        mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor9)
                        staticcall stor9.mem[var124003 len 4] with:
                                gas gas_remaining wei
                               args mem[var124003 + 4 len var124004 - 4]
                        mem[var124005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if var128003 >= mem[var128002]:
                        mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[100] = var130001
                        require ext_code.size(stor9)
                        staticcall stor9.mem[var132003 len 4] with:
                                gas gas_remaining wei
                               args mem[var132003 + 4 len var132004 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require var136004 < sub_d373b52e.length
                        address(sub_d373b52e[var138001]) = address(var138003)
                        require var138005 < sub_d373b52e.length
                        # nil
                    else:
                        staticcall 0x0.price1CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor9)
                        staticcall stor9.poolLength() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if s + 1 < ext_call.return_data[0]:
                            require ext_code.size(stor9)
                            staticcall stor9.poolInfo(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            mem[96 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            mem[100] = stor9
                            require ext_code.size(0)
                            staticcall 0x0.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor9
                            mem[96] = ext_call.return_data[0]
                            s = 96
                            s = s + 1
                            continue 
                        require (ext_call.return_data[0] * _2238 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (_2238 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
                        stor11 = stor12 / (ext_call.return_data[0] * _2238 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (_2238 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
                        mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor9)
                        staticcall stor9.mem[var124003 len 4] with:
                                gas gas_remaining wei
                               args mem[var124003 + 4 len var124004 - 4]
                        mem[var124005] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if var128003 >= mem[var128002]:
                        mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
                        mem[100] = var130001
                        require ext_code.size(stor9)
                        staticcall stor9.mem[var132003 len 4] with:
                                gas gas_remaining wei
                               args mem[var132003 + 4 len var132004 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require var136004 < sub_d373b52e.length
                        address(sub_d373b52e[var138001]) = address(var138003)
                        require var138005 < sub_d373b52e.length
                        # nil
    revert with ext_call.return_data[0 len return_data.size]
}



}
