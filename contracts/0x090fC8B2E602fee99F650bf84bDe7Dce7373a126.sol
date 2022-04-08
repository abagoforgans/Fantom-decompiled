contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint8 isStopped; offset 160
uint8 isRefundEnabled; offset 168
uint8 distStarted; offset 176
uint8 sub_efb02006; offset 184
uint32 stor3;
uint128 stor3; offset 176
uint128 stor3; offset 168
uint128 stor3; offset 160
address tokenAddress;
uint256 tokensBought;
uint8 teamClaimed;
uint256 ethSent;
uint256 lockedLiquidityAmount;
uint256 timeTowithdrawTeamTokens;
uint256 refundTime;
mapping of uint256 userEthSpenttInDistribution;

function lockedLiquidityAmount() {
    return lockedLiquidityAmount
}

function teamClaimed() {
    return bool(teamClaimed)
}

function isStopped() {
    return bool(isStopped)
}

function userEthSpenttInDistribution(address arg1) {
    require calldata.size - 4 >= 32
    return userEthSpenttInDistribution[address(arg1)]
}

function tokensBought() {
    return tokensBought
}

function distStarted() {
    return bool(distStarted)
}

function isRefundEnabled() {
    return bool(isRefundEnabled)
}

function owner() {
    return owner
}

function refundTime() {
    return refundTime
}

function timeTowithdrawTeamTokens() {
    return timeTowithdrawTeamTokens
}

function Token() {
    return tokenAddress
}

function ethSent() {
    return ethSent
}

function sub_efb02006(?) {
    return bool(sub_efb02006)
}

function _fallback() payable {
    revert
}

function pauseDistribution() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor3.field_176) = 0
}

function sub_7f893859(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    refundTime = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function startDistribution() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = block.timestamp
    Mask(80, 0, stor3.field_176) = 1
}

function enableRefunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor3.field_168) = 1
    Mask(96, 0, stor3.field_160) = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getRefund() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not isRefundEnabled:
        if block.timestamp < refundTime:
            revert with 0, 'Cannot refund'
    userEthSpenttInDistribution[address(msg.sender)] = 0
    call msg.sender with:
       value userEthSpenttInDistribution[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73596f752063616e20736574207468652061646472657373206f6e6c79206f6e63,
                    mem[197 len 31]
    tokenAddress = arg1
    stor1 = 1
}

function buyTokens() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if bool(distStarted) != 1:
        revert with 0, '!distStarted'
    if not tokenAddress:
        revert with 0, '!Token'
    if isStopped:
        revert with 0, 'stopped'
    if msg.value < 10^15:
        revert with 0, '<minsend'
    if msg.value > 10 * 10^18:
        revert with 0, '>maxaddrcap'
    if ethSent >= 10 * 10^18:
        revert with 0, 'Hard cap reaches'
    if msg.value + ethSent < msg.value:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + ethSent > 10 * 10^18:
        revert with 0, 'Hardcap will be reached'
    if userEthSpenttInDistribution[address(msg.sender)] + msg.value < userEthSpenttInDistribution[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if userEthSpenttInDistribution[address(msg.sender)] + msg.value > 10 * 10^18:
        revert with 0, 'You cannot buy more'
    if not msg.value:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163,
                        mem[197 len 31]
        if userEthSpenttInDistribution[address(msg.sender)] + msg.value < userEthSpenttInDistribution[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userEthSpenttInDistribution[address(msg.sender)] += msg.value
        if tokensBought < tokensBought:
            revert with 0, 'SafeMath: addition overflow'
        if ethSent + msg.value < ethSent:
            revert with 0, 'SafeMath: addition overflow'
        ethSent += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require msg.value
        if 37000 * msg.value / msg.value != 37000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 37000 * msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163,
                        mem[197 len 31]
        if userEthSpenttInDistribution[address(msg.sender)] + msg.value < userEthSpenttInDistribution[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userEthSpenttInDistribution[address(msg.sender)] += msg.value
        if tokensBought + (37000 * msg.value) < tokensBought:
            revert with 0, 'SafeMath: addition overflow'
        tokensBought += 37000 * msg.value
        if ethSent + msg.value < ethSent:
            revert with 0, 'SafeMath: addition overflow'
        ethSent += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, 37000 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
}

function claimTeamFeeAndAddLiquidity() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not teamClaimed
    if not eth.balance(this.address):
        call owner with:
             gas 2300 wei
    else:
        require eth.balance(this.address)
        if 2000 * eth.balance(this.address) / eth.balance(this.address) != 2000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call owner with:
           value 2000 * eth.balance(this.address) / 10000 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not eth.balance(this.address):
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(tokenAddress)
        call tokenAddress.unpause() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Unpause call failed'
        require ext_code.size(tokenAddress)
        if sub_efb02006:
            call tokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x3bc677674df90a9e5d741f28f6ca303357d0e4ec, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x3bc677674df90a9e5d741f28f6ca303357d0e4ec)
            if sub_efb02006:
                call 0x3bc677674df90a9e5d741f28f6ca303357d0e4ec.addLiquidityBNB(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, uint32(stor3.field_0), 0, 0, eth.balance(this.address), owner, block.timestamp
            else:
                call 0x3bc677674df90a9e5d741f28f6ca303357d0e4ec.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, uint32(stor3.field_0), 0, 0, eth.balance(this.address), owner, block.timestamp
        else:
            call tokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            if sub_efb02006:
                call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.addLiquidityBNB(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, uint32(stor3.field_0), 0, 0, eth.balance(this.address), owner, block.timestamp
            else:
                call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, uint32(stor3.field_0), 0, 0, eth.balance(this.address), owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] > 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require eth.balance(this.address)
        if 34040 * eth.balance(this.address) / eth.balance(this.address) != 34040:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 34040 * eth.balance(this.address) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(tokenAddress)
        call tokenAddress.unpause() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Unpause call failed'
        require ext_code.size(tokenAddress)
        if sub_efb02006:
            call tokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x3bc677674df90a9e5d741f28f6ca303357d0e4ec, 34040 * eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x3bc677674df90a9e5d741f28f6ca303357d0e4ec)
            if sub_efb02006:
                call 0x3bc677674df90a9e5d741f28f6ca303357d0e4ec.addLiquidityBNB(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, uint32(stor3.field_0), 34040 * eth.balance(this.address), 34040 * eth.balance(this.address), eth.balance(this.address), owner, block.timestamp
            else:
                call 0x3bc677674df90a9e5d741f28f6ca303357d0e4ec.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, uint32(stor3.field_0), 34040 * eth.balance(this.address), 34040 * eth.balance(this.address), eth.balance(this.address), owner, block.timestamp
        else:
            call tokenAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, 34040 * eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
            if sub_efb02006:
                call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.addLiquidityBNB(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, uint32(stor3.field_0), 34040 * eth.balance(this.address), 34040 * eth.balance(this.address), eth.balance(this.address), owner, block.timestamp
            else:
                call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, uint32(stor3.field_0), 34040 * eth.balance(this.address), 34040 * eth.balance(this.address), eth.balance(this.address), owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] - (34040 * eth.balance(this.address)) > 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0] - (34040 * eth.balance(this.address))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if not isStopped:
        Mask(96, 0, stor3.field_160) = 1
    teamClaimed = 1
}



}
