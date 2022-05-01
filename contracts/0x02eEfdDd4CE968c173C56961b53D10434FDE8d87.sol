contract main {




// =====================  Runtime code  =====================


address stor0;
address stor3;
address stor5;
address stor7;
address stor8;
uint256 stor11;
uint256 sub_eb61c72a;
uint256 stor13;
address stor14;
uint32 stor15;
address stor15;
address stor16;
address stor17;
address stor18;
address stor19;
uint256 stor20;
uint256 stor21;

function sub_eb61c72a(?) {
    return sub_eb61c72a
}

function _fallback() payable {
    revert
}

function sub_10424710(?) {
    require ext_code.size(stor18)
    staticcall stor18.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8c8d157a(?) {
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a67287f2(?) {
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1ea88aa7(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    require ext_code.size(stor3)
    call stor3.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aeba8187(?) {
    require ext_code.size(stor5)
    staticcall stor5.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_10b27598(?) {
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_94344bef(?) {
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c9013d23(?) {
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2d133fbc(?) {
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    require ext_code.size(stor8)
    call stor8.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, sub_eb61c72a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a = 0
}

function sub_652877bd(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    require ext_code.size(stor5)
    call stor5.borrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor13 += arg1
}

function sub_9e24dff4(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    require arg1 <= sub_eb61c72a
    require ext_code.size(stor8)
    call stor8.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a -= arg1
}

function sub_8c4ee3b5(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    require ext_code.size(stor14)
    call stor14.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    call stor14.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_85026b50(?) {
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    call stor14.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3285dfb4(?) {
    require ext_code.size(stor16)
    staticcall stor16.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    call stor16.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor8, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a += ext_call.return_data[0]
}

function sub_6eaaa9a2(?) {
    require ext_code.size(stor3)
    staticcall stor3.getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor19)
    staticcall stor19.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor19)
    staticcall stor19.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function sub_65c3ea54(?) {
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
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
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function sub_0325c684(?) {
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function sub_e7c3228f(?) {
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    require ext_code.size(stor16)
    staticcall stor16.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    staticcall stor16.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    call stor16.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, uint32(stor15), stor14, ext_call.return_data[0], 1, 1, address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_fefca662(?) {
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    staticcall stor16.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    staticcall stor16.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            return 0
        require 0 / ext_call.return_data[0]
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        return (2 * 0 / ext_call.return_data[0])
    require sub_eb61c72a + ext_call.return_data[0]
    if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        return 0
    require (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
    if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    return (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_d3ee0d46(?) {
    if stor0 != msg.sender:
        revert with 0, 'only admin'
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor20:
        require ext_code.size(stor14)
        call stor14.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.mint(uint256 arg1) with:
             gas gas_remaining wei
            args 0
    else:
        require stor20
        if stor20 * ext_call.return_data[0] / stor20 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require ext_code.size(stor14)
        call stor14.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, stor20 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.mint(uint256 arg1) with:
             gas gas_remaining wei
            args (stor20 * ext_call.return_data[0] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_call.return_data[0]:
        require ext_code.size(address(stor15))
        staticcall address(stor15).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor21:
            require stor21
            if 0 / stor21:
                revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(stor5)
        call stor5.borrow(uint256 arg1) with:
             gas gas_remaining wei
            args (0 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor13 += 0 / ext_call.return_data[0]
        require ext_code.size(address(stor15))
        staticcall address(stor15).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(stor14)
                call stor14.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor15))
                call address(stor15).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor7)
                call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0, address(this.address), block.timestamp + 15
            else:
                require 0 / ext_call.return_data[0]
                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor14)
                call stor14.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor15))
                call address(stor15).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor7)
                call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, address(this.address), block.timestamp + 15
        else:
            require 0 / ext_call.return_data[0]
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                require ext_code.size(stor14)
                call stor14.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor15))
                call address(stor15).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor7)
                call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0], 0, address(this.address), block.timestamp + 15
            else:
                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor14)
                call stor14.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor15))
                call address(stor15).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor7)
                call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, address(this.address), block.timestamp + 15
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * stor21 / ext_call.return_data[0] != stor21:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(address(stor15))
        staticcall address(stor15).balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor21:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(stor5)
            call stor5.borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args (0 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor13 += 0 / ext_call.return_data[0]
            require ext_code.size(address(stor15))
            staticcall address(stor15).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args stor16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not 0 / ext_call.return_data[0]:
                    require ext_code.size(stor14)
                    call stor14.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor15))
                    call address(stor15).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor7)
                    call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0, address(this.address), block.timestamp + 15
                else:
                    require 0 / ext_call.return_data[0]
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(stor14)
                    call stor14.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor15))
                    call address(stor15).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor7)
                    call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, address(this.address), block.timestamp + 15
            else:
                require 0 / ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    require ext_code.size(stor14)
                    call stor14.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor15))
                    call address(stor15).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor7)
                    call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0], 0, address(this.address), block.timestamp + 15
                else:
                    require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(stor14)
                    call stor14.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor15))
                    call address(stor15).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor7)
                    call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, address(this.address), block.timestamp + 15
        else:
            require stor21
            if stor21 * ext_call.return_data[0] * stor21 / 100 / stor21 != ext_call.return_data[0] * stor21 / 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor21 * ext_call.return_data[0] * stor21 / 100 / 100:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                require ext_code.size(stor5)
                call stor5.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args (0 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor13 += 0 / ext_call.return_data[0]
                require ext_code.size(address(stor15))
                staticcall address(stor15).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor14)
                staticcall stor14.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not 0 / ext_call.return_data[0]:
                        require ext_code.size(stor14)
                        call stor14.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        call address(stor15).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0, address(this.address), block.timestamp + 15
                    else:
                        require 0 / ext_call.return_data[0]
                        if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(stor14)
                        call stor14.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        call address(stor15).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, address(this.address), block.timestamp + 15
                else:
                    require 0 / ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        require ext_code.size(stor14)
                        call stor14.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        call address(stor15).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0], 0, address(this.address), block.timestamp + 15
                    else:
                        require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(stor14)
                        call stor14.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        call address(stor15).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(stor15), stor14, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, address(this.address), block.timestamp + 15
            else:
                require stor21 * ext_call.return_data[0] * stor21 / 100 / 100
                if stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / stor21 * ext_call.return_data[0] * stor21 / 100 / 100 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                require ext_code.size(stor5)
                call stor5.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args (stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor13 += stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(address(stor15))
                staticcall address(stor15).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor14)
                staticcall stor14.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args stor16
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not 0 / ext_call.return_data[0]:
                        require ext_code.size(stor14)
                        call stor14.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        call address(stor15).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(stor15), stor14, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0], stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), block.timestamp + 15
                    else:
                        require 0 / ext_call.return_data[0]
                        if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(stor14)
                        call stor14.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, 0 / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        call address(stor15).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(stor15), stor14, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0], stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, address(this.address), block.timestamp + 15
                else:
                    require stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0]
                    if stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        require ext_code.size(stor14)
                        call stor14.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        call address(stor15).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(stor15), stor14, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0], stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0], 0, address(this.address), block.timestamp + 15
                    else:
                        require stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        if 99 * stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(stor14)
                        call stor14.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        call address(stor15).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor7, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor7)
                        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(stor15), stor14, stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0], stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0], 99 * stor21 * ext_call.return_data[0] * stor21 / 100 / 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor16)
    staticcall stor16.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    call stor16.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor8, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a += ext_call.return_data[0]
}

function sub_31703a7d(?) {
    require ext_code.size(address(stor15))
    staticcall address(stor15).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    staticcall stor16.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    staticcall stor16.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(stor3)
                staticcall stor3.getCash() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor19)
                staticcall stor19.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor19)
                staticcall stor19.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor15))
                        staticcall address(stor15).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor16
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor14)
                        staticcall stor14.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args stor16
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
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                require ext_code.size(address(stor15))
                                staticcall address(stor15).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args stor16
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor14)
                                staticcall stor14.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args stor16
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor15))
                                staticcall address(stor15).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        else:
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor14)
                                    staticcall stor14.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                else:
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            require ext_code.size(stor14)
                            staticcall stor14.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor15))
                            staticcall address(stor15).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor16
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor14)
                            staticcall stor14.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor16
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
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor14)
                                    staticcall stor14.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (0 / ext_call.return_data[0]))
                            else:
                                if ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor14)
                                        staticcall stor14.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            else:
                if 0 / ext_call.return_data[0]:
                    if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(stor3)
                    staticcall stor3.getCash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor19)
                    staticcall stor19.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor19)
                    staticcall stor19.totalSupply() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            require ext_code.size(stor14)
                            staticcall stor14.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor15))
                            staticcall address(stor15).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor16
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor14)
                            staticcall stor14.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor16
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
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor14)
                                    staticcall stor14.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (3 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                            else:
                                if ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor14)
                                        staticcall stor14.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (5 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
                    else:
                        if ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                require ext_code.size(stor14)
                                staticcall stor14.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor15))
                                staticcall address(stor15).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args stor16
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor14)
                                staticcall stor14.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args stor16
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
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor14)
                                        staticcall stor14.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (2 * 0 / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            require ext_code.size(address(stor15))
                                            staticcall address(stor15).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args stor16
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(stor14)
                                            staticcall stor14.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args stor16
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor15))
                                            staticcall address(stor15).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
                                            else:
                                                if ext_call.return_data[0]:
                                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
    else:
        if sub_eb61c72a + ext_call.return_data[0]:
            if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                    require ext_code.size(stor3)
                    staticcall stor3.getCash() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor19)
                    staticcall stor19.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor19)
                    staticcall stor19.totalSupply() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            require ext_code.size(stor14)
                            staticcall stor14.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor15))
                            staticcall address(stor15).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor16
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor14)
                            staticcall stor14.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args stor16
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
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor14)
                                    staticcall stor14.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                            else:
                                if ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor14)
                                        staticcall stor14.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    else:
                        if ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                require ext_code.size(stor14)
                                staticcall stor14.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor15))
                                staticcall address(stor15).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args stor16
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor14)
                                staticcall stor14.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args stor16
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
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor14)
                                        staticcall stor14.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (0 / ext_call.return_data[0]))
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            require ext_code.size(address(stor15))
                                            staticcall address(stor15).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args stor16
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(stor14)
                                            staticcall stor14.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args stor16
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor15))
                                            staticcall address(stor15).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                                            else:
                                                if ext_call.return_data[0]:
                                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                else:
                    if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(stor3)
                        staticcall stor3.getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor19)
                        staticcall stor19.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor19)
                        staticcall stor19.totalSupply() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                require ext_code.size(stor14)
                                staticcall stor14.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor15))
                                staticcall address(stor15).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args stor16
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor14)
                                staticcall stor14.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args stor16
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
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor14)
                                        staticcall stor14.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args stor16
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor15))
                                        staticcall address(stor15).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            require ext_code.size(address(stor15))
                                            staticcall address(stor15).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args stor16
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(stor14)
                                            staticcall stor14.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args stor16
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor15))
                                            staticcall address(stor15).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                            else:
                                                if ext_call.return_data[0]:
                                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                        else:
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(stor14)
                                    staticcall stor14.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor15))
                                    staticcall address(stor15).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor14)
                                    staticcall stor14.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args stor16
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
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            require ext_code.size(address(stor15))
                                            staticcall address(stor15).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args stor16
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(stor14)
                                            staticcall stor14.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args stor16
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(stor15))
                                            staticcall address(stor15).balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                                            else:
                                                if ext_call.return_data[0]:
                                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        return (ext_call.return_data[0] + (2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                require ext_code.size(address(stor15))
                                                staticcall address(stor15).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args stor16
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor14)
                                                staticcall stor14.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args stor16
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(stor15))
                                                staticcall address(stor15).balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if ext_call.return_data[0]:
                                                            return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
    revert
}



}
