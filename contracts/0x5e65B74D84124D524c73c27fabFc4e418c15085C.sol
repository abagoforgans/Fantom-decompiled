contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
address owner;
uint32 stor2;
address routerAddress;
uint256 stor2;
address sub_69e92367Address;
uint32 stor5; offset 224
uint256 stor5; offset 3
uint256 sub_82654169;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_69e92367(?) {
    return sub_69e92367Address
}

function sub_82654169(?) {
    return sub_82654169
}

function owner() {
    return owner
}

function mason() {
    return address(masonAddress)
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
       value 10^18 * eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require eth.balance(this.address) >= 10^18 * arg1
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[msg.sender] += -1 * 10^18 * arg1
}

function sub_42d7eb9e(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require ext_code.size(address(routerAddress))
    call address(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    require ext_code.size(address(routerAddress))
    call address(routerAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4, arg5, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_0320c213(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require msg.sender == owner
    require ext_code.size(address(routerAddress))
    call address(routerAddress).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, arg1, 128, this.address, block.timestamp, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_41f50925(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call arg2 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor3):
            revert with 0, '!safeApprove'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeApprove'
    require ext_code.size(address(masonAddress))
    call address(masonAddress).stake(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8f7e0e97(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require 0 < mem[96]
    require ext_code.size(address(routerAddress))
    staticcall address(routerAddress).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < ext_call.return_data[0]
    mem[292 len 0x235928e000000000000000000000000000000000000000000000000000000000] = arg1, arg2, 160, this.address, block.timestamp, 0x791ac94700000000000000000000000000000000000000000000000000000000, mem[292 len 0x235928dfffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
    require ext_code.size(address(routerAddress))
    call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, uint32(arg2), 160, this.address, block.timestamp, 0x791ac94700000000000000000000000000000000000000000000000000000000, mem[292 len 0x235928e000000000000000000000000000000000000000000000000000000000]
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
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor2)
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

function addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        require ext_code.size(address(routerAddress))
        call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, 0, arg2, arg3, arg4, this.address, block.timestamp
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
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
             gas gas_remaining wei
            args address(arg1), arg2, arg3, arg4, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[64]
}

function sub_66aa649d(?) {
    require msg.sender == owner
    require ext_code.size(address(masonAddress))
    staticcall address(masonAddress).earned(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(masonAddress))
    call address(masonAddress).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6c021ae822bea943b2e66552bde1d2696a53fbb7)
    staticcall 0x6c021ae822bea943b2e66552bde1d2696a53fbb7.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= -1:
        require msg.sender == owner
        require 0 < ext_call.return_data[0]
        require ext_code.size(address(routerAddress))
        staticcall address(routerAddress).WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < ext_call.return_data[0]
        mem[292 len 0x235928e000000000000000000000000000000000000000000000000000000000] = Mask(31, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, 0x791ac94700000000000000000000000000000000000000000000000000000000, mem[292 len 0x235928dfffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, 0, 160, this.address, block.timestamp, 0x791ac94700000000000000000000000000000000000000000000000000000000, mem[292 len 0x235928e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender == owner
        require ext_code.size(0x6c021ae822bea943b2e66552bde1d2696a53fbb7)
        staticcall 0x6c021ae822bea943b2e66552bde1d2696a53fbb7.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(routerAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0] / 2:
            require ext_code.size(address(routerAddress))
            call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args 0, 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(31, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
               funct uint32(stor5.field_224)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, Mask(32, 224, block.timestamp) >> 224
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor3):
                    revert with 0, '!safeApprove'
                require ext_code.size(sub_69e92367Address)
                call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender == owner
                mem[296 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[360 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor3):
                        revert with 0, '!safeApprove'
                else:
                    mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[328]:
                            revert with 0, '!safeApprove'
                require ext_code.size(address(masonAddress))
                call address(masonAddress).stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_82654169
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, '!safeApprove'
                require ext_code.size(sub_69e92367Address)
                call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender == owner
                mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 389 len 4] = test266151307()
                call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 361 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor3):
                        revert with 0, '!safeApprove'
                    require ext_code.size(address(masonAddress))
                    call address(masonAddress).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_82654169
                else:
                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    '!safeApprove',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 329]:
                            revert with 0, 
                                        '!safeApprove',
                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(address(masonAddress))
                    call address(masonAddress).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_82654169, mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
               funct Mask(32, 224, this.address) >> 224
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, 0
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                    revert with 0, '!safeApprove'
                require ext_code.size(address(routerAddress))
                call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(255, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[296 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                   funct uint32(stor5.field_224)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, Mask(32, 224, block.timestamp) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                        revert with 0, '!safeApprove'
                    require ext_code.size(sub_69e92367Address)
                    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender == owner
                    mem[396 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[460 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, '!safeApprove'
                    else:
                        mem[428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[428]:
                                revert with 0, '!safeApprove'
                    require ext_code.size(address(masonAddress))
                    call address(masonAddress).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_82654169
                else:
                    mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[328]:
                            revert with 0, '!safeApprove'
                    require ext_code.size(sub_69e92367Address)
                    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender == owner
                    mem[ceil32(return_data.size) + 397 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 489 len 4] = test266151307()
                    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 461 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, '!safeApprove'
                        require ext_code.size(address(masonAddress))
                        call address(masonAddress).stake(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_82654169
                    else:
                        mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        '!safeApprove',
                                        mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 429]:
                                revert with 0, 
                                            '!safeApprove',
                                            mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(address(masonAddress))
                        call address(masonAddress).stake(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_82654169, mem[(2 * ceil32(return_data.size)) + 434 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, '!safeApprove'
                mem[ceil32(return_data.size) + 361] = block.timestamp
                require ext_code.size(address(routerAddress))
                call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(255, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 389 len 4] = test266151307()
                call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                   funct uint32(stor5.field_224)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, Mask(32, 224, block.timestamp) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                        revert with 0, '!safeApprove'
                    require ext_code.size(sub_69e92367Address)
                    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender == owner
                    mem[ceil32(return_data.size) + 397 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 489 len 4] = test266151307()
                    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 461 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, '!safeApprove'
                        require ext_code.size(address(masonAddress))
                        call address(masonAddress).stake(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_82654169
                    else:
                        mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        '!safeApprove',
                                        mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 429]:
                                revert with 0, 
                                            '!safeApprove',
                                            mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(address(masonAddress))
                        call address(masonAddress).stake(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_82654169, mem[(2 * ceil32(return_data.size)) + 434 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    '!safeApprove',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 329]:
                            revert with 0, 
                                        '!safeApprove',
                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(sub_69e92367Address)
                    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[64], mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender == owner
                    mem[(2 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor3), mem[(2 * ceil32(return_data.size)) + 366 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 398 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
                            revert with 0, '!safeApprove'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 430 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 430]:
                                revert with 0, '!safeApprove'
                    require ext_code.size(address(masonAddress))
                    call address(masonAddress).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_82654169
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2):
            revert with 0, '!safeApprove'
        require msg.sender == owner
        require ext_code.size(address(routerAddress))
        staticcall address(routerAddress).WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, 68, 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, ext_call.return_data[12 len 20] >> 256, mem[456 len 2112]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender == owner
        require ext_code.size(0x6c021ae822bea943b2e66552bde1d2696a53fbb7)
        staticcall 0x6c021ae822bea943b2e66552bde1d2696a53fbb7.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(routerAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0] / 2:
            require ext_code.size(address(routerAddress))
            call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(255, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[296 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
               funct uint32(stor5.field_224)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, Mask(32, 224, block.timestamp) >> 224
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                require ext_code.size(sub_69e92367Address)
                call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender == owner
                mem[396 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7.0xbde1d269 with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[460 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                else:
                    mem[428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[428]:
                            revert with 0, '!safeApprove'
                require ext_code.size(address(masonAddress))
                call address(masonAddress).stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_82654169
            else:
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, '!safeApprove'
                require ext_code.size(sub_69e92367Address)
                call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require msg.sender == owner
                mem[ceil32(return_data.size) + 397 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 489 len 4] = test266151307()
                call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 461 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    require ext_code.size(address(masonAddress))
                    call address(masonAddress).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_82654169
                else:
                    mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    '!safeApprove',
                                    mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 429]:
                            revert with 0, 
                                        '!safeApprove',
                                        mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(address(masonAddress))
                    call address(masonAddress).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_82654169, mem[(2 * ceil32(return_data.size)) + 434 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[296 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
               funct Mask(32, 224, this.address) >> 224
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, 0
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                require ext_code.size(address(routerAddress))
                call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(255, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[396 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                   funct uint32(stor5.field_224)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, Mask(32, 224, block.timestamp) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    require ext_code.size(sub_69e92367Address)
                    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender == owner
                    mem[496 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[560 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                    else:
                        mem[528 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[528]:
                                revert with 0, '!safeApprove'
                    require ext_code.size(address(masonAddress))
                    call address(masonAddress).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_82654169
                else:
                    mem[428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[428]:
                            revert with 0, '!safeApprove'
                    require ext_code.size(sub_69e92367Address)
                    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender == owner
                    mem[ceil32(return_data.size) + 497 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 589 len 4] = test266151307()
                    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 561 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        require ext_code.size(address(masonAddress))
                        call address(masonAddress).stake(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_82654169
                    else:
                        mem[ceil32(return_data.size) + 529 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        '!safeApprove',
                                        mem[(2 * ceil32(return_data.size)) + 598 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 529]:
                                revert with 0, 
                                            '!safeApprove',
                                            mem[(2 * ceil32(return_data.size)) + 598 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(address(masonAddress))
                        call address(masonAddress).stake(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_82654169, mem[(2 * ceil32(return_data.size)) + 534 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, '!safeApprove'
                mem[ceil32(return_data.size) + 461] = block.timestamp
                require ext_code.size(address(routerAddress))
                call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(255, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[ceil32(return_data.size) + 397 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 489 len 4] = test266151307()
                call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                   funct uint32(stor5.field_224)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, Mask(32, 224, block.timestamp) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    require ext_code.size(sub_69e92367Address)
                    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender == owner
                    mem[ceil32(return_data.size) + 497 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 589 len 4] = test266151307()
                    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 561 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        require ext_code.size(address(masonAddress))
                        call address(masonAddress).stake(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_82654169
                    else:
                        mem[ceil32(return_data.size) + 529 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        '!safeApprove',
                                        mem[(2 * ceil32(return_data.size)) + 598 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 529]:
                                revert with 0, 
                                            '!safeApprove',
                                            mem[(2 * ceil32(return_data.size)) + 598 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_code.size(address(masonAddress))
                        call address(masonAddress).stake(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_82654169, mem[(2 * ceil32(return_data.size)) + 534 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    '!safeApprove',
                                    mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 429]:
                            revert with 0, 
                                        '!safeApprove',
                                        mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(sub_69e92367Address)
                    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[64], mem[(2 * ceil32(return_data.size)) + 466 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require msg.sender == owner
                    mem[(2 * ceil32(return_data.size)) + 498 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
                       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor3), mem[(2 * ceil32(return_data.size)) + 466 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 498 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 530 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, '!safeApprove'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 530]:
                                revert with 0, '!safeApprove'
                    require ext_code.size(address(masonAddress))
                    call address(masonAddress).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_82654169
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!safeApprove'
    if return_data.size:
        require return_data.size >= 32
        if not mem[228]:
            revert with 0, '!safeApprove'
    require msg.sender == owner
    require ext_code.size(address(routerAddress))
    staticcall address(routerAddress).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 393 len 64] = 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, ext_call.return_data[12 len 20]
    require ext_code.size(address(routerAddress))
    call address(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, this.address, block.timestamp, 68, 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, ext_call.return_data[12 len 20] >> 256, mem[ceil32(return_data.size) + 457 len 2112]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require ext_code.size(0x6c021ae822bea943b2e66552bde1d2696a53fbb7)
    staticcall 0x6c021ae822bea943b2e66552bde1d2696a53fbb7.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(routerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0] / 2:
        mem[ceil32(return_data.size) + 361] = block.timestamp
        require ext_code.size(address(routerAddress))
        call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(255, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 389 len 4] = test266151307()
        call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
           funct uint32(stor5.field_224)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, Mask(32, 224, block.timestamp) >> 224
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            require ext_code.size(sub_69e92367Address)
            call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.sender == owner
            mem[ceil32(return_data.size) + 397 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 489 len 4] = test266151307()
            call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7.0xbde1d269 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 461 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                require ext_code.size(address(masonAddress))
                call address(masonAddress).stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_82654169
            else:
                mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                '!safeApprove',
                                mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 429]:
                        revert with 0, 
                                    '!safeApprove',
                                    mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(address(masonAddress))
                call address(masonAddress).stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_82654169, mem[(2 * ceil32(return_data.size)) + 434 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            '!safeApprove',
                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 329]:
                    revert with 0, 
                                '!safeApprove',
                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(sub_69e92367Address)
            call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[64], mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.sender == owner
            mem[(2 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
            call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
               funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor3), mem[(2 * ceil32(return_data.size)) + 366 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 398 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
            else:
                mem[(2 * ceil32(return_data.size)) + 430 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 430]:
                        revert with 0, '!safeApprove'
            require ext_code.size(address(masonAddress))
            call address(masonAddress).stake(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_82654169
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 297 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
       funct Mask(32, 224, this.address) >> 224
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, 0
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 461] = block.timestamp
        require ext_code.size(address(routerAddress))
        call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(255, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[ceil32(return_data.size) + 397 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 489 len 4] = test266151307()
        call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
           funct uint32(stor5.field_224)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, Mask(32, 224, block.timestamp) >> 224
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            require ext_code.size(sub_69e92367Address)
            call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.sender == owner
            mem[ceil32(return_data.size) + 497 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 589 len 4] = test266151307()
            call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 561 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                require ext_code.size(address(masonAddress))
                call address(masonAddress).stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_82654169
            else:
                mem[ceil32(return_data.size) + 529 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                '!safeApprove',
                                mem[(2 * ceil32(return_data.size)) + 598 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 529]:
                        revert with 0, 
                                    '!safeApprove',
                                    mem[(2 * ceil32(return_data.size)) + 598 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(address(masonAddress))
                call address(masonAddress).stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_82654169, mem[(2 * ceil32(return_data.size)) + 534 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            '!safeApprove',
                            mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 429]:
                    revert with 0, 
                                '!safeApprove',
                                mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(sub_69e92367Address)
            call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[64], mem[(2 * ceil32(return_data.size)) + 466 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require msg.sender == owner
            mem[(2 * ceil32(return_data.size)) + 498 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
            call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
               funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor3), mem[(2 * ceil32(return_data.size)) + 466 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 498 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
            else:
                mem[(2 * ceil32(return_data.size)) + 530 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 530]:
                        revert with 0, '!safeApprove'
            require ext_code.size(address(masonAddress))
            call address(masonAddress).stake(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_82654169
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    '!safeApprove',
                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 329]:
            revert with 0, 
                        '!safeApprove',
                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require ext_code.size(address(routerAddress))
    call address(routerAddress).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args 0x6c021ae822bea943b2e66552bde1d2696a53fbb7, Mask(255, 1, ext_call.return_data[0]), 0, 8 * Mask(256, -3, Mask(253, 0, stor5.field_3)), this.address, block.timestamp, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(2 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
       funct uint32(stor5.field_224)
         gas gas_remaining wei
        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, Mask(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, block.timestamp) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        require ext_code.size(sub_69e92367Address)
        call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender == owner
        mem[(2 * ceil32(return_data.size)) + 498 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 562 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
        else:
            mem[(2 * ceil32(return_data.size)) + 530 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 530]:
                    revert with 0, '!safeApprove'
        require ext_code.size(address(masonAddress))
        call address(masonAddress).stake(uint256 arg1) with:
             gas gas_remaining wei
            args sub_82654169
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 430 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!safeApprove'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 430]:
            revert with 0, '!safeApprove'
    require ext_code.size(sub_69e92367Address)
    call sub_69e92367Address.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 499 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] = test266151307()
    call 0x6c021ae822bea943b2e66552bde1d2696a53fbb7 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        require ext_code.size(address(masonAddress))
        call address(masonAddress).stake(uint256 arg1) with:
             gas gas_remaining wei
            args sub_82654169
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 531 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        if not return_data.size:
            mem[(4 * ceil32(return_data.size)) + 504] = sub_82654169
            require ext_code.size(address(masonAddress))
            call address(masonAddress).stake(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 504 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 531]:
            mem[(4 * ceil32(return_data.size)) + 504] = sub_82654169
            require ext_code.size(address(masonAddress))
            call address(masonAddress).stake(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 504 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 504] = 32
    mem[(4 * ceil32(return_data.size)) + 536] = 12
    mem[(4 * ceil32(return_data.size)) + 568] = '!safeApprove' << 160
    revert with memory
      from (4 * ceil32(return_data.size)) + 500
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
