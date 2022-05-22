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
    if not sub_d373b52e.length:
        if not sub_44951130.length:
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var43003 len 4] with:
                    gas gas_remaining wei
                   args mem[var43003 + 4 len var43004 - 4]
            mem[var43005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var47003 >= mem[var47002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var49001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var51003 len 4] with:
                    gas gas_remaining wei
                   args mem[var51003 + 4 len var51004 - 4]
            mem[var51005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            _2549 = mem[var55002]
            sub_d373b52e.length++
            mem[0] = 3
            address(sub_d373b52e[sub_d373b52e.length]) = address(_2549)
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = chefAddress
            if var55004:
                require ext_code.size(address(var59001))
                staticcall var61002.mem[var61003 len 4] with:
                        gas gas_remaining wei
                       args mem[var61003 + 4 len var61004 - 4]
                mem[var61005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(var65005))
                staticcall var67002.mem[var67003 len 4] with:
                        gas gas_remaining wei
                       args mem[var67003 + 4 len var67004 - 4]
                mem[var67005 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[96] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).mem[var73003 len 4] with:
                        gas gas_remaining wei
                       args mem[var73003 + 4 len var73004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(var77009))
                # nil
            else:
                require ext_code.size(address(var39001))
                staticcall var41002.mem[var41003 len 4] with:
                        gas gas_remaining wei
                       args mem[var41003 + 4 len var41004 - 4]
                mem[var41005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x5909c0d500000000000000000000000000000000000000000000000000000000
                require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
                staticcall 0x30748322b6e34545dbe0788c421886aeb5297789.mem[var47003 len 4] with:
                        gas gas_remaining wei
                       args mem[var47003 + 4 len var47004 - 4]
                mem[var47005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _8685 = mem[var51002]
                mem[0] = address(var51004)
                mem[32] = 6
                sub_1fbedece[address(var51004)] = var51003 * _8685
                mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
                require ext_code.size(chefAddress)
                staticcall chefAddress.mem[var75003 len 4] with:
                        gas gas_remaining wei
                       args mem[var75003 + 4 len var75004 - 4]
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
            staticcall chefAddress.mem[var47003 len 4] with:
                    gas gas_remaining wei
                   args mem[var47003 + 4 len var47004 - 4]
            mem[var47005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var51003 >= mem[var51002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var53001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var55003 len 4] with:
                    gas gas_remaining wei
                   args mem[var55003 + 4 len var55004 - 4]
            mem[var55005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            _3117 = mem[var59002]
            sub_d373b52e.length++
            mem[0] = 3
            address(sub_d373b52e[sub_d373b52e.length]) = address(_3117)
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = chefAddress
            if var59004:
                require ext_code.size(address(var63001))
                staticcall var65002.mem[var65003 len 4] with:
                        gas gas_remaining wei
                       args mem[var65003 + 4 len var65004 - 4]
                mem[var65005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(var69005))
                staticcall var71002.mem[var71003 len 4] with:
                        gas gas_remaining wei
                       args mem[var71003 + 4 len var71004 - 4]
                mem[var71005 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[96] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).mem[var77003 len 4] with:
                        gas gas_remaining wei
                       args mem[var77003 + 4 len var77004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                # nil
            else:
                require ext_code.size(address(var43001))
                staticcall var45002.mem[var45003 len 4] with:
                        gas gas_remaining wei
                       args mem[var45003 + 4 len var45004 - 4]
                mem[var45005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x5909c0d500000000000000000000000000000000000000000000000000000000
                require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
                staticcall 0x30748322b6e34545dbe0788c421886aeb5297789.mem[var51003 len 4] with:
                        gas gas_remaining wei
                       args mem[var51003 + 4 len var51004 - 4]
                mem[var51005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _9701 = mem[var55002]
                mem[0] = address(var55004)
                mem[32] = 6
                sub_1fbedece[address(var55004)] = var55003 * _9701
                mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
                require ext_code.size(chefAddress)
                staticcall chefAddress.mem[var79003 len 4] with:
                        gas gas_remaining wei
                       args mem[var79003 + 4 len var79004 - 4]
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
            staticcall chefAddress.mem[var54003 len 4] with:
                    gas gas_remaining wei
                   args mem[var54003 + 4 len var54004 - 4]
            mem[var54005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var58003 >= mem[var58002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var60001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var62003 len 4] with:
                    gas gas_remaining wei
                   args mem[var62003 + 4 len var62004 - 4]
            mem[var62005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            _3918 = mem[var66002]
            sub_d373b52e.length++
            mem[0] = 3
            address(sub_d373b52e[sub_d373b52e.length]) = address(_3918)
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = chefAddress
            if not var66004:
                require ext_code.size(address(var50001))
                staticcall var52002.mem[var52003 len 4] with:
                        gas gas_remaining wei
                       args mem[var52003 + 4 len var52004 - 4]
                mem[var52005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x5909c0d500000000000000000000000000000000000000000000000000000000
                require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
                staticcall 0x30748322b6e34545dbe0788c421886aeb5297789.mem[var58003 len 4] with:
                        gas gas_remaining wei
                       args mem[var58003 + 4 len var58004 - 4]
                mem[var58005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_1fbedece[address(var62004)] = var62003 * mem[var62002]
                require ext_code.size(chefAddress)
                # nil
            else:
                require ext_code.size(address(var70001))
                staticcall var72002.mem[var72003 len 4] with:
                        gas gas_remaining wei
                       args mem[var72003 + 4 len var72004 - 4]
                mem[var72005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(var76005))
                staticcall var78002.mem[var78003 len 4] with:
                        gas gas_remaining wei
                       args mem[var78003 + 4 len var78004 - 4]
                mem[var78005 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[96] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).mem[var84003 len 4] with:
                        gas gas_remaining wei
                       args mem[var84003 + 4 len var84004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var50003 len 4] with:
                    gas gas_remaining wei
                   args mem[var50003 + 4 len var50004 - 4]
            mem[var50005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var54003 >= mem[var54002]:
            mem[96] = 0x1526fe2700000000000000000000000000000000000000000000000000000000
            mem[100] = var56001
            require ext_code.size(chefAddress)
            staticcall chefAddress.mem[var58003 len 4] with:
                    gas gas_remaining wei
                   args mem[var58003 + 4 len var58004 - 4]
            mem[var58005 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            _3118 = mem[var62002]
            sub_d373b52e.length++
            mem[0] = 3
            address(sub_d373b52e[sub_d373b52e.length]) = address(_3118)
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = chefAddress
            if var62004:
                require ext_code.size(address(var66001))
                staticcall var68002.mem[var68003 len 4] with:
                        gas gas_remaining wei
                       args mem[var68003 + 4 len var68004 - 4]
                mem[var68005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(var72005))
                staticcall var74002.mem[var74003 len 4] with:
                        gas gas_remaining wei
                       args mem[var74003 + 4 len var74004 - 4]
                mem[var74005 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[96] = 0xad5c464800000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).mem[var80003 len 4] with:
                        gas gas_remaining wei
                       args mem[var80003 + 4 len var80004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                # nil
            else:
                require ext_code.size(address(var46001))
                staticcall var48002.mem[var48003 len 4] with:
                        gas gas_remaining wei
                       args mem[var48003 + 4 len var48004 - 4]
                mem[var48005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x5909c0d500000000000000000000000000000000000000000000000000000000
                require ext_code.size(0x30748322b6e34545dbe0788c421886aeb5297789)
                staticcall 0x30748322b6e34545dbe0788c421886aeb5297789.mem[var54003 len 4] with:
                        gas gas_remaining wei
                       args mem[var54003 + 4 len var54004 - 4]
                mem[var54005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _9704 = mem[var58002]
                mem[0] = address(var58004)
                mem[32] = 6
                sub_1fbedece[address(var58004)] = var58003 * _9704
                mem[96] = 0x81e3eda00000000000000000000000000000000000000000000000000000000
                require ext_code.size(chefAddress)
                staticcall chefAddress.mem[var82003 len 4] with:
                        gas gas_remaining wei
                       args mem[var82003 + 4 len var82004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
}



}
