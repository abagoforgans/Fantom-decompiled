contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - calcPoolValueInToken()
#  - rebalanceCollateral()
#  - deposit(uint256 arg1)
#  - sub_bd0a3b7e(?)
#  - sub_d2b49a92(?)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
address stor10;
address stor12;
address stor14;
address stor15;
uint256 stor18;
uint256 sub_eb61c72a;
uint256 stor20;
address stor21;
address stor22;
address stor23;
address stor24;
address stor25;
address stor26;
uint256 pool;

function name() {
    return name[0 len name.length]
}

function pool() {
    return pool
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_eb61c72a(?) {
    return sub_eb61c72a
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_10424710(?) {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_10b27598(?) {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8c8d157a(?) {
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_94344bef(?) {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6622e408(?) {
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_feb6848a(?) {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'ERC20: decreased allowance below zero', Mask(40, -256, 'ERC20: decreased allowance below', ' zero') << 256
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ERC20: transfer amount exceeds balance', Mask(48, -256, 'ERC20: transfer amount exceeds b', 'alance') << 256
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_3285dfb4(?) {
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor23)
    call stor23.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor15, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    call stor15.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a += ext_call.return_data[0]
}

function sub_a9c19c66(?) {
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ERC20: transfer amount exceeds balance', Mask(48, -256, 'ERC20: transfer amount exceeds b', 'alance') << 256
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC20: transfer amount exceeds allowance', Mask(64, -256, 'ERC20: transfer amount exceeds a', 'llowance') << 256
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_7845790c(?) {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
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

function sub_cad20a29(?) {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.borrowBalanceStored(address arg1) with:
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

function sub_ec079f38(?) {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor23)
    staticcall stor23.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
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

function sub_2c65271a(?) {
    require ext_code.size(stor15)
    call stor15.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor21)
        staticcall stor21.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor23)
        staticcall stor23.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor23)
        staticcall stor23.0x70a08231 with:
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
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require 0 / ext_call.return_data[0]
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255(0 / ext_call.return_data[0]) <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require sub_eb61c72a + ext_call.return_data[0]
            if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
                if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255((sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor21)
        staticcall stor21.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor23)
        staticcall stor23.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor23)
        staticcall stor23.0x70a08231 with:
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
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require 0 / ext_call.return_data[0]
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255(0 / ext_call.return_data[0]) <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require sub_eb61c72a + ext_call.return_data[0]
            if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
                if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255((sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
