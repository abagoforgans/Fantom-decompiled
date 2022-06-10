contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address ABSAddress;
address _burnPoolAddress;
uint256 tokensBought;
uint8 isStopped;
uint8 teamClaimed; offset 8
uint8 isRefundEnabled; offset 16
uint8 presaleStarted; offset 24
uint8 stor4; offset 32
address stor4;
address stor4; offset 40
uint256 stor4; offset 32
uint256 stor4; offset 24
uint256 stor4; offset 16
uint256 stor4; offset 8
address poolAddress;
uint256 stor5;
uint256 liquidityUnlock;
uint256 ethSent;
uint256 lockedLiquidityAmount;
uint256 timeTowithdrawTeamTokens;
uint256 refundTime;
mapping of uint256 userEthSpenttInPresale;

function presaleStarted() {
    return bool(presaleStarted)
}

function lockedLiquidityAmount() {
    return lockedLiquidityAmount
}

function liquidityUnlock() {
    return liquidityUnlock
}

function pool() {
    return address(poolAddress)
}

function _burnPool() {
    return _burnPoolAddress
}

function teamClaimed() {
    return bool(teamClaimed)
}

function isStopped() {
    return bool(isStopped)
}

function tokensBought() {
    return tokensBought
}

function isRefundEnabled() {
    return bool(isRefundEnabled)
}

function refundTime() {
    return refundTime
}

function timeTowithdrawTeamTokens() {
    return timeTowithdrawTeamTokens
}

function userEthSpenttInPresale(address arg1) {
    require calldata.size - 4 >= 32
    return userEthSpenttInPresale[address(arg1)]
}

function ABS() {
    return ABSAddress
}

function ethSent() {
    return ethSent
}

function _fallback() payable {
    revert
}

function startPresale() {
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    Mask(232, 0, stor4.field_24) = 1
}

function pausePresale() {
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    Mask(232, 0, stor4.field_24) = 0
}

function EMERGENCY_ALLOW_REFUNDS() {
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    Mask(240, 0, stor4.field_16) = 1
    isStopped = 1
    stor0 = 1
}

function withdrawFromUnicrypt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    require ext_code.size(0x17e00383a843a9922bca3b280c0ade9f8ba48449)
    call 0x17e00383a843a9922bca3b280c0ade9f8ba48449.withdrawToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(poolAddress), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if ABSAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e596f752063616e20736574207468652061646472657373206f6e6c79206f6e63,
                    mem[197 len 31]
    ABSAddress = arg1
    stor0 = 1
}

function withdrawLockedTokensAfter1Year(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    if block.timestamp < liquidityUnlock:
        revert with 0, 'You cannot withdraw yet'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor4.field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getRefund() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require msg.sender == tx.origin
    require not uint8(stor4.field_32)
    if not isRefundEnabled:
        if block.timestamp < refundTime:
            revert with 0, 'Cannot refund'
    userEthSpenttInPresale[address(msg.sender)] = 0
    call msg.sender with:
       value userEthSpenttInPresale[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function withdrawTeamTokens() {
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require teamClaimed
    if block.timestamp < timeTowithdrawTeamTokens:
        revert with 0, 'Cannot withdraw yet'
    require ext_code.size(ABSAddress)
    call ABSAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x51077888d2bb2b36b28925bd204b50c6b9e96d69, 3333333333333333333333
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ABSAddress)
    call ABSAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xc18344c815b7cac0223384f626169166cb84387e, 3333333333333333333333
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ABSAddress)
    call ABSAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xce08d3ccd2bd138409469f947e2bfee49e052d54, 3333333333333333333333
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (240 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timeTowithdrawTeamTokens = block.timestamp + (240 * 24 * 3600)
    stor0 = 1
}

function lockWithUnicrypt() {
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    require ext_code.size(ABSAddress)
    call ABSAddress.uniswapV2Pair() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(address(poolAddress))
    staticcall address(poolAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(poolAddress))
    call address(poolAddress).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x17e00383a843a9922bca3b280c0ade9f8ba48449, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x17e00383a843a9922bca3b280c0ade9f8ba48449)
    call 0x17e00383a843a9922bca3b280c0ade9f8ba48449.depositToken(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(poolAddress), ext_call.return_data[0], liquidityUnlock
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if lockedLiquidityAmount + ext_call.return_data[0] < lockedLiquidityAmount:
        revert with 0, 'SafeMath: addition overflow'
    lockedLiquidityAmount += ext_call.return_data[0]
}

function buyTokens() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require msg.sender == tx.origin
    if bool(presaleStarted) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e50726573616c65206973205061757365642c20646f206e6f742073656e6420455448,
                    mem[199 len 29]
    if not ABSAddress:
        revert with 0, 'Main contract address not set.'
    if isStopped:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x7450726573616c652073746f7070656420627920636f6e74726163742c20646f206e6f742073656e6420455448,
                    mem[209 len 19]
    if msg.value < 10^16:
        revert with 0, 'Must send more than 0.01 FTM'
    if msg.value > 100 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe596f752063616e206f6e6c792073656e64203130302046544d204d617820706572205458,
                    mem[201 len 27]
    if ethSent >= 125 * 10^16 * 3600:
        revert with 0, 'Hard Cap reached at 4500 FTM.'
    if msg.value + ethSent < msg.value:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + ethSent > 125 * 10^16 * 3600:
        revert with 0, 'Hard Cap is 4500 FTM.'
    if userEthSpenttInPresale[address(msg.sender)] + msg.value < userEthSpenttInPresale[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if userEthSpenttInPresale[address(msg.sender)] + msg.value > 200 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x2e596f752063616e6e6f7420627579206d6f7265207468616e203230302046544d20746f74616c207065722061646472657373206f72203130302046544d20706572205458,
                    mem[233 len 27]
    if not msg.value:
        require ext_code.size(ABSAddress)
        staticcall ABSAddress.0x70a08231 with:
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
        if userEthSpenttInPresale[address(msg.sender)] + msg.value < userEthSpenttInPresale[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userEthSpenttInPresale[address(msg.sender)] += msg.value
        if tokensBought < tokensBought:
            revert with 0, 'SafeMath: addition overflow'
        if ethSent + msg.value < ethSent:
            revert with 0, 'SafeMath: addition overflow'
        ethSent += msg.value
        require ext_code.size(ABSAddress)
        call ABSAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require msg.value
        if 10 * msg.value / msg.value != 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(ABSAddress)
        staticcall ABSAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10 * msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x774e6f7420656e6f75676820746f6b656e7320696e2074686520636f6e74726163,
                        mem[197 len 31]
        if userEthSpenttInPresale[address(msg.sender)] + msg.value < userEthSpenttInPresale[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userEthSpenttInPresale[address(msg.sender)] += msg.value
        if tokensBought + (10 * msg.value) < tokensBought:
            revert with 0, 'SafeMath: addition overflow'
        tokensBought += 10 * msg.value
        if ethSent + msg.value < ethSent:
            revert with 0, 'SafeMath: addition overflow'
        ethSent += msg.value
        require ext_code.size(ABSAddress)
        call ABSAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 10 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
}

function claimTeamFeeAndAddLiquidity() {
    if address(stor4.field_40) != msg.sender:
        revert with 0, 'You are not the owner'
    require not teamClaimed
    if not eth.balance(this.address):
        if not eth.balance(this.address):
            if not eth.balance(this.address):
                call 0x51077888d2bb2b36b28925bd204b50c6b9e96d69 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0xc18344c815b7cac0223384f626169166cb84387e with:
                     gas 2300 wei
                call 0xce08d3ccd2bd138409469f947e2bfee49e052d54 with:
                     gas 2300 wei
            else:
                require eth.balance(this.address)
                if 8 * eth.balance(this.address) / eth.balance(this.address) != 8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                call 0x51077888d2bb2b36b28925bd204b50c6b9e96d69 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0xc18344c815b7cac0223384f626169166cb84387e with:
                     gas 2300 wei
                call 0xce08d3ccd2bd138409469f947e2bfee49e052d54 with:
                   value 8 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address)
            if 15 * eth.balance(this.address) / eth.balance(this.address) != 15:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not eth.balance(this.address):
                call 0x51077888d2bb2b36b28925bd204b50c6b9e96d69 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0xc18344c815b7cac0223384f626169166cb84387e with:
                   value 15 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                call 0xce08d3ccd2bd138409469f947e2bfee49e052d54 with:
                     gas 2300 wei
            else:
                require eth.balance(this.address)
                if 8 * eth.balance(this.address) / eth.balance(this.address) != 8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                call 0x51077888d2bb2b36b28925bd204b50c6b9e96d69 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0xc18344c815b7cac0223384f626169166cb84387e with:
                   value 15 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                call 0xce08d3ccd2bd138409469f947e2bfee49e052d54 with:
                   value 8 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address)
        if 10 * eth.balance(this.address) / eth.balance(this.address) != 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not eth.balance(this.address):
            if not eth.balance(this.address):
                call 0x51077888d2bb2b36b28925bd204b50c6b9e96d69 with:
                   value 10 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0xc18344c815b7cac0223384f626169166cb84387e with:
                     gas 2300 wei
                call 0xce08d3ccd2bd138409469f947e2bfee49e052d54 with:
                     gas 2300 wei
            else:
                require eth.balance(this.address)
                if 8 * eth.balance(this.address) / eth.balance(this.address) != 8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                call 0x51077888d2bb2b36b28925bd204b50c6b9e96d69 with:
                   value 10 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0xc18344c815b7cac0223384f626169166cb84387e with:
                     gas 2300 wei
                call 0xce08d3ccd2bd138409469f947e2bfee49e052d54 with:
                   value 8 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address)
            if 15 * eth.balance(this.address) / eth.balance(this.address) != 15:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not eth.balance(this.address):
                call 0x51077888d2bb2b36b28925bd204b50c6b9e96d69 with:
                   value 10 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0xc18344c815b7cac0223384f626169166cb84387e with:
                   value 15 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                call 0xce08d3ccd2bd138409469f947e2bfee49e052d54 with:
                     gas 2300 wei
            else:
                require eth.balance(this.address)
                if 8 * eth.balance(this.address) / eth.balance(this.address) != 8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                call 0x51077888d2bb2b36b28925bd204b50c6b9e96d69 with:
                   value 10 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call 0xc18344c815b7cac0223384f626169166cb84387e with:
                   value 15 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                call 0xce08d3ccd2bd138409469f947e2bfee49e052d54 with:
                   value 8 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
    Mask(248, 0, stor4.field_8) = 1
    if not eth.balance(this.address):
        require ext_code.size(ABSAddress)
        staticcall ABSAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10000 * 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(ABSAddress)
        call ABSAddress.unPauseTransferForever() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(ABSAddress)
        call ABSAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args ABSAddress, 0, 0, eth.balance(this.address), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] - 10000 * 10^18 > 0:
            require ext_code.size(ABSAddress)
            call ABSAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args _burnPoolAddress, ext_call.return_data[0] - 10000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require eth.balance(this.address)
        if 7 * eth.balance(this.address) / eth.balance(this.address) != 7:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        require ext_code.size(ABSAddress)
        staticcall ABSAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 7 * eth.balance(this.address) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10000 * 10^18 > ext_call.return_data[0] - (7 * eth.balance(this.address)):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(ABSAddress)
        call ABSAddress.unPauseTransferForever() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(ABSAddress)
        call ABSAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52, 7 * eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
        call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args ABSAddress, 7 * eth.balance(this.address), 7 * eth.balance(this.address), eth.balance(this.address), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] + (-7 * eth.balance(this.address)) - 10000 * 10^18 > 0:
            require ext_code.size(ABSAddress)
            call ABSAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args _burnPoolAddress, ext_call.return_data[0] + (-7 * eth.balance(this.address)) - 10000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    Mask(224, 0, stor4.field_32) = 1
    if not isStopped:
        isStopped = 1
}



}
