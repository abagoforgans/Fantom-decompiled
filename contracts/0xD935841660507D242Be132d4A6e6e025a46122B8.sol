contract main {




// =====================  Runtime code  =====================


#
#  - sub_cf4ddaf8(?)
#  - compound()
#
address owner;
array of address allPairs;
mapping of uint256 sub_1b5f7267;
array of uint256 pids;
uint32 stor4;
address routerAddress;
uint256 stor4;
uint256 sub_82654169;
uint256 sub_96f93d01;
address chefAddress;
uint256 stor8;
address stor10;
address stor11;
uint256 sub_85aba000;
uint256 sub_0189c461;

function sub_0189c461(?) {
    return sub_0189c461
}

function sub_1b5f7267(?) {
    require calldata.size - 4 >= 32
    return sub_1b5f7267[arg1]
}

function allPairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function chef() {
    return chefAddress
}

function pids(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pids.length
    return pids[arg1]
}

function sub_82654169(?) {
    return sub_82654169
}

function sub_85aba000(?) {
    return sub_85aba000
}

function owner() {
    return owner
}

function sub_96f93d01(?) {
    return sub_96f93d01
}

function router() {
    return address(routerAddress)
}

function _fallback() payable {
    revert
}

function sub_f902c849(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require this.address == msg.sender
    stor10 = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require this.address == msg.sender
    require eth.balance(this.address) >= arg1
}

function sub_7f808e28(?) {
    idx = 0
    s = 0
    while idx < 4:
        require idx < pids.length
        mem[132] = this.address
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pids[idx], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require idx < allPairs.length
        mem[0] = 1
        require ext_code.size(stor11)
        call stor11.getResult(address arg1) with:
             gas gas_remaining wei
            args allPairs[idx]
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        idx = idx + 1
        s = Mask(112, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]
        continue 
    sub_85aba000 = 4
    return 4
}

function sub_35315332(?) {
    require calldata.size - 4 >= 192
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
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg3 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
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

function swapExactTokensForTokensSupportingFeeOnTransferTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        require this.address == msg.sender
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
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[356 len 4]
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

function sub_29337d88(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
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
        mem[(32 * arg3.length) + 228 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call address(_3) with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * arg3.length) + 292 len 4]
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

function addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= -1:
        require ext_code.size(address(routerAddress))
        staticcall address(routerAddress).WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(routerAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= -1:
            require ext_code.size(address(routerAddress))
            call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value arg2 wei
                 gas gas_remaining wei
                args 0, 0, arg3, arg4, arg5, this.address, block.timestamp
        else:
            mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call address(ext_call.return_data[0]) with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
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
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, '!safeApprove'
            require ext_code.size(address(routerAddress))
            staticcall address(routerAddress).WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(routerAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < -1:
                mem[296 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call address(ext_call.return_data[0]) with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[360 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, '!safeApprove'
                else:
                    mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[328]:
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
            staticcall address(routerAddress).WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(routerAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < -1:
                mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call address(ext_call.return_data[0]) with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 361 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, '!safeApprove'
                else:
                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 329]:
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

function withdraw() payable {
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < 4:
            require idx < pids.length
            mem[132] = this.address
            require ext_code.size(chefAddress)
            staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pids[idx], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < allPairs.length
            mem[0] = 1
            require ext_code.size(stor11)
            call stor11.getResult(address arg1) with:
                 gas gas_remaining wei
                args allPairs[idx]
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            idx = idx + 1
            s = Mask(112, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]
            continue 
        sub_85aba000 = 4
        require ext_code.size(stor10)
        staticcall stor10.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        stor8 = 4 / ext_call.return_data[0]
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = 0
        while idx < 4:
            require idx < pids.length
            require ext_code.size(chefAddress)
            staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pids[idx], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(stor10)
            staticcall stor10.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < pids.length
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pids[idx], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < allPairs.length
            require ext_code.size(allPairs[idx])
            staticcall allPairs[idx].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < allPairs.length
            mem[0] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(allPairs[idx])
            staticcall allPairs[idx].0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(routerAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                mem[mem[64] + 36] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(address(routerAddress))
                call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < allPairs.length
                mem[0] = 1
                require ext_code.size(allPairs[idx])
                staticcall allPairs[idx].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[96]
                mem[128] = address(ext_call.return_data[0])
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[96]
                mem[160] = address(ext_call.return_data[0])
                require 0 < mem[96]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(routerAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= -1:
                    _1127 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    t = 0
                    while t < 32 * mem[96]:
                        mem[t + mem[64] + 196] = mem[t + 128]
                        t = t + 32
                        continue 
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1127 + -mem[64] + 192]
                else:
                    _1109 = mem[64]
                    mem[mem[64] + 36] = address(routerAddress)
                    mem[mem[64] + 68] = -1
                    _1110 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1110 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1110 + 36 len 28]
                    _1113 = mem[_1110]
                    u = _1110 + 32
                    v = mem[64]
                    t = mem[_1110]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1110])] = mem[_1110 + floor32(mem[_1110]) + -(mem[_1110] % 32) + 64 len mem[_1110] % 32] or Mask(8 * -(mem[_1110] % 32) + 32, -(8 * -(mem[_1110] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1110])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1113 + _1109 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not mem[96]:
                            _1729 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1729 + -mem[64] + 192]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeApprove'
                            _1765 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1765 + -mem[64] + 192]
                    else:
                        _1678 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1678] = return_data.size
                        mem[_1678 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not return_data.size:
                            _1734 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1734 + -mem[64] + 192]
                        else:
                            require return_data.size >= 32
                            if not mem[_1678 + 32]:
                                revert with 0, '!safeApprove'
                            _1770 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1770 + -mem[64] + 192]
            else:
                _909 = mem[64]
                mem[mem[64] + 36] = address(routerAddress)
                mem[mem[64] + 68] = -1
                _910 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_910 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_910 + 36 len 28]
                _913 = mem[_910]
                u = _910 + 32
                v = _909 + 100
                t = mem[_910]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_909 + floor32(mem[_910]) + 100] = mem[_910 + -(mem[_910] % 32) + floor32(mem[_910]) + 64 len mem[_910] % 32] or Mask(8 * -(mem[_910] % 32) + 32, -(8 * -(mem[_910] % 32) + 32) + 256, mem[_909 + floor32(mem[_910]) + 100])
                call allPairs[idx].mem[_909 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_909 + 104 len _913 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, '!safeApprove'
                    mem[_909 + 104] = address(ext_call.return_data[0])
                    mem[_909 + 136] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[_909 + 168] = 0
                    mem[_909 + 200] = 0
                    mem[_909 + 232] = this.address
                    mem[_909 + 264] = block.timestamp
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < allPairs.length
                    mem[0] = 1
                    require ext_code.size(allPairs[idx])
                    staticcall allPairs[idx].token0() with:
                            gas gas_remaining wei
                    mem[_909 + 100] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[96]
                    mem[128] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(routerAddress))
                    staticcall address(routerAddress).WETH() with:
                            gas gas_remaining wei
                    mem[_909 + 100] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[96]
                    mem[160] = ext_call.return_data[12 len 20]
                    require 0 < mem[96]
                    require ext_code.size(address(ext_call.return_data[12 len 20]))
                    staticcall address(ext_call.return_data[12 len 20]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[_909 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_909 + 104] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        mem[_909 + 136] = 0
                        mem[_909 + 200] = this.address
                        mem[_909 + 232] = block.timestamp
                        mem[_909 + 168] = 160
                        mem[_909 + 264] = mem[96]
                        t = 0
                        while t < 32 * mem[96]:
                            mem[t + _909 + 296] = mem[t + 128]
                            t = t + 32
                            continue 
                        require ext_code.size(address(routerAddress))
                        call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_909 + 264 len (32 * mem[96]) + 32]
                    else:
                        mem[_909 + 136] = address(routerAddress)
                        mem[_909 + 168] = -1
                        mem[_909 + 100] = 68
                        mem[64] = _909 + 200
                        mem[_909 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor4)
                        u = _909 + 132
                        v = _909 + 200
                        t = 68
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_909 + 264] = mem[_909 + 224 len 4] or Mask(224, 32, mem[_909 + 264])
                        call address(ext_call.return_data[12 len 20]).mem[_909 + 200 len 4] with:
                             gas gas_remaining wei
                            args mem[_909 + 204 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, '!safeApprove'
                            mem[_909 + 200] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_909 + 204] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_909 + 236] = 0
                            mem[_909 + 300] = this.address
                            mem[_909 + 332] = block.timestamp
                            mem[_909 + 268] = 160
                            mem[_909 + 364] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + _909 + 396] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_909 + 364 len (32 * mem[96]) + 32]
                        else:
                            mem[64] = _909 + ceil32(return_data.size) + 201
                            mem[_909 + 200] = return_data.size
                            mem[_909 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_909 + 232]:
                                    revert with 0, '!safeApprove'
                            mem[_909 + ceil32(return_data.size) + 201] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_909 + ceil32(return_data.size) + 205] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_909 + ceil32(return_data.size) + 237] = 0
                            mem[_909 + ceil32(return_data.size) + 301] = this.address
                            mem[_909 + ceil32(return_data.size) + 333] = block.timestamp
                            mem[_909 + ceil32(return_data.size) + 269] = 160
                            mem[_909 + ceil32(return_data.size) + 365] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + _909 + ceil32(return_data.size) + 397] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_909 + ceil32(return_data.size) + 365 len (32 * mem[96]) + 32]
                else:
                    mem[64] = _909 + ceil32(return_data.size) + 101
                    mem[_909 + 100] = return_data.size
                    mem[_909 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_909 + 132]:
                            revert with 0, '!safeApprove'
                    mem[_909 + ceil32(return_data.size) + 137] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[_909 + ceil32(return_data.size) + 169] = 0
                    mem[_909 + ceil32(return_data.size) + 201] = 0
                    mem[_909 + ceil32(return_data.size) + 233] = this.address
                    mem[_909 + ceil32(return_data.size) + 265] = block.timestamp
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < allPairs.length
                    mem[0] = 1
                    require ext_code.size(allPairs[idx])
                    staticcall allPairs[idx].token0() with:
                            gas gas_remaining wei
                    mem[_909 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require mem[96]
                    mem[128] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(routerAddress))
                    staticcall address(routerAddress).WETH() with:
                            gas gas_remaining wei
                    mem[_909 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 < mem[96]
                    mem[160] = ext_call.return_data[12 len 20]
                    require 0 < mem[96]
                    require ext_code.size(address(ext_call.return_data[12 len 20]))
                    staticcall address(ext_call.return_data[12 len 20]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(routerAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= -1:
                        mem[_909 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_909 + ceil32(return_data.size) + 105] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        mem[_909 + ceil32(return_data.size) + 137] = 0
                        mem[_909 + ceil32(return_data.size) + 201] = this.address
                        mem[_909 + ceil32(return_data.size) + 233] = block.timestamp
                        mem[_909 + ceil32(return_data.size) + 169] = 160
                        mem[_909 + ceil32(return_data.size) + 265] = mem[96]
                        t = 0
                        while t < 32 * mem[96]:
                            mem[t + _909 + ceil32(return_data.size) + 297] = mem[t + 128]
                            t = t + 32
                            continue 
                        require ext_code.size(address(routerAddress))
                        call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_909 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                    else:
                        mem[_909 + ceil32(return_data.size) + 137] = address(routerAddress)
                        mem[_909 + ceil32(return_data.size) + 169] = -1
                        mem[_909 + ceil32(return_data.size) + 101] = 68
                        mem[64] = _909 + ceil32(return_data.size) + 201
                        mem[_909 + ceil32(return_data.size) + 133] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor4)
                        u = _909 + ceil32(return_data.size) + 133
                        v = _909 + ceil32(return_data.size) + 201
                        t = 68
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[_909 + ceil32(return_data.size) + 265] = mem[_909 + ceil32(return_data.size) + 225 len 4] or Mask(224, 32, mem[_909 + ceil32(return_data.size) + 265])
                        call address(ext_call.return_data[12 len 20]).mem[_909 + ceil32(return_data.size) + 201 len 4] with:
                             gas gas_remaining wei
                            args mem[_909 + ceil32(return_data.size) + 205 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, '!safeApprove'
                            if mem[96]:
                                require mem[96] >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, '!safeApprove'
                            mem[_909 + ceil32(return_data.size) + 201] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_909 + ceil32(return_data.size) + 205] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_909 + ceil32(return_data.size) + 237] = 0
                            mem[_909 + ceil32(return_data.size) + 301] = this.address
                            mem[_909 + ceil32(return_data.size) + 333] = block.timestamp
                            mem[_909 + ceil32(return_data.size) + 269] = 160
                            mem[_909 + ceil32(return_data.size) + 365] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + _909 + ceil32(return_data.size) + 397] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_909 + ceil32(return_data.size) + 365 len (32 * mem[96]) + 32]
                        else:
                            mem[64] = _909 + (2 * ceil32(return_data.size)) + 202
                            mem[_909 + ceil32(return_data.size) + 201] = return_data.size
                            mem[_909 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            '!safeApprove',
                                            mem[_909 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_909 + ceil32(return_data.size) + 233]:
                                    revert with 0, 
                                                '!safeApprove',
                                                mem[_909 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[_909 + (2 * ceil32(return_data.size)) + 202] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_909 + (2 * ceil32(return_data.size)) + 206] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_909 + (2 * ceil32(return_data.size)) + 238] = 0
                            mem[_909 + (2 * ceil32(return_data.size)) + 302] = this.address
                            mem[_909 + (2 * ceil32(return_data.size)) + 334] = block.timestamp
                            mem[_909 + (2 * ceil32(return_data.size)) + 270] = 160
                            mem[_909 + (2 * ceil32(return_data.size)) + 366] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + _909 + (2 * ceil32(return_data.size)) + 398] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[96], mem[_909 + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) + (32 * mem[96]) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = s + ext_call.return_data[0]
            continue 
    else:
        require this.address == msg.sender
        idx = 0
        s = 0
        while idx < 4:
            require idx < pids.length
            mem[132] = this.address
            require ext_code.size(chefAddress)
            staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pids[idx], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < allPairs.length
            mem[0] = 1
            require ext_code.size(stor11)
            call stor11.getResult(address arg1) with:
                 gas gas_remaining wei
                args allPairs[idx]
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            idx = idx + 1
            s = Mask(112, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]
            continue 
        sub_85aba000 = 4
        require ext_code.size(stor10)
        staticcall stor10.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        stor8 = 4 / ext_call.return_data[0]
        mem[96] = 2
        mem[64] = 192
        mem[128 len 64] = call.data[calldata.size len 64]
        idx = 0
        s = 0
        while idx < 4:
            require idx < pids.length
            require ext_code.size(chefAddress)
            staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pids[idx], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(stor10)
            staticcall stor10.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < pids.length
            require ext_code.size(chefAddress)
            call chefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pids[idx], ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < allPairs.length
            require ext_code.size(allPairs[idx])
            staticcall allPairs[idx].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < allPairs.length
            mem[0] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(allPairs[idx])
            staticcall allPairs[idx].0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(routerAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                mem[mem[64] + 36] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(address(routerAddress))
                call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < allPairs.length
                mem[0] = 1
                require ext_code.size(allPairs[idx])
                staticcall allPairs[idx].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[96]
                mem[128] = address(ext_call.return_data[0])
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[96]
                mem[160] = address(ext_call.return_data[0])
                require 0 < mem[96]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(routerAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= -1:
                    _1136 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    t = 0
                    while t < 32 * mem[96]:
                        mem[t + mem[64] + 196] = mem[t + 128]
                        t = t + 32
                        continue 
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * mem[96]) + _1136 + -mem[64] + 192]
                else:
                    _1116 = mem[64]
                    mem[mem[64] + 36] = address(routerAddress)
                    mem[mem[64] + 68] = -1
                    _1117 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1117 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1117 + 36 len 28]
                    _1120 = mem[_1117]
                    u = _1117 + 32
                    v = mem[64]
                    t = mem[_1117]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1117])] = mem[_1117 + floor32(mem[_1117]) + -(mem[_1117] % 32) + 64 len mem[_1117] % 32] or Mask(8 * -(mem[_1117] % 32) + 32, -(8 * -(mem[_1117] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1117])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1120 + _1116 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not mem[96]:
                            _1747 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1747 + -mem[64] + 192]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeApprove'
                            _1781 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1781 + -mem[64] + 192]
                    else:
                        _1680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1680] = return_data.size
                        mem[_1680 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not return_data.size:
                            _1752 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1752 + -mem[64] + 192]
                        else:
                            require return_data.size >= 32
                            if not mem[_1680 + 32]:
                                revert with 0, '!safeApprove'
                            _1786 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + mem[64] + 196] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1786 + -mem[64] + 192]
            else:
                _914 = mem[64]
                mem[mem[64] + 36] = address(routerAddress)
                mem[mem[64] + 68] = -1
                _915 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_915 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_915 + 36 len 28]
                _918 = mem[_915]
                u = _915 + 32
                v = _914 + 100
                t = mem[_915]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_914 + floor32(mem[_915]) + 100] = mem[_915 + -(mem[_915] % 32) + floor32(mem[_915]) + 64 len mem[_915] % 32] or Mask(8 * -(mem[_915] % 32) + 32, -(8 * -(mem[_915] % 32) + 32) + 256, mem[_914 + floor32(mem[_915]) + 100])
                call allPairs[idx].mem[_914 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_914 + 104 len _918 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not mem[96]:
                        mem[_914 + 104] = address(ext_call.return_data[0])
                        mem[_914 + 136] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        mem[_914 + 168] = 0
                        mem[_914 + 200] = 0
                        mem[_914 + 232] = this.address
                        mem[_914 + 264] = block.timestamp
                        require ext_code.size(address(routerAddress))
                        call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < allPairs.length
                        mem[0] = 1
                        require ext_code.size(allPairs[idx])
                        staticcall allPairs[idx].token0() with:
                                gas gas_remaining wei
                        mem[_914 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[96]
                        mem[128] = ext_call.return_data[12 len 20]
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[_914 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[96]
                        mem[160] = ext_call.return_data[12 len 20]
                        require 0 < mem[96]
                        require ext_code.size(address(ext_call.return_data[12 len 20]))
                        staticcall address(ext_call.return_data[12 len 20]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            mem[_914 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_914 + 104] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_914 + 136] = 0
                            mem[_914 + 200] = this.address
                            mem[_914 + 232] = block.timestamp
                            mem[_914 + 168] = 160
                            mem[_914 + 264] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + _914 + 296] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_914 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_914 + 136] = address(routerAddress)
                            mem[_914 + 168] = -1
                            mem[_914 + 100] = 68
                            mem[64] = _914 + 200
                            mem[_914 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor4)
                            u = _914 + 132
                            v = mem[64]
                            t = mem[_914 + 100]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_914 + 100])] = mem[_914 + floor32(mem[_914 + 100]) + -(mem[_914 + 100] % 32) + 164 len mem[_914 + 100] % 32] or Mask(8 * -(mem[_914 + 100] % 32) + 32, -(8 * -(mem[_914 + 100] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_914 + 100])])
                            call address(ext_call.return_data[12 len 20]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _914 + -mem[64] + 264]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2529 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2529 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2611 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2611 + -mem[64] + 192]
                            else:
                                _2405 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2405] = return_data.size
                                mem[_2405 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2534 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2534 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2405 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2616 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2616 + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, '!safeApprove'
                        mem[_914 + 104] = address(ext_call.return_data[0])
                        mem[_914 + 136] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        mem[_914 + 168] = 0
                        mem[_914 + 200] = 0
                        mem[_914 + 232] = this.address
                        mem[_914 + 264] = block.timestamp
                        require ext_code.size(address(routerAddress))
                        call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < allPairs.length
                        mem[0] = 1
                        require ext_code.size(allPairs[idx])
                        staticcall allPairs[idx].token0() with:
                                gas gas_remaining wei
                        mem[_914 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[96]
                        mem[128] = ext_call.return_data[12 len 20]
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[_914 + 100] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[96]
                        mem[160] = ext_call.return_data[12 len 20]
                        require 0 < mem[96]
                        require ext_code.size(address(ext_call.return_data[12 len 20]))
                        staticcall address(ext_call.return_data[12 len 20]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            mem[_914 + 100] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_914 + 104] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_914 + 136] = 0
                            mem[_914 + 200] = this.address
                            mem[_914 + 232] = block.timestamp
                            mem[_914 + 168] = 160
                            mem[_914 + 264] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + _914 + 296] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_914 + 264 len (32 * mem[96]) + 32]
                        else:
                            mem[_914 + 136] = address(routerAddress)
                            mem[_914 + 168] = -1
                            mem[_914 + 100] = 68
                            mem[64] = _914 + 200
                            mem[_914 + 132] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor4)
                            u = _914 + 132
                            v = mem[64]
                            t = mem[_914 + 100]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_914 + 100])] = mem[_914 + floor32(mem[_914 + 100]) + -(mem[_914 + 100] % 32) + 164 len mem[_914 + 100] % 32] or Mask(8 * -(mem[_914 + 100] % 32) + 32, -(8 * -(mem[_914 + 100] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_914 + 100])])
                            call address(ext_call.return_data[12 len 20]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _914 + -mem[64] + 264]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2539 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2539 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2621 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2621 + -mem[64] + 192]
                            else:
                                _2406 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2406] = return_data.size
                                mem[_2406 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2544 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2544 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2406 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2626 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2626 + -mem[64] + 192]
                else:
                    mem[64] = _914 + ceil32(return_data.size) + 101
                    mem[_914 + 100] = return_data.size
                    mem[_914 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not return_data.size:
                        mem[_914 + ceil32(return_data.size) + 137] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        mem[_914 + ceil32(return_data.size) + 169] = 0
                        mem[_914 + ceil32(return_data.size) + 201] = 0
                        mem[_914 + ceil32(return_data.size) + 233] = this.address
                        mem[_914 + ceil32(return_data.size) + 265] = block.timestamp
                        require ext_code.size(address(routerAddress))
                        call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < allPairs.length
                        mem[0] = 1
                        require ext_code.size(allPairs[idx])
                        staticcall allPairs[idx].token0() with:
                                gas gas_remaining wei
                        mem[_914 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[96]
                        mem[128] = ext_call.return_data[12 len 20]
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[_914 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[96]
                        mem[160] = ext_call.return_data[12 len 20]
                        require 0 < mem[96]
                        require ext_code.size(address(ext_call.return_data[12 len 20]))
                        staticcall address(ext_call.return_data[12 len 20]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            mem[_914 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_914 + ceil32(return_data.size) + 105] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_914 + ceil32(return_data.size) + 137] = 0
                            mem[_914 + ceil32(return_data.size) + 201] = this.address
                            mem[_914 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_914 + ceil32(return_data.size) + 169] = 160
                            mem[_914 + ceil32(return_data.size) + 265] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + _914 + ceil32(return_data.size) + 297] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_914 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                        else:
                            mem[_914 + ceil32(return_data.size) + 137] = address(routerAddress)
                            mem[_914 + ceil32(return_data.size) + 169] = -1
                            mem[_914 + ceil32(return_data.size) + 101] = 68
                            mem[64] = _914 + ceil32(return_data.size) + 201
                            mem[_914 + ceil32(return_data.size) + 133] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor4)
                            u = _914 + ceil32(return_data.size) + 133
                            v = _914 + ceil32(return_data.size) + 201
                            t = 68
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[_914 + ceil32(return_data.size) + 265] = mem[_914 + ceil32(return_data.size) + 225 len 4] or Mask(224, 32, mem[_914 + ceil32(return_data.size) + 265])
                            call address(ext_call.return_data[12 len 20]).mem[_914 + ceil32(return_data.size) + 201 len 4] with:
                                 gas gas_remaining wei
                                args mem[_914 + ceil32(return_data.size) + 205 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not ext_call.return_data[12 len 20]:
                                        revert with 0, '!safeApprove'
                                mem[_914 + ceil32(return_data.size) + 201] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[_914 + ceil32(return_data.size) + 205] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_914 + ceil32(return_data.size) + 237] = 0
                                mem[_914 + ceil32(return_data.size) + 301] = this.address
                                mem[_914 + ceil32(return_data.size) + 333] = block.timestamp
                                mem[_914 + ceil32(return_data.size) + 269] = 160
                                mem[_914 + ceil32(return_data.size) + 365] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[t + _914 + ceil32(return_data.size) + 397] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(routerAddress))
                                call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_914 + ceil32(return_data.size) + 365 len (32 * mem[96]) + 32]
                            else:
                                mem[64] = _914 + (2 * ceil32(return_data.size)) + 202
                                mem[_914 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_914 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                '!safeApprove',
                                                mem[_914 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_914 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    '!safeApprove',
                                                    mem[_914 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                mem[_914 + (2 * ceil32(return_data.size)) + 202] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[_914 + (2 * ceil32(return_data.size)) + 206] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_914 + (2 * ceil32(return_data.size)) + 238] = 0
                                mem[_914 + (2 * ceil32(return_data.size)) + 302] = this.address
                                mem[_914 + (2 * ceil32(return_data.size)) + 334] = block.timestamp
                                mem[_914 + (2 * ceil32(return_data.size)) + 270] = 160
                                mem[_914 + (2 * ceil32(return_data.size)) + 366] = mem[96]
                                t = 0
                                while t < 32 * mem[96]:
                                    mem[t + _914 + (2 * ceil32(return_data.size)) + 398] = mem[t + 128]
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(routerAddress))
                                call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[96], mem[_914 + (2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) + (32 * mem[96]) - (2 * ceil32(return_data.size))]
                    else:
                        require return_data.size >= 32
                        if not mem[_914 + 132]:
                            revert with 0, '!safeApprove'
                        mem[_914 + ceil32(return_data.size) + 137] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        mem[_914 + ceil32(return_data.size) + 169] = 0
                        mem[_914 + ceil32(return_data.size) + 201] = 0
                        mem[_914 + ceil32(return_data.size) + 233] = this.address
                        mem[_914 + ceil32(return_data.size) + 265] = block.timestamp
                        require ext_code.size(address(routerAddress))
                        call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < allPairs.length
                        mem[0] = 1
                        require ext_code.size(allPairs[idx])
                        staticcall allPairs[idx].token0() with:
                                gas gas_remaining wei
                        mem[_914 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require mem[96]
                        mem[128] = ext_call.return_data[12 len 20]
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[_914 + ceil32(return_data.size) + 101] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[96]
                        mem[160] = ext_call.return_data[12 len 20]
                        require 0 < mem[96]
                        require ext_code.size(address(ext_call.return_data[12 len 20]))
                        staticcall address(ext_call.return_data[12 len 20]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            mem[_914 + ceil32(return_data.size) + 101] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_914 + ceil32(return_data.size) + 105] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_914 + ceil32(return_data.size) + 137] = 0
                            mem[_914 + ceil32(return_data.size) + 201] = this.address
                            mem[_914 + ceil32(return_data.size) + 233] = block.timestamp
                            mem[_914 + ceil32(return_data.size) + 169] = 160
                            mem[_914 + ceil32(return_data.size) + 265] = mem[96]
                            t = 0
                            while t < 32 * mem[96]:
                                mem[t + _914 + ceil32(return_data.size) + 297] = mem[t + 128]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_914 + ceil32(return_data.size) + 265 len (32 * mem[96]) + 32]
                        else:
                            mem[_914 + ceil32(return_data.size) + 137] = address(routerAddress)
                            mem[_914 + ceil32(return_data.size) + 169] = -1
                            mem[_914 + ceil32(return_data.size) + 101] = 68
                            mem[64] = _914 + ceil32(return_data.size) + 201
                            mem[_914 + ceil32(return_data.size) + 133] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor4)
                            u = _914 + ceil32(return_data.size) + 133
                            v = mem[64]
                            t = mem[_914 + ceil32(return_data.size) + 101]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_914 + ceil32(return_data.size) + 101])] = mem[_914 + ceil32(return_data.size) + floor32(mem[_914 + ceil32(return_data.size) + 101]) + -(mem[_914 + ceil32(return_data.size) + 101] % 32) + 165 len mem[_914 + ceil32(return_data.size) + 101] % 32] or Mask(8 * -(mem[_914 + ceil32(return_data.size) + 101] % 32) + 32, -(8 * -(mem[_914 + ceil32(return_data.size) + 101] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_914 + ceil32(return_data.size) + 101])])
                            call address(ext_call.return_data[12 len 20]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _914 + ceil32(return_data.size) + -mem[64] + 265]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2559 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2559 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2641 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2641 + -mem[64] + 192]
                            else:
                                _2408 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2408] = return_data.size
                                mem[_2408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2564 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2564 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2408 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2646 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[96]
                                    t = 0
                                    while t < 32 * mem[96]:
                                        mem[t + mem[64] + 196] = mem[t + 128]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2646 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = s + ext_call.return_data[0]
            continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
