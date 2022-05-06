contract main {




// =====================  Runtime code  =====================


address stor2;
address stor5;
address stor11;
address stor12;
uint256 stor17;
uint256 sub_eb61c72a;
uint256 stor19;
address stor20;
uint32 stor21;
address stor21;
address stor22;
address stor23;
address stor24;
address stor25;

function sub_eb61c72a(?) payable {
    return sub_eb61c72a
}

function _fallback() payable {
    revert
}

function sub_1ea88aa7(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    call stor2.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b0729c55(?) payable {
    require ext_code.size(stor12)
    call stor12.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, sub_eb61c72a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a = 0
}

function sub_10424710(?) payable {
    require ext_code.size(stor24)
    staticcall stor24.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8c8d157a(?) payable {
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6622e408(?) payable {
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_10b27598(?) payable {
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_94344bef(?) payable {
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_feb6848a(?) payable {
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a8e9f25f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= sub_eb61c72a
    require ext_code.size(stor12)
    call stor12.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a -= arg1
}

function sub_3285dfb4(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    call stor22.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor12, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    call stor12.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a += ext_call.return_data[0]
}

function sub_a9c19c66(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_62b07f51(?) payable {
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    call address(stor21).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor19 -= ext_call.return_data[0]
}

function sub_cad20a29(?) payable {
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_7845790c(?) payable {
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_8217d6b3(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    call stor22.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    call stor11.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, uint32(stor21), stor20, ext_call.return_data[0], 1, 1, this.address, block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_ec079f38(?) payable {
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            return 0
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (2 * 0 / ext_call.return_data[0])
    if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        return 0
    if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_dca2061d(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor20)
    call stor20.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            mem[548 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 3, mem[548 len 96]
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            mem[548 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[548 len 96]), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            mem[548 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 3, mem[548 len 96]
        else:
            if 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            mem[548 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 100, Array(len=3, data=mem[548 len 96]), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1087b980(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor21))
    call address(stor21).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            mem[516 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 2, mem[516 len 64]
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            mem[516 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[516 len 64]), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            mem[516 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 2, mem[516 len 64]
        else:
            if 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            mem[516 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 100, Array(len=2, data=mem[516 len 64]), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b892287f(?) payable {
    require ext_code.size(stor24)
    staticcall stor24.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor24)
    call stor24.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor24)
    staticcall stor24.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
        else:
            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a2588b37(?) payable {
    require ext_code.size(stor24)
    staticcall stor24.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor24)
    call stor24.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor24)
    staticcall stor24.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                mem[612 len 0] = None
                require ext_code.size(stor11)
                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[612 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    return 0
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            mem[612 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[612 len 96]), address(this.address), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (99 * 0 / ext_call.return_data[0] / 100)
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            mem[612 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[612 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        mem[612 len 0] = None
        require ext_code.size(stor11)
        call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[612 len 96]), address(this.address), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            mem[612 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[612 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        mem[612 len 0] = None
        require ext_code.size(stor11)
        call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[612 len 96]), address(this.address), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return (99 * 0 / ext_call.return_data[0] / 100)
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
        mem[612 len 0] = None
        require ext_code.size(stor11)
        call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[612 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    mem[612 len 0] = None
    require ext_code.size(stor11)
    call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[612 len 96]), address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
}

function sub_0d02b9cd(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[0]:
            if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    else:
        if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_eb61c72a + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if arg1:
                if (sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / arg1 != sub_eb61c72a + ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not arg1:
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0] >= sub_eb61c72a:
                require sub_eb61c72a <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, sub_eb61c72a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = 0
            else:
                require (0 / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0] <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, (0 / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = sub_eb61c72a - (0 / 2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]
        else:
            if (sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / arg1 != sub_eb61c72a + ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0] >= sub_eb61c72a:
                require sub_eb61c72a <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, sub_eb61c72a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = 0
            else:
                require ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0] <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = sub_eb61c72a - ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]
    else:
        if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            if arg1:
                if (sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / arg1 != sub_eb61c72a + ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not arg1:
            if not 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0] >= sub_eb61c72a:
                require sub_eb61c72a <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, sub_eb61c72a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = 0
            else:
                require (0 / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0] <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, (0 / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = sub_eb61c72a - (0 / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]
        else:
            if (sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / arg1 != sub_eb61c72a + ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0] >= sub_eb61c72a:
                require sub_eb61c72a <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, sub_eb61c72a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = 0
            else:
                require ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0] <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = sub_eb61c72a - ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    call stor22.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    call stor11.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args address(stor21), stor20, ext_call.return_data[0], 1, 1, this.address, block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    if arg1 / 2 > ext_call.return_data[0]:
        call stor20.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg1 / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.mint(uint256 arg1) with:
             gas gas_remaining wei
            args (arg1 / 2)
    else:
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        call stor20.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.mint(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    call address(stor21).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor19 -= ext_call.return_data[0]
}

function sub_83090786(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[0]:
            if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    else:
        if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_eb61c72a + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if arg1:
                if (sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / arg1 != sub_eb61c72a + ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not arg1:
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0] >= sub_eb61c72a:
                require sub_eb61c72a <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, sub_eb61c72a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = 0
            else:
                require (0 / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0] <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, (0 / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = sub_eb61c72a - (0 / 2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]
        else:
            if (sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / arg1 != sub_eb61c72a + ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0] >= sub_eb61c72a:
                require sub_eb61c72a <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, sub_eb61c72a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = 0
            else:
                require ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0] <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * 0 / ext_call.return_data[0]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = sub_eb61c72a - ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]
    else:
        if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            if arg1:
                if (sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / arg1 != sub_eb61c72a + ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not arg1:
            if not 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0] >= sub_eb61c72a:
                require sub_eb61c72a <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, sub_eb61c72a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = 0
            else:
                require (0 / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0] <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, (0 / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = sub_eb61c72a - (0 / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]
        else:
            if (sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / arg1 != sub_eb61c72a + ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0] >= sub_eb61c72a:
                require sub_eb61c72a <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, sub_eb61c72a
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = 0
            else:
                require ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0] <= sub_eb61c72a
                require ext_code.size(stor12)
                call stor12.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor17, ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_eb61c72a = sub_eb61c72a - ((sub_eb61c72a * arg1) + (ext_call.return_data[0] * arg1) / 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + ext_call.return_data[0]
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    call stor22.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    call stor11.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args address(stor21), stor20, ext_call.return_data[0], 1, 1, this.address, block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor20)
    call stor20.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, arg1 / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1 / 2:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            mem[804 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, arg1), 0, 160, this.address, block.timestamp + 120, 3, mem[804 len 96]
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            mem[804 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, arg1), 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / 2 / arg1 / 2 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * arg1 / 2 / ext_call.return_data[0]:
            mem[804 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, arg1), 0, 160, this.address, block.timestamp + 120, 3, mem[804 len 96]
        else:
            if 99 * ext_call.return_data[0] * arg1 / 2 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 2 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            mem[804 len 0] = None
            require ext_code.size(stor11)
            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, arg1), 99 * ext_call.return_data[0] * arg1 / 2 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    call address(stor21).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor19 -= ext_call.return_data[0]
}

function calcPoolValueInToken() payable {
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor25)
            staticcall stor25.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            staticcall stor2.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor20)
                staticcall stor20.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor20)
                staticcall stor20.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                staticcall stor5.borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor20)
                staticcall stor20.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor5)
            staticcall stor5.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor20)
                staticcall stor20.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor25)
        staticcall stor25.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        staticcall stor2.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor5)
            staticcall stor5.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor20)
                staticcall stor20.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor5)
        staticcall stor5.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
    if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        require ext_code.size(stor25)
        staticcall stor25.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        staticcall stor2.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor5)
            staticcall stor5.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor20)
                staticcall stor20.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor22
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor5)
        staticcall stor5.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor25)
    staticcall stor25.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor5)
        staticcall stor5.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor20)
            staticcall stor20.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor21))
            staticcall address(stor21).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor21))
        staticcall address(stor21).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
}

function sub_2c65271a(?) payable {
    require ext_code.size(stor12)
    call stor12.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor21))
    staticcall address(stor21).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor20)
    staticcall stor20.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor22
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_eb61c72a + ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                call stor24.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    call address(stor21).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    staticcall stor5.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor19 -= ext_call.return_data[0]
                else:
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                call stor24.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255(0 / ext_call.return_data[0]) <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    call address(stor21).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    staticcall stor5.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor19 -= ext_call.return_data[0]
                else:
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                call stor24.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    call address(stor21).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    staticcall stor5.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor19 -= ext_call.return_data[0]
                else:
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                call stor24.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255((sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    call address(stor21).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    staticcall stor5.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor19 -= ext_call.return_data[0]
                else:
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor20)
        staticcall stor20.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor22)
        staticcall stor22.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_eb61c72a + ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                call stor24.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    call address(stor21).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    staticcall stor5.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor19 -= ext_call.return_data[0]
                else:
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                call stor24.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255(0 / ext_call.return_data[0]) <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    call address(stor21).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    staticcall stor5.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor19 -= ext_call.return_data[0]
                else:
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                call stor24.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    call address(stor21).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    staticcall stor5.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor19 -= ext_call.return_data[0]
                else:
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                call stor24.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor24)
                staticcall stor24.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor21))
                staticcall address(stor21).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255((sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor24, address(stor21)
                        else:
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            require ext_code.size(stor11)
                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor24, address(stor21)), this.address, block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor21))
                    call address(stor21).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    staticcall stor5.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    call stor5.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor19 -= ext_call.return_data[0]
                else:
                    require ext_code.size(address(stor21))
                    staticcall address(stor21).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor20)
                    staticcall stor20.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args stor22
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor11)
                                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor20)
                                call stor20.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor2, 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
