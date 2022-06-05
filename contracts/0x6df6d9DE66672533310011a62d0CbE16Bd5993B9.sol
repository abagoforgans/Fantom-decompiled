contract main {




// =====================  Runtime code  =====================


#
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
uint8 stor12;
uint256 stor12; offset 2
uint256 sub_85aba000;

function sub_1b5f7267(?) {
    require calldata.size - 4 >= 32
    return sub_1b5f7267[arg1]
}

function allPairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return address(allPairs[arg1])
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

function updateInfo() {
    if owner != msg.sender:
        require this.address == msg.sender
    allPairs.length = 0
    idx = 0
    while allPairs.length > idx:
        uint256(allPairs[idx]) = 0
        idx = idx + 1
        continue 
    pids.length = 0
    idx = 0
    while pids.length > idx:
        pids[idx] = 0
        idx = idx + 1
        continue 
    allPairs.length++
    address(allPairs[allPairs.length]) = 0xd14dd3c56d9bc306322d4cea0e1c49e9ddf045d4
    allPairs.length++
    address(allPairs[allPairs.length]) = 0xb32b31dfafbd53e310390f641c7119b5b9ea0488
    allPairs.length++
    address(allPairs[allPairs.length]) = 0xe7e90f5a767406eff87fdad7eb07ef407922ec1d
    allPairs.length++
    address(allPairs[allPairs.length]) = 0x74fe5ddc4c27f91a1898ccd5ac62dfeb2d3df726
    pids.length++
    pids[pids.length] = 17
    pids.length++
    pids[pids.length] = 30
    pids.length++
    pids[pids.length] = 4
    pids.length++
    pids[pids.length] = 21
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
        _17 = ext_call.return_data[0]
        require idx < allPairs.length
        mem[0] = 1
        require ext_code.size(stor11)
        call stor11.getResult(address arg1) with:
             gas gas_remaining wei
            args address(allPairs[idx])
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        idx = idx + 1
        s = (Mask(112, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]) + s
        continue 
    stor12.field_0 % 4 = 0
    Mask(254, 0, stor12.field_2) = Mask(254, 0, Mask(112, 112, _22) >> 112 * _17)
    return (4 * Mask(112, 112, _22) >> 112 * _17)
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
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
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
                mem[296 len 64] = 0, address(routerAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call address(ext_call.return_data[0]) with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args -1, Mask(224, 32, 0, address(routerAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[360 len 4]
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
                mem[ceil32(return_data.size) + 297 len 64] = 0, address(routerAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call address(ext_call.return_data[0]) with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args -1, Mask(224, 32, 0, address(routerAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[ceil32(return_data.size) + 361 len 4]
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
            _36 = ext_call.return_data[0]
            require idx < allPairs.length
            mem[0] = 1
            require ext_code.size(stor11)
            call stor11.getResult(address arg1) with:
                 gas gas_remaining wei
                args address(allPairs[idx])
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            idx = idx + 1
            s = (Mask(112, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]) + s
            continue 
        stor12.field_0 % 4 = 0
        Mask(254, 0, stor12.field_2) = Mask(254, 0, Mask(112, 112, _49) >> 112 * _36)
        require ext_code.size(stor10)
        staticcall stor10.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        stor8 = 4 * Mask(112, 112, _49) >> 112 * _36 / ext_call.return_data[0]
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
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < allPairs.length
            mem[0] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).0xdd62ed3e with:
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
                require ext_code.size(address(allPairs[idx]))
                staticcall address(allPairs[idx]).token0() with:
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
                v = mem[64]
                t = mem[_910]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_910])] = mem[_910 + floor32(mem[_910]) + -(mem[_910] % 32) + 64 len mem[_910] % 32] or Mask(8 * -(mem[_910] % 32) + 32, -(8 * -(mem[_910] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_910])])
                call address(allPairs[idx]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _913 + _909 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not mem[96]:
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
                        require ext_code.size(address(allPairs[idx]))
                        staticcall address(allPairs[idx]).token0() with:
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
                            _1965 = mem[64]
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
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1965 + -mem[64] + 192]
                        else:
                            _1941 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1942 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1942 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1942 + 36 len 28]
                            _1945 = mem[_1942]
                            u = _1942 + 32
                            v = mem[64]
                            t = mem[_1942]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1942])] = mem[_1942 + floor32(mem[_1942]) + -(mem[_1942] % 32) + 64 len mem[_1942] % 32] or Mask(8 * -(mem[_1942] % 32) + 32, -(8 * -(mem[_1942] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1942])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1945 + _1941 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2489 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2489 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2571 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2571 + -mem[64] + 192]
                            else:
                                _2401 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2401] = return_data.size
                                mem[_2401 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2494 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2494 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2401 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2576 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2576 + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, '!safeApprove'
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
                        require ext_code.size(address(allPairs[idx]))
                        staticcall address(allPairs[idx]).token0() with:
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
                            _2016 = mem[64]
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
                                args mem[mem[64] + 4 len (32 * mem[96]) + _2016 + -mem[64] + 192]
                        else:
                            _1981 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1982 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1982 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1982 + 36 len 28]
                            _1985 = mem[_1982]
                            u = _1982 + 32
                            v = mem[64]
                            t = mem[_1982]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1982])] = mem[_1982 + floor32(mem[_1982]) + -(mem[_1982] % 32) + 64 len mem[_1982] % 32] or Mask(8 * -(mem[_1982] % 32) + 32, -(8 * -(mem[_1982] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1982])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1985 + _1981 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2499 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2499 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2581 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2581 + -mem[64] + 192]
                            else:
                                _2402 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2402] = return_data.size
                                mem[_2402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2504 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2504 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2402 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2586 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2586 + -mem[64] + 192]
                else:
                    _1677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1677] = return_data.size
                    mem[_1677 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not return_data.size:
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
                        require ext_code.size(address(allPairs[idx]))
                        staticcall address(allPairs[idx]).token0() with:
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
                            _1968 = mem[64]
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
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1968 + -mem[64] + 192]
                        else:
                            _1947 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1948 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1948 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1948 + 36 len 28]
                            _1951 = mem[_1948]
                            u = _1948 + 32
                            v = mem[64]
                            t = mem[_1948]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1948])] = mem[_1948 + floor32(mem[_1948]) + -(mem[_1948] % 32) + 64 len mem[_1948] % 32] or Mask(8 * -(mem[_1948] % 32) + 32, -(8 * -(mem[_1948] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1948])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1951 + _1947 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2509 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2509 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2591 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2591 + -mem[64] + 192]
                            else:
                                _2403 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2403] = return_data.size
                                mem[_2403 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2514 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2514 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2403 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2596 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2596 + -mem[64] + 192]
                    else:
                        require return_data.size >= 32
                        if not mem[_1677 + 32]:
                            revert with 0, '!safeApprove'
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
                        require ext_code.size(address(allPairs[idx]))
                        staticcall address(allPairs[idx]).token0() with:
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
                            _2022 = mem[64]
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
                                args mem[mem[64] + 4 len (32 * mem[96]) + _2022 + -mem[64] + 192]
                        else:
                            _1990 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1991 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1991 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1991 + 36 len 28]
                            _1994 = mem[_1991]
                            u = _1991 + 32
                            v = mem[64]
                            t = mem[_1991]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1991])] = mem[_1991 + floor32(mem[_1991]) + -(mem[_1991] % 32) + 64 len mem[_1991] % 32] or Mask(8 * -(mem[_1991] % 32) + 32, -(8 * -(mem[_1991] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1991])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1994 + _1990 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2519 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2519 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2601 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2601 + -mem[64] + 192]
                            else:
                                _2404 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2404] = return_data.size
                                mem[_2404 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2524 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2524 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2404 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2606 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2606 + -mem[64] + 192]
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
            _38 = ext_call.return_data[0]
            require idx < allPairs.length
            mem[0] = 1
            require ext_code.size(stor11)
            call stor11.getResult(address arg1) with:
                 gas gas_remaining wei
                args address(allPairs[idx])
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            idx = idx + 1
            s = (Mask(112, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]) + s
            continue 
        stor12.field_0 % 4 = 0
        Mask(254, 0, stor12.field_2) = Mask(254, 0, Mask(112, 112, _50) >> 112 * _38)
        require ext_code.size(stor10)
        staticcall stor10.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        stor8 = 4 * Mask(112, 112, _50) >> 112 * _38 / ext_call.return_data[0]
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
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < allPairs.length
            mem[0] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(allPairs[idx]))
            staticcall address(allPairs[idx]).0xdd62ed3e with:
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
                require ext_code.size(address(allPairs[idx]))
                staticcall address(allPairs[idx]).token0() with:
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
                v = mem[64]
                t = mem[_915]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_915])] = mem[_915 + floor32(mem[_915]) + -(mem[_915] % 32) + 64 len mem[_915] % 32] or Mask(8 * -(mem[_915] % 32) + 32, -(8 * -(mem[_915] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_915])])
                call address(allPairs[idx]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _918 + _914 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not mem[96]:
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
                        require ext_code.size(address(allPairs[idx]))
                        staticcall address(allPairs[idx]).token0() with:
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
                            _1971 = mem[64]
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
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1971 + -mem[64] + 192]
                        else:
                            _1953 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1954 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1954 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1954 + 36 len 28]
                            _1957 = mem[_1954]
                            u = _1954 + 32
                            v = mem[64]
                            t = mem[_1954]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1954])] = mem[_1954 + floor32(mem[_1954]) + -(mem[_1954] % 32) + 64 len mem[_1954] % 32] or Mask(8 * -(mem[_1954] % 32) + 32, -(8 * -(mem[_1954] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1954])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1957 + _1953 + -mem[64] + 96]
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
                        require ext_code.size(address(allPairs[idx]))
                        staticcall address(allPairs[idx]).token0() with:
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
                            _2028 = mem[64]
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
                                args mem[mem[64] + 4 len (32 * mem[96]) + _2028 + -mem[64] + 192]
                        else:
                            _1999 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _2000 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2000 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_2000 + 36 len 28]
                            _2003 = mem[_2000]
                            u = _2000 + 32
                            v = mem[64]
                            t = mem[_2000]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2000])] = mem[_2000 + floor32(mem[_2000]) + -(mem[_2000] % 32) + 64 len mem[_2000] % 32] or Mask(8 * -(mem[_2000] % 32) + 32, -(8 * -(mem[_2000] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2000])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2003 + _1999 + -mem[64] + 96]
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
                    _1679 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1679] = return_data.size
                    mem[_1679 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not return_data.size:
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
                        require ext_code.size(address(allPairs[idx]))
                        staticcall address(allPairs[idx]).token0() with:
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
                            _1974 = mem[64]
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
                                args mem[mem[64] + 4 len (32 * mem[96]) + _1974 + -mem[64] + 192]
                        else:
                            _1959 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1960 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1960 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1960 + 36 len 28]
                            _1963 = mem[_1960]
                            u = _1960 + 32
                            v = mem[64]
                            t = mem[_1960]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1960])] = mem[_1960 + floor32(mem[_1960]) + -(mem[_1960] % 32) + 64 len mem[_1960] % 32] or Mask(8 * -(mem[_1960] % 32) + 32, -(8 * -(mem[_1960] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1960])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1963 + _1959 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2549 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2549 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2631 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2631 + -mem[64] + 192]
                            else:
                                _2407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2407] = return_data.size
                                mem[_2407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2554 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2554 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2407 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2636 = mem[64]
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
                                        args mem[mem[64] + 4 len (32 * mem[96]) + _2636 + -mem[64] + 192]
                    else:
                        require return_data.size >= 32
                        if not mem[_1679 + 32]:
                            revert with 0, '!safeApprove'
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
                        require ext_code.size(address(allPairs[idx]))
                        staticcall address(allPairs[idx]).token0() with:
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
                            _2034 = mem[64]
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
                                args mem[mem[64] + 4 len (32 * mem[96]) + _2034 + -mem[64] + 192]
                        else:
                            _2008 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _2009 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2009 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_2009 + 36 len 28]
                            _2012 = mem[_2009]
                            u = _2009 + 32
                            v = mem[64]
                            t = mem[_2009]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2009])] = mem[_2009 + floor32(mem[_2009]) + -(mem[_2009] % 32) + 64 len mem[_2009] % 32] or Mask(8 * -(mem[_2009] % 32) + 32, -(8 * -(mem[_2009] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2009])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2012 + _2008 + -mem[64] + 96]
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
