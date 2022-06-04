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

function sub_7f808e28(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < 4:
        require idx < pids.length
        mem[mem[64] + 36] = this.address
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pids[idx], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _20 = ext_call.return_data[0]
        require idx < allPairs.length
        mem[0] = 1
        require ext_code.size(stor11)
        call stor11.getResult(address arg1) with:
             gas gas_remaining wei
            args address(allPairs[idx])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _26 = mem[64]
        mem[64] = mem[64] + 32
        mem[_26] = 0
        _27 = mem[64]
        mem[64] = mem[64] + 32
        mem[_27] = Mask(224, 0, ext_call.return_data[0])
        idx = idx + 1
        s = (Mask(32, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]) + s
        continue 
    return (4 * Mask(32, 112, _28) >> 112 * _20)
}

function sub_35315332(?) {
    require calldata.size - 4 >= 192
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
    staticcall arg1.allowance(address arg1, address arg2) with:
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
        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
    mem[64] = 96
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < 4:
            require idx < pids.length
            mem[mem[64] + 36] = this.address
            require ext_code.size(chefAddress)
            staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pids[idx], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _42 = ext_call.return_data[0]
            require idx < allPairs.length
            mem[0] = 1
            require ext_code.size(stor11)
            call stor11.getResult(address arg1) with:
                 gas gas_remaining wei
                args address(allPairs[idx])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _60 = mem[64]
            mem[64] = mem[64] + 32
            mem[_60] = 0
            _65 = mem[64]
            mem[64] = mem[64] + 32
            mem[_65] = Mask(224, 0, ext_call.return_data[0])
            idx = idx + 1
            s = (Mask(32, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]) + s
            continue 
        require ext_code.size(stor10)
        staticcall stor10.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        stor8 = 4 * Mask(32, 112, _68) >> 112 * _42 / ext_call.return_data[0]
        _51 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_51 + 32 len 64] = call.data[calldata.size len 64]
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
            staticcall stor10.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.balanceOf(address arg1) with:
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
            staticcall address(allPairs[idx]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(routerAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                require mem[_51]
                mem[_51 + 32] = address(ext_call.return_data[0])
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[_51]
                mem[_51 + 64] = address(ext_call.return_data[0])
                require 0 < mem[_51]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(routerAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= -1:
                    _1139 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[_51]
                    _1141 = mem[_51]
                    t = 0
                    while t < 32 * _1141:
                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * _1141) + _1139 + -mem[64] + 192]
                else:
                    _1121 = mem[64]
                    mem[mem[64] + 36] = address(routerAddress)
                    mem[mem[64] + 68] = -1
                    _1122 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1122 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1122 + 36 len 28]
                    _1125 = mem[_1122]
                    u = _1122 + 32
                    v = mem[64]
                    t = mem[_1122]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1122])] = mem[_1122 + floor32(mem[_1122]) + -(mem[_1122] % 32) + 64 len mem[_1122] % 32] or Mask(8 * -(mem[_1122] % 32) + 32, -(8 * -(mem[_1122] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1122])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1125 + _1121 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not mem[96]:
                            _1741 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_51]
                            _1743 = mem[_51]
                            t = 0
                            while t < 32 * _1743:
                                mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1743) + _1741 + -mem[64] + 192]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeApprove'
                            _1777 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_51]
                            _1779 = mem[_51]
                            t = 0
                            while t < 32 * _1779:
                                mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1779) + _1777 + -mem[64] + 192]
                    else:
                        _1690 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1690] = return_data.size
                        mem[_1690 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not return_data.size:
                            _1746 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_51]
                            _1748 = mem[_51]
                            t = 0
                            while t < 32 * _1748:
                                mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1748) + _1746 + -mem[64] + 192]
                        else:
                            require return_data.size >= 32
                            if not mem[_1690 + 32]:
                                revert with 0, '!safeApprove'
                            _1782 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_51]
                            _1784 = mem[_51]
                            t = 0
                            while t < 32 * _1784:
                                mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1784) + _1782 + -mem[64] + 192]
            else:
                _921 = mem[64]
                mem[mem[64] + 36] = address(routerAddress)
                mem[mem[64] + 68] = -1
                _922 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_922 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_922 + 36 len 28]
                _925 = mem[_922]
                u = _922 + 32
                v = mem[64]
                t = mem[_922]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_922])] = mem[_922 + floor32(mem[_922]) + -(mem[_922] % 32) + 64 len mem[_922] % 32] or Mask(8 * -(mem[_922] % 32) + 32, -(8 * -(mem[_922] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_922])])
                call address(allPairs[idx]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _925 + _921 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not mem[96]:
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                        require mem[_51]
                        mem[_51 + 32] = address(ext_call.return_data[0])
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_51]
                        mem[_51 + 64] = address(ext_call.return_data[0])
                        require 0 < mem[_51]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            _1977 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_51]
                            _1979 = mem[_51]
                            t = 0
                            while t < 32 * _1979:
                                mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1979) + _1977 + -mem[64] + 192]
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
                                    _2501 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2503 = mem[_51]
                                    t = 0
                                    while t < 32 * _2503:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2503) + _2501 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2583 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2585 = mem[_51]
                                    t = 0
                                    while t < 32 * _2585:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2585) + _2583 + -mem[64] + 192]
                            else:
                                _2413 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2413] = return_data.size
                                mem[_2413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2508 = mem[_51]
                                    t = 0
                                    while t < 32 * _2508:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2508) + 32]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2413 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2588 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2590 = mem[_51]
                                    t = 0
                                    while t < 32 * _2590:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2590) + _2588 + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, '!safeApprove'
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                        require mem[_51]
                        mem[_51 + 32] = address(ext_call.return_data[0])
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_51]
                        mem[_51 + 64] = address(ext_call.return_data[0])
                        require 0 < mem[_51]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                            mem[mem[64] + 164] = mem[_51]
                            _2030 = mem[_51]
                            t = 0
                            while t < 32 * _2030:
                                mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _2030) + _2028 + -mem[64] + 192]
                        else:
                            _1993 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1994 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1994 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1994 + 36 len 28]
                            _1997 = mem[_1994]
                            u = _1994 + 32
                            v = mem[64]
                            t = mem[_1994]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1994])] = mem[_1994 + floor32(mem[_1994]) + -(mem[_1994] % 32) + 64 len mem[_1994] % 32] or Mask(8 * -(mem[_1994] % 32) + 32, -(8 * -(mem[_1994] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1994])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1997 + _1993 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2511 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2513 = mem[_51]
                                    t = 0
                                    while t < 32 * _2513:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2513) + _2511 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2593 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2595 = mem[_51]
                                    t = 0
                                    while t < 32 * _2595:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2595) + _2593 + -mem[64] + 192]
                            else:
                                _2414 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2414] = return_data.size
                                mem[_2414 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2516 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2518 = mem[_51]
                                    t = 0
                                    while t < 32 * _2518:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2518) + _2516 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2414 + 32]:
                                        revert with 0, '!safeApprove'
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2600 = mem[_51]
                                    t = 0
                                    while t < 32 * _2600:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2600) + 32]
                else:
                    _1689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1689] = return_data.size
                    mem[_1689 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not return_data.size:
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                        require mem[_51]
                        mem[_51 + 32] = address(ext_call.return_data[0])
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_51]
                        mem[_51 + 64] = address(ext_call.return_data[0])
                        require 0 < mem[_51]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            _1980 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_51]
                            _1982 = mem[_51]
                            t = 0
                            while t < 32 * _1982:
                                mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1982) + _1980 + -mem[64] + 192]
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
                                    _2521 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2523 = mem[_51]
                                    t = 0
                                    while t < 32 * _2523:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2523) + _2521 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2603 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2605 = mem[_51]
                                    t = 0
                                    while t < 32 * _2605:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2605) + _2603 + -mem[64] + 192]
                            else:
                                _2415 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2415] = return_data.size
                                mem[_2415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2526 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2528 = mem[_51]
                                    t = 0
                                    while t < 32 * _2528:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2528) + _2526 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2415 + 32]:
                                        revert with 0, '!safeApprove'
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2610 = mem[_51]
                                    t = 0
                                    while t < 32 * _2610:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2610) + 32]
                    else:
                        require return_data.size >= 32
                        if not mem[_1689 + 32]:
                            revert with 0, '!safeApprove'
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                        require mem[_51]
                        mem[_51 + 32] = address(ext_call.return_data[0])
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_51]
                        mem[_51 + 64] = address(ext_call.return_data[0])
                        require 0 < mem[_51]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
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
                            mem[mem[64] + 164] = mem[_51]
                            _2036 = mem[_51]
                            t = 0
                            while t < 32 * _2036:
                                mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _2036) + _2034 + -mem[64] + 192]
                        else:
                            _2002 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _2003 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2003 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_2003 + 36 len 28]
                            _2006 = mem[_2003]
                            u = _2003 + 32
                            v = mem[64]
                            t = mem[_2003]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2003])] = mem[_2003 + floor32(mem[_2003]) + -(mem[_2003] % 32) + 64 len mem[_2003] % 32] or Mask(8 * -(mem[_2003] % 32) + 32, -(8 * -(mem[_2003] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2003])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2006 + _2002 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2531 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2533 = mem[_51]
                                    t = 0
                                    while t < 32 * _2533:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2533) + _2531 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2613 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2615 = mem[_51]
                                    t = 0
                                    while t < 32 * _2615:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2615) + _2613 + -mem[64] + 192]
                            else:
                                _2416 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2416] = return_data.size
                                mem[_2416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2536 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2538 = mem[_51]
                                    t = 0
                                    while t < 32 * _2538:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2538) + _2536 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2416 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2618 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_51]
                                    _2620 = mem[_51]
                                    t = 0
                                    while t < 32 * _2620:
                                        mem[t + mem[64] + 196] = mem[t + _51 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2620) + _2618 + -mem[64] + 192]
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
            mem[mem[64] + 36] = this.address
            require ext_code.size(chefAddress)
            staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pids[idx], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _44 = ext_call.return_data[0]
            require idx < allPairs.length
            mem[0] = 1
            require ext_code.size(stor11)
            call stor11.getResult(address arg1) with:
                 gas gas_remaining wei
                args address(allPairs[idx])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _64 = mem[64]
            mem[64] = mem[64] + 32
            mem[_64] = 0
            _66 = mem[64]
            mem[64] = mem[64] + 32
            mem[_66] = Mask(224, 0, ext_call.return_data[0])
            idx = idx + 1
            s = (Mask(32, 112, ext_call.return_data[0]) >> 112 * ext_call.return_data[0]) + s
            continue 
        require ext_code.size(stor10)
        staticcall stor10.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        stor8 = 4 * Mask(32, 112, _70) >> 112 * _44 / ext_call.return_data[0]
        _52 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_52 + 32 len 64] = call.data[calldata.size len 64]
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
            staticcall stor10.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.balanceOf(address arg1) with:
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
            staticcall address(allPairs[idx]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(routerAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                require mem[_52]
                mem[_52 + 32] = address(ext_call.return_data[0])
                require ext_code.size(address(routerAddress))
                staticcall address(routerAddress).WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[_52]
                mem[_52 + 64] = address(ext_call.return_data[0])
                require 0 < mem[_52]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(routerAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= -1:
                    _1148 = mem[64]
                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[_52]
                    _1150 = mem[_52]
                    t = 0
                    while t < 32 * _1150:
                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * _1150) + _1148 + -mem[64] + 192]
                else:
                    _1128 = mem[64]
                    mem[mem[64] + 36] = address(routerAddress)
                    mem[mem[64] + 68] = -1
                    _1129 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1129 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1129 + 36 len 28]
                    _1132 = mem[_1129]
                    u = _1129 + 32
                    v = mem[64]
                    t = mem[_1129]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1129])] = mem[_1129 + floor32(mem[_1129]) + -(mem[_1129] % 32) + 64 len mem[_1129] % 32] or Mask(8 * -(mem[_1129] % 32) + 32, -(8 * -(mem[_1129] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1129])])
                    call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1132 + _1128 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not mem[96]:
                            _1759 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_52]
                            _1761 = mem[_52]
                            t = 0
                            while t < 32 * _1761:
                                mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1761) + _1759 + -mem[64] + 192]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, '!safeApprove'
                            _1793 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_52]
                            _1795 = mem[_52]
                            t = 0
                            while t < 32 * _1795:
                                mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1795) + _1793 + -mem[64] + 192]
                    else:
                        _1692 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1692] = return_data.size
                        mem[_1692 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not return_data.size:
                            _1764 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_52]
                            _1766 = mem[_52]
                            t = 0
                            while t < 32 * _1766:
                                mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1766) + _1764 + -mem[64] + 192]
                        else:
                            require return_data.size >= 32
                            if not mem[_1692 + 32]:
                                revert with 0, '!safeApprove'
                            _1798 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_52]
                            _1800 = mem[_52]
                            t = 0
                            while t < 32 * _1800:
                                mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1800) + _1798 + -mem[64] + 192]
            else:
                _926 = mem[64]
                mem[mem[64] + 36] = address(routerAddress)
                mem[mem[64] + 68] = -1
                _927 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_927 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_927 + 36 len 28]
                _930 = mem[_927]
                u = _927 + 32
                v = mem[64]
                t = mem[_927]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_927])] = mem[_927 + floor32(mem[_927]) + -(mem[_927] % 32) + 64 len mem[_927] % 32] or Mask(8 * -(mem[_927] % 32) + 32, -(8 * -(mem[_927] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_927])])
                call address(allPairs[idx]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _930 + _926 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not mem[96]:
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                        require mem[_52]
                        mem[_52 + 32] = address(ext_call.return_data[0])
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_52]
                        mem[_52 + 64] = address(ext_call.return_data[0])
                        require 0 < mem[_52]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            _1983 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_52]
                            _1985 = mem[_52]
                            t = 0
                            while t < 32 * _1985:
                                mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1985) + _1983 + -mem[64] + 192]
                        else:
                            _1965 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1966 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1966 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1966 + 36 len 28]
                            _1969 = mem[_1966]
                            u = _1966 + 32
                            v = mem[64]
                            t = mem[_1966]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1966])] = mem[_1966 + floor32(mem[_1966]) + -(mem[_1966] % 32) + 64 len mem[_1966] % 32] or Mask(8 * -(mem[_1966] % 32) + 32, -(8 * -(mem[_1966] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1966])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1969 + _1965 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2541 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2543 = mem[_52]
                                    t = 0
                                    while t < 32 * _2543:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2543) + _2541 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2623 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2625 = mem[_52]
                                    t = 0
                                    while t < 32 * _2625:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2625) + _2623 + -mem[64] + 192]
                            else:
                                _2417 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2417] = return_data.size
                                mem[_2417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2546 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2548 = mem[_52]
                                    t = 0
                                    while t < 32 * _2548:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2548) + _2546 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2417 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2628 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2630 = mem[_52]
                                    t = 0
                                    while t < 32 * _2630:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2630) + _2628 + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, '!safeApprove'
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                        require mem[_52]
                        mem[_52 + 32] = address(ext_call.return_data[0])
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_52]
                        mem[_52 + 64] = address(ext_call.return_data[0])
                        require 0 < mem[_52]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            _2040 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_52]
                            _2042 = mem[_52]
                            t = 0
                            while t < 32 * _2042:
                                mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _2042) + _2040 + -mem[64] + 192]
                        else:
                            _2011 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _2012 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2012 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_2012 + 36 len 28]
                            _2015 = mem[_2012]
                            u = _2012 + 32
                            v = mem[64]
                            t = mem[_2012]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2012])] = mem[_2012 + floor32(mem[_2012]) + -(mem[_2012] % 32) + 64 len mem[_2012] % 32] or Mask(8 * -(mem[_2012] % 32) + 32, -(8 * -(mem[_2012] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2012])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2015 + _2011 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2551 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2553 = mem[_52]
                                    t = 0
                                    while t < 32 * _2553:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2553) + _2551 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2633 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2635 = mem[_52]
                                    t = 0
                                    while t < 32 * _2635:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2635) + _2633 + -mem[64] + 192]
                            else:
                                _2418 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2418] = return_data.size
                                mem[_2418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2556 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2558 = mem[_52]
                                    t = 0
                                    while t < 32 * _2558:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2558) + _2556 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2418 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2638 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2640 = mem[_52]
                                    t = 0
                                    while t < 32 * _2640:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2640) + _2638 + -mem[64] + 192]
                else:
                    _1691 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1691] = return_data.size
                    mem[_1691 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not return_data.size:
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                        require mem[_52]
                        mem[_52 + 32] = address(ext_call.return_data[0])
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_52]
                        mem[_52 + 64] = address(ext_call.return_data[0])
                        require 0 < mem[_52]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            _1986 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_52]
                            _1988 = mem[_52]
                            t = 0
                            while t < 32 * _1988:
                                mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _1988) + _1986 + -mem[64] + 192]
                        else:
                            _1971 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _1972 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1972 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1972 + 36 len 28]
                            _1975 = mem[_1972]
                            u = _1972 + 32
                            v = mem[64]
                            t = mem[_1972]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1972])] = mem[_1972 + floor32(mem[_1972]) + -(mem[_1972] % 32) + 64 len mem[_1972] % 32] or Mask(8 * -(mem[_1972] % 32) + 32, -(8 * -(mem[_1972] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1972])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1975 + _1971 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2561 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2563 = mem[_52]
                                    t = 0
                                    while t < 32 * _2563:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2563) + _2561 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2643 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2645 = mem[_52]
                                    t = 0
                                    while t < 32 * _2645:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2645) + _2643 + -mem[64] + 192]
                            else:
                                _2419 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2419] = return_data.size
                                mem[_2419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2566 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2568 = mem[_52]
                                    t = 0
                                    while t < 32 * _2568:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2568) + _2566 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2419 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2648 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2650 = mem[_52]
                                    t = 0
                                    while t < 32 * _2650:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2650) + _2648 + -mem[64] + 192]
                    else:
                        require return_data.size >= 32
                        if not mem[_1691 + 32]:
                            revert with 0, '!safeApprove'
                        mem[mem[64] + 4] = address(ext_call.return_data[0])
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
                        require mem[_52]
                        mem[_52 + 32] = address(ext_call.return_data[0])
                        require ext_code.size(address(routerAddress))
                        staticcall address(routerAddress).WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 1 < mem[_52]
                        mem[_52 + 64] = address(ext_call.return_data[0])
                        require 0 < mem[_52]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(routerAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= -1:
                            _2046 = mem[64]
                            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[_52]
                            _2048 = mem[_52]
                            t = 0
                            while t < 32 * _2048:
                                mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(routerAddress))
                            call address(routerAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * _2048) + _2046 + -mem[64] + 192]
                        else:
                            _2020 = mem[64]
                            mem[mem[64] + 36] = address(routerAddress)
                            mem[mem[64] + 68] = -1
                            _2021 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_2021 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_2021 + 36 len 28]
                            _2024 = mem[_2021]
                            u = _2021 + 32
                            v = mem[64]
                            t = mem[_2021]
                            while t >= 32:
                                mem[v] = mem[u]
                                u = u + 32
                                v = v + 32
                                t = t - 32
                                continue 
                            mem[mem[64] + floor32(mem[_2021])] = mem[_2021 + floor32(mem[_2021]) + -(mem[_2021] % 32) + 64 len mem[_2021] % 32] or Mask(8 * -(mem[_2021] % 32) + 32, -(8 * -(mem[_2021] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2021])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2024 + _2020 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not mem[96]:
                                    _2571 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2573 = mem[_52]
                                    t = 0
                                    while t < 32 * _2573:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2573) + _2571 + -mem[64] + 192]
                                else:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, '!safeApprove'
                                    _2653 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2655 = mem[_52]
                                    t = 0
                                    while t < 32 * _2655:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2655) + _2653 + -mem[64] + 192]
                            else:
                                _2420 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2420] = return_data.size
                                mem[_2420 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, '!safeApprove'
                                if not return_data.size:
                                    _2576 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2578 = mem[_52]
                                    t = 0
                                    while t < 32 * _2578:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2578) + _2576 + -mem[64] + 192]
                                else:
                                    require return_data.size >= 32
                                    if not mem[_2420 + 32]:
                                        revert with 0, '!safeApprove'
                                    _2658 = mem[64]
                                    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = mem[_52]
                                    _2660 = mem[_52]
                                    t = 0
                                    while t < 32 * _2660:
                                        mem[t + mem[64] + 196] = mem[t + _52 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(routerAddress))
                                    call address(routerAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (32 * _2660) + _2658 + -mem[64] + 192]
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
