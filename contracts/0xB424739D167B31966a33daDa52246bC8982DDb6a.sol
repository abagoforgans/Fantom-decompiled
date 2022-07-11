contract main {




// =====================  Runtime code  =====================


#
#  - liquifyForMain(uint256 arg1)
#  - SELL(uint256 arg1, address arg2, uint256 arg3, uint256 arg4)
#  - BUY(uint256 arg1, address arg2, uint256 arg3)
#  - Loan(uint256 arg1)
#  - closeStaleBatch()
#  - calcInGivenOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#  - _fallback()
#
address stor0;
address stor1;
address _beneficiaryAddress;
address mainAddress;
address tokenAddress;
address migrateFromAddress;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
uint256 backing;
uint8 stor13;
uint256 _totalSupply1;
uint256 _totalSupply2;
uint256 _totalSupply5;
uint256 _totalSupply6;
uint256 _totalSupply7;
uint256 _totalSupply8;
uint256 _totalSupply9;
uint256 collateral;
mapping of uint256 balance;
mapping of uint8 stor25;
mapping of uint256 stor26;
mapping of uint256 stor27;
mapping of uint256 stor28;
mapping of uint256 stor29;
mapping of uint256 _loansToken;
mapping of uint256 stor31;
mapping of uint256 allowance;
mapping of uint256 lendData;
uint256 totalSupply;
uint256 stor38;
uint256 stor39;
uint8 open;
uint8 done; offset 8
uint8 presaleSet; offset 16
uint8 imported; offset 24
uint256 stor40; offset 16
uint256 tx1;
uint256 tx2;
uint256 MAX_SELL_RATIO;
uint256 MAX_BUY_RATIO;
array of struct stor47;
array of struct stor48;
uint8 decimals;
uint256 totalSentRebates;
uint256 stor51;

function IsWhiteListContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor25[address(arg1)])
}

function _totalSupply2() {
    return _totalSupply2
}

function MAX_BUY_RATIO() {
    return MAX_BUY_RATIO
}

function migrateFrom() {
    return migrateFromAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _totalSupply8() {
    return _totalSupply8
}

function lendData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lendData[arg1]
}

function _totalSupply5() {
    return _totalSupply5
}

function imported() {
    return bool(imported)
}

function tx1() {
    return tx1
}

function Backing() {
    return backing
}

function _beneficiary() {
    return _beneficiaryAddress
}

function _totalSupply9() {
    return _totalSupply9
}

function _loansToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _loansToken[arg1]
}

function totalSentRebates() {
    return totalSentRebates
}

function _totalSupply1() {
    return _totalSupply1
}

function done() {
    return bool(done)
}

function whiteListContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor25[arg1])
}

function Token() {
    return tokenAddress
}

function MAX_SELL_RATIO() {
    return MAX_SELL_RATIO
}

function Main() {
    return mainAddress
}

function collateral() {
    return collateral
}

function _totalSupply7() {
    return _totalSupply7
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _totalSupply6() {
    return _totalSupply6
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[address(arg1)]
}

function presaleSet() {
    return bool(presaleSet)
}

function tx2() {
    return tx2
}

function open() {
    return bool(open)
}

function setPresale(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor11
    stor40 = Mask(240, 0, arg1)
}

function userBalanceInternal(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stor26[address(arg1)], stor27[address(arg1)]
}

function openit() {
    if _beneficiaryAddress != msg.sender:
        revert with 0, 'No permission'
    if bool(stor13) != 1:
        revert with 0, 'Deploy swap first'
    open = 1
}

function addWhiteListContract(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor1
    stor25[address(arg1)] = uint8(arg2)
}

function tokenFromGift(uint256 arg1) {
    require calldata.size - 4 >= 32
    require totalSupply > 0
    if not totalSupply:
        revert with 0, 18
    require totalSupply > 0
    if not totalSupply:
        revert with 0, 18
    require stor38 / totalSupply > 0
    if not stor38 / totalSupply:
        revert with 0, 18
    return (arg1 / stor38 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require totalSupply > 0
    if not totalSupply:
        revert with 0, 18
    require totalSupply > 0
    if not totalSupply:
        revert with 0, 18
    require stor38 / totalSupply > 0
    if not stor38 / totalSupply:
        revert with 0, 18
    return (stor31[address(arg1)] / stor38 / totalSupply)
}

function updateS(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require msg.sender == stor1
    stor6 = arg1
    stor10 = arg5
    stor9 = arg2
    stor1 = arg3
    stor8 = arg6
    stor0 = arg4
}

function payMain(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor51 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor51 = 2
    if arg2 > stor27[msg.sender]:
        revert with 0, 'Not enough token'
    if stor27[msg.sender] < arg2:
        revert with 0, 17
    stor27[msg.sender] -= arg2
    if stor27[address(arg1)] > !arg2:
        revert with 0, 17
    stor27[address(arg1)] += arg2
    stor51 = 1
}

function payToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor51 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor51 = 2
    if arg2 > stor26[msg.sender]:
        revert with 0, 'Not enough token'
    if stor26[msg.sender] < arg2:
        revert with 0, 17
    stor26[msg.sender] -= arg2
    if stor26[address(arg1)] > !arg2:
        revert with 0, 17
    stor26[address(arg1)] += arg2
    stor51 = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        if 1 == ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if bool(stor25[address(arg1)]) != 1:
                revert with 0, '3rd party not supported'
    else:
        if 1 == bool(ext_code.hash(arg1)):
            if bool(stor25[address(arg1)]) != 1:
                revert with 0, '3rd party not supported'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addBacking() payable {
    require ext_code.size(mainAddress)
    call mainAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and 275 * 10^12 * 3600 > -1 / msg.value:
        revert with 0, 17
    if msg.value:
        if not msg.value:
            revert with 0, 18
        if 275 * 10^12 * 3600 * msg.value / msg.value != 275 * 10^12 * 3600:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(275 * 10^12 * 3600 * msg.value):
        revert with 0, 17
    if (275 * 10^12 * 3600 * msg.value) + 5 * 10^17 < 275 * 10^12 * 3600 * msg.value:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if _totalSupply5 > !((275 * 10^12 * 3600 * msg.value) + 5 * 10^17 / 10^18):
        revert with 0, 17
    _totalSupply5 += (275 * 10^12 * 3600 * msg.value) + 5 * 10^17 / 10^18
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        if 1 == ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if bool(stor25[address(arg1)]) != 1:
                revert with 0, '3rd party not supported'
    else:
        if 1 == bool(ext_code.hash(arg1)):
            if bool(stor25[address(arg1)]) != 1:
                revert with 0, '3rd party not supported'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function migrateTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(imported) != 1:
        revert with 0, 'Must be importable'
    require ext_code.size(migrateFromAddress)
    call migrateFromAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor51 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if _totalSupply9 < arg1:
        revert with 0, 17
    _totalSupply9 -= arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        if 1 == ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if bool(stor25[address(arg1)]) != 1:
                revert with 0, '3rd party not supported'
    else:
        if 1 == bool(ext_code.hash(arg1)):
            if bool(stor25[address(arg1)]) != 1:
                revert with 0, '3rd party not supported'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setMaxBuySellRatio(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _beneficiaryAddress != msg.sender:
        revert with 0, 'You do not have permission'
    if totalSupply > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if totalSupply:
        if not totalSupply:
            revert with 0, 18
        if 10^18 * totalSupply / totalSupply != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * totalSupply > -501:
        revert with 0, 17
    if (10^18 * totalSupply) + 500 < 10^18 * totalSupply:
        revert with 0, 'ERR_DIV_INTERNAL'
    if arg1 < (10^18 * totalSupply) + 500 / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'min 0.1% of token supply, max 100% of token supply'
    if arg1 > totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'min 0.1% of token supply, max 100% of token supply'
    if arg2 < 2 * 10^18:
        revert with 0, '2 BNB minimum'
    MAX_SELL_RATIO = arg1
    MAX_BUY_RATIO = arg2
}

function withdrawInternal(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if mainAddress == arg1:
        if tokenAddress != arg1:
            if arg2 > stor27[msg.sender]:
                revert with 0, 'Not enough Main'
            if _totalSupply2 < arg2:
                revert with 0, 17
            _totalSupply2 -= arg2
            if stor27[msg.sender] < arg2:
                revert with 0, 17
            stor27[msg.sender] -= arg2
            require ext_code.size(mainAddress)
            call mainAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
        else:
            if arg2 > stor26[msg.sender]:
                revert with 0, 'Not enough token'
            if _totalSupply1 < arg2:
                revert with 0, 17
            _totalSupply1 -= arg2
            if stor26[msg.sender] < arg2:
                revert with 0, 17
            stor26[msg.sender] -= arg2
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
    else:
        require tokenAddress == arg1
        if arg2 > stor26[msg.sender]:
            revert with 0, 'Not enough token'
        if _totalSupply1 < arg2:
            revert with 0, 17
        _totalSupply1 -= arg2
        if stor26[msg.sender] < arg2:
            revert with 0, 17
        stor26[msg.sender] -= arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function swapToSwap(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor51 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor51 = 2
    if arg4 > stor27[msg.sender]:
        revert with 0, 'Not enough Main'
    if arg4 and 275 * 10^12 * 3600 > -1 / arg4:
        revert with 0, 17
    if arg4:
        if not arg4:
            revert with 0, 18
        if 275 * 10^12 * 3600 * arg4 / arg4 != 275 * 10^12 * 3600:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(275 * 10^12 * 3600 * arg4):
        revert with 0, 17
    if (275 * 10^12 * 3600 * arg4) + 5 * 10^17 < 275 * 10^12 * 3600 * arg4:
        revert with 0, 'ERR_MUL_OVERFLOW'
    require ext_code.size(mainAddress)
    call mainAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if _totalSupply2 < arg4:
        revert with 0, 17
    _totalSupply2 -= arg4
    if stor27[msg.sender] < arg4:
        if arg4 < stor27[msg.sender]:
            revert with 0, 17
        revert with 0, 'ERR_SUB_UNDERFLOW'
    stor27[msg.sender] -= arg4
    require ext_code.size(arg1)
    call arg1.0xbbf12714 with:
         gas gas_remaining wei
        args mainAddress, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x65d1a40d with:
         gas gas_remaining wei
        args address(arg3), (275 * 10^12 * 3600 * arg4) + 5 * 10^17 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor51 = 1
}

function extendLoan() {
    if stor51 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor51 = 2
    if not _loansToken[msg.sender]:
        revert with 0, 'Period ended'
    if block.timestamp >= lendData[msg.sender]:
        revert with 0, 'Period ended'
    if _loansToken[msg.sender] and 2775 * 10^11 * 24 * 3600 > -1 / _loansToken[msg.sender]:
        revert with 0, 17
    if _loansToken[msg.sender]:
        if not _loansToken[msg.sender]:
            revert with 0, 18
        if 2775 * 10^11 * 24 * 3600 * _loansToken[msg.sender] / _loansToken[msg.sender] != 2775 * 10^11 * 24 * 3600:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(2775 * 10^11 * 24 * 3600 * _loansToken[msg.sender]):
        revert with 0, 17
    if (2775 * 10^11 * 24 * 3600 * _loansToken[msg.sender]) + 5 * 10^17 < 2775 * 10^11 * 24 * 3600 * _loansToken[msg.sender]:
        revert with 0, 'ERR_MUL_OVERFLOW'
    _loansToken[msg.sender] = (2775 * 10^11 * 24 * 3600 * _loansToken[msg.sender]) + 5 * 10^17 / 10^18
    if 720 * 24 * 3600 > !lendData[msg.sender]:
        revert with 0, 17
    if lendData[msg.sender] > !(lendData[msg.sender] + (720 * 24 * 3600)):
        revert with 0, 17
    lendData[msg.sender] = (2 * lendData[msg.sender]) + (720 * 24 * 3600)
    if _loansToken[msg.sender] and 10^15 > -1 / _loansToken[msg.sender]:
        revert with 0, 17
    if _loansToken[msg.sender]:
        if not _loansToken[msg.sender]:
            revert with 0, 18
        if 10^15 * _loansToken[msg.sender] / _loansToken[msg.sender] != 10^15:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(10^15 * _loansToken[msg.sender]):
        revert with 0, 17
    if (10^15 * _loansToken[msg.sender]) + 5 * 10^17 < 10^15 * _loansToken[msg.sender]:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if collateral < (10^15 * _loansToken[msg.sender]) + 5 * 10^17 / 10^18:
        revert with 0, 17
    collateral -= (10^15 * _loansToken[msg.sender]) + 5 * 10^17 / 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor7, (10^15 * _loansToken[msg.sender]) + 5 * 10^17 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor51 = 1
}

function deploySwap(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(mainAddress)
    call mainAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2 + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if arg3 and 275 * 10^12 * 3600 > -1 / arg3:
        revert with 0, 17
    if arg3:
        if not arg3:
            revert with 0, 18
        if 275 * 10^12 * 3600 * arg3 / arg3 != 275 * 10^12 * 3600:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(275 * 10^12 * 3600 * arg3):
        revert with 0, 17
    if (275 * 10^12 * 3600 * arg3) + 5 * 10^17 < 275 * 10^12 * 3600 * arg3:
        revert with 0, 'ERR_MUL_OVERFLOW'
    _totalSupply5 = (275 * 10^12 * 3600 * arg3) + 5 * 10^17 / 10^18
    stor13 = 1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _totalSupply9 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < _totalSupply9:
        revert with 0, 17
    balance[stor4] = ext_call.return_data[0] - _totalSupply9
    if arg2 and 275 * 10^12 * 3600 > -1 / arg2:
        revert with 0, 17
    if arg2:
        if not arg2:
            revert with 0, 18
        if 275 * 10^12 * 3600 * arg2 / arg2 != 275 * 10^12 * 3600:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(275 * 10^12 * 3600 * arg2):
        revert with 0, 17
    if (275 * 10^12 * 3600 * arg2) + 5 * 10^17 < 275 * 10^12 * 3600 * arg2:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if balance[stor3] > !((275 * 10^12 * 3600 * arg2) + 5 * 10^17 / 10^18):
        revert with 0, 17
    balance[stor3] += (275 * 10^12 * 3600 * arg2) + 5 * 10^17 / 10^18
}

function depositInternal(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if mainAddress != arg1:
        require tokenAddress == arg1
    if bool(open) != 1:
        revert with 0, 'Swap not activated'
    if tokenAddress == arg1:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        if arg2 and 275 * 10^12 * 3600 > -1 / arg2:
            revert with 0, 17
        if arg2:
            if not arg2:
                revert with 0, 18
            if 275 * 10^12 * 3600 * arg2 / arg2 != 275 * 10^12 * 3600:
                revert with 0, 'ERR_MUL_OVERFLOW'
        if 5 * 10^17 > !(275 * 10^12 * 3600 * arg2):
            revert with 0, 17
        if (275 * 10^12 * 3600 * arg2) + 5 * 10^17 < 275 * 10^12 * 3600 * arg2:
            revert with 0, 'ERR_MUL_OVERFLOW'
        if _totalSupply1 > !((275 * 10^12 * 3600 * arg2) + 5 * 10^17 / 10^18):
            revert with 0, 17
        _totalSupply1 += (275 * 10^12 * 3600 * arg2) + 5 * 10^17 / 10^18
        if stor26[msg.sender] > !((275 * 10^12 * 3600 * arg2) + 5 * 10^17 / 10^18):
            revert with 0, 17
        stor26[msg.sender] += (275 * 10^12 * 3600 * arg2) + 5 * 10^17 / 10^18
    else:
        require ext_code.size(mainAddress)
        call mainAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        if tx1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if tx1:
            if not tx1:
                revert with 0, 18
            if 10^18 * tx1 / tx1 != 10^18:
                revert with 0, 'ERR_DIV_INTERNAL'
        if 10^18 * tx1 > -51:
            revert with 0, 17
        if (10^18 * tx1) + 50 < 10^18 * tx1:
            revert with 0, 'ERR_DIV_INTERNAL'
        if arg2 and (10^18 * tx1) + 50 / 100 > -1 / arg2:
            revert with 0, 17
        if arg2:
            if not arg2:
                revert with 0, 18
            if arg2 * (10^18 * tx1) + 50 / 100 / arg2 != (10^18 * tx1) + 50 / 100:
                revert with 0, 'ERR_MUL_OVERFLOW'
        if 5 * 10^17 > !(arg2 * (10^18 * tx1) + 50 / 100):
            revert with 0, 17
        if (arg2 * (10^18 * tx1) + 50 / 100) + 5 * 10^17 < arg2 * (10^18 * tx1) + 50 / 100:
            revert with 0, 'ERR_MUL_OVERFLOW'
        if _totalSupply2 > !((arg2 * (10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18):
            revert with 0, 17
        _totalSupply2 += (arg2 * (10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18
        if stor27[msg.sender] > !((arg2 * (10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18):
            revert with 0, 17
        stor27[msg.sender] += (arg2 * (10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18
}

function getSpotPrice(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balance[address(arg1)] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if balance[address(arg1)]:
        if not balance[address(arg1)]:
            revert with 0, 18
        if 10^18 * balance[address(arg1)] / balance[address(arg1)] != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * balance[address(arg1)] > -13:
        revert with 0, 17
    if (10^18 * balance[address(arg1)]) + 12 < 10^18 * balance[address(arg1)]:
        revert with 0, 'ERR_DIV_INTERNAL'
    if balance[arg2] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if balance[arg2]:
        if not balance[arg2]:
            revert with 0, 18
        if 10^18 * balance[arg2] / balance[arg2] != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * balance[arg2] > -13:
        revert with 0, 17
    if (10^18 * balance[arg2]) + 12 < 10^18 * balance[arg2]:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not (10^18 * balance[arg2]) + 12 / 25:
        revert with 0, 'ERR_DIV_ZERO'
    if (10^18 * balance[address(arg1)]) + 12 / 25 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if (10^18 * balance[address(arg1)]) + 12 / 25:
        if not (10^18 * balance[address(arg1)]) + 12 / 25:
            revert with 0, 18
        if 10^18 * (10^18 * balance[address(arg1)]) + 12 / 25 / (10^18 * balance[address(arg1)]) + 12 / 25 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * (10^18 * balance[address(arg1)]) + 12 / 25 > !((10^18 * balance[arg2]) + 12 / 25 / 2):
        revert with 0, 17
    if (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) < 10^18 * (10^18 * balance[address(arg1)]) + 12 / 25:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not (10^18 * balance[arg2]) + 12 / 25:
        revert with 0, 18
    if (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25 and 10^18 > -1 / (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25:
        revert with 0, 17
    if (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25:
        if not (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25:
            revert with 0, 18
        if 10^18 * (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25 / (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25 != 10^18:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(10^18 * (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25):
        revert with 0, 17
    if (10^18 * (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25) + 5 * 10^17 < 10^18 * (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25:
        revert with 0, 'ERR_MUL_OVERFLOW'
    return ((10^18 * (10^18 * (10^18 * balance[address(arg1)]) + 12 / 25) + ((10^18 * balance[arg2]) + 12 / 25 / 2) / (10^18 * balance[arg2]) + 12 / 25) + 5 * 10^17 / 10^18)
}

function name() {
    if bool(stor47.length):
        if bool(stor47.length) == uint255(stor47.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor47.length):
            if bool(stor47.length) == uint255(stor47.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor47.length):
                if 31 < uint255(stor47.length) * 0.5:
                    mem[128] = uint256(stor47.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor47.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor47[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor47.length), data=mem[128 len ceil32(uint255(stor47.length) * 0.5)])
                mem[128] = 256 * stor47.length.field_8
        else:
            if bool(stor47.length) == stor47.length.field_1 < 32:
                revert with 0, 34
            if stor47.length.field_1:
                if 31 < stor47.length.field_1:
                    mem[128] = uint256(stor47.field_0)
                    idx = 128
                    s = 0
                    while stor47.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor47[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor47.length), data=mem[128 len ceil32(uint255(stor47.length) * 0.5)])
                mem[128] = 256 * stor47.length.field_8
        mem[ceil32(uint255(stor47.length) * 0.5) + 192 len ceil32(uint255(stor47.length) * 0.5)] = mem[128 len ceil32(uint255(stor47.length) * 0.5)]
        if ceil32(uint255(stor47.length) * 0.5) > uint255(stor47.length) * 0.5:
            mem[(uint255(stor47.length) * 0.5) + ceil32(uint255(stor47.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor47.length), data=mem[128 len ceil32(uint255(stor47.length) * 0.5)], mem[(2 * ceil32(uint255(stor47.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor47.length) * 0.5)]), 
    if bool(stor47.length) == stor47.length.field_1 < 32:
        revert with 0, 34
    if bool(stor47.length):
        if bool(stor47.length) == uint255(stor47.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor47.length):
            if 31 < uint255(stor47.length) * 0.5:
                mem[128] = uint256(stor47.field_0)
                idx = 128
                s = 0
                while (uint255(stor47.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor47[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor47.length % 128, data=mem[128 len ceil32(stor47.length.field_1)])
            mem[128] = 256 * stor47.length.field_8
    else:
        if bool(stor47.length) == stor47.length.field_1 < 32:
            revert with 0, 34
        if stor47.length.field_1:
            if 31 < stor47.length.field_1:
                mem[128] = uint256(stor47.field_0)
                idx = 128
                s = 0
                while stor47.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor47[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor47.length % 128, data=mem[128 len ceil32(stor47.length.field_1)])
            mem[128] = 256 * stor47.length.field_8
    mem[ceil32(stor47.length.field_1) + 192 len ceil32(stor47.length.field_1)] = mem[128 len ceil32(stor47.length.field_1)]
    if ceil32(stor47.length.field_1) > stor47.length.field_1:
        mem[stor47.length.field_1 + ceil32(stor47.length.field_1) + 192] = 0
    return Array(len=stor47.length % 128, data=mem[128 len ceil32(stor47.length.field_1)], mem[(2 * ceil32(stor47.length.field_1)) + 192 len 2 * ceil32(stor47.length.field_1)]), 
}

function symbol() {
    if bool(stor48.length):
        if bool(stor48.length) == uint255(stor48.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor48.length):
            if bool(stor48.length) == uint255(stor48.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor48.length):
                if 31 < uint255(stor48.length) * 0.5:
                    mem[128] = uint256(stor48.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor48.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor48[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor48.length), data=mem[128 len ceil32(uint255(stor48.length) * 0.5)])
                mem[128] = 256 * stor48.length.field_8
        else:
            if bool(stor48.length) == stor48.length.field_1 < 32:
                revert with 0, 34
            if stor48.length.field_1:
                if 31 < stor48.length.field_1:
                    mem[128] = uint256(stor48.field_0)
                    idx = 128
                    s = 0
                    while stor48.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor48[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor48.length), data=mem[128 len ceil32(uint255(stor48.length) * 0.5)])
                mem[128] = 256 * stor48.length.field_8
        mem[ceil32(uint255(stor48.length) * 0.5) + 192 len ceil32(uint255(stor48.length) * 0.5)] = mem[128 len ceil32(uint255(stor48.length) * 0.5)]
        if ceil32(uint255(stor48.length) * 0.5) > uint255(stor48.length) * 0.5:
            mem[(uint255(stor48.length) * 0.5) + ceil32(uint255(stor48.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor48.length), data=mem[128 len ceil32(uint255(stor48.length) * 0.5)], mem[(2 * ceil32(uint255(stor48.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor48.length) * 0.5)]), 
    if bool(stor48.length) == stor48.length.field_1 < 32:
        revert with 0, 34
    if bool(stor48.length):
        if bool(stor48.length) == uint255(stor48.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor48.length):
            if 31 < uint255(stor48.length) * 0.5:
                mem[128] = uint256(stor48.field_0)
                idx = 128
                s = 0
                while (uint255(stor48.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor48[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor48.length % 128, data=mem[128 len ceil32(stor48.length.field_1)])
            mem[128] = 256 * stor48.length.field_8
    else:
        if bool(stor48.length) == stor48.length.field_1 < 32:
            revert with 0, 34
        if stor48.length.field_1:
            if 31 < stor48.length.field_1:
                mem[128] = uint256(stor48.field_0)
                idx = 128
                s = 0
                while stor48.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor48[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor48.length % 128, data=mem[128 len ceil32(stor48.length.field_1)])
            mem[128] = 256 * stor48.length.field_8
    mem[ceil32(stor48.length.field_1) + 192 len ceil32(stor48.length.field_1)] = mem[128 len ceil32(stor48.length.field_1)]
    if ceil32(stor48.length.field_1) > stor48.length.field_1:
        mem[stor48.length.field_1 + ceil32(stor48.length.field_1) + 192] = 0
    return Array(len=stor48.length % 128, data=mem[128 len ceil32(stor48.length.field_1)], mem[(2 * ceil32(stor48.length.field_1)) + 192 len 2 * ceil32(stor48.length.field_1)]), 
}

function oneTokentoBacking() {
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !collateral:
        revert with 0, 17
    if ext_call.return_data[0] + collateral < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + collateral > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < ext_call.return_data[0] + collateral:
        revert with 0, 17
    if tx1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if tx1:
        if not tx1:
            revert with 0, 18
        if 10^18 * tx1 / tx1 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * tx1 > -51:
        revert with 0, 17
    if (10^18 * tx1) + 50 < 10^18 * tx1:
        revert with 0, 'ERR_DIV_INTERNAL'
    if (10^18 * tx1) + 50 / 100 > -1:
        revert with 0, 17
    if (10^18 * tx1) + 50 / 100 != (10^18 * tx1) + 50 / 100:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !((10^18 * tx1) + 50 / 100):
        revert with 0, 17
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 < (10^18 * tx1) + 50 / 100:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if not totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 'ERR_DIV_ZERO'
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
        if not ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
            revert with 0, 18
        if 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 / ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 > !(totalSupply - ext_call.return_data[0] - collateral / 2):
        revert with 0, 17
    if (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) < 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 18
    if _totalSupply5 and (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral > -1 / _totalSupply5:
        revert with 0, 17
    if _totalSupply5:
        if not _totalSupply5:
            revert with 0, 18
        if _totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral / _totalSupply5 != (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral):
        revert with 0, 17
    if (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 < _totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 'ERR_MUL_OVERFLOW'
    return ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18)
}

function calcSpotPrice(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not arg2:
        revert with 0, 'ERR_DIV_ZERO'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg1:
        if not arg1:
            revert with 0, 18
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * arg1 > !(arg2 / 2):
        revert with 0, 17
    if (10^18 * arg1) + (arg2 / 2) < 10^18 * arg1:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not arg2:
        revert with 0, 18
    if not arg4:
        revert with 0, 'ERR_DIV_ZERO'
    if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg3:
        if not arg3:
            revert with 0, 18
        if 10^18 * arg3 / arg3 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * arg3 > !(arg4 / 2):
        revert with 0, 17
    if (10^18 * arg3) + (arg4 / 2) < 10^18 * arg3:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not arg4:
        revert with 0, 18
    if not (10^18 * arg3) + (arg4 / 2) / arg4:
        revert with 0, 'ERR_DIV_ZERO'
    if (10^18 * arg1) + (arg2 / 2) / arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if (10^18 * arg1) + (arg2 / 2) / arg2:
        if not (10^18 * arg1) + (arg2 / 2) / arg2:
            revert with 0, 18
        if 10^18 * (10^18 * arg1) + (arg2 / 2) / arg2 / (10^18 * arg1) + (arg2 / 2) / arg2 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * (10^18 * arg1) + (arg2 / 2) / arg2 > !((10^18 * arg3) + (arg4 / 2) / arg4 / 2):
        revert with 0, 17
    if (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) < 10^18 * (10^18 * arg1) + (arg2 / 2) / arg2:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not (10^18 * arg3) + (arg4 / 2) / arg4:
        revert with 0, 18
    if 10^18 < arg5:
        if arg5 < 10^18:
            revert with 0, 17
        revert with 0, 'ERR_SUB_UNDERFLOW'
    if not -arg5 + 10^18:
        revert with 0, 'ERR_DIV_ZERO'
    if 1000000000000000000 * 10^18 > !(-arg5 + 10^18 / 2):
        revert with 0, 17
    if (-arg5 + 10^18 / 2) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not -arg5 + 10^18:
        revert with 0, 18
    if (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4 and (-arg5 + 10^18 / 2) + 1000000000000000000 * 10^18 / -arg5 + 10^18 > -1 / (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4:
        revert with 0, 17
    if (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4:
        if not (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4:
            revert with 0, 18
        if (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4 * (-arg5 + 10^18 / 2) + 1000000000000000000 * 10^18 / -arg5 + 10^18 / (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4 != (-arg5 + 10^18 / 2) + 1000000000000000000 * 10^18 / -arg5 + 10^18:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !((10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4 * (-arg5 + 10^18 / 2) + 1000000000000000000 * 10^18 / -arg5 + 10^18):
        revert with 0, 17
    if ((10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4 * (-arg5 + 10^18 / 2) + 1000000000000000000 * 10^18 / -arg5 + 10^18) + 5 * 10^17 < (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4 * (-arg5 + 10^18 / 2) + 1000000000000000000 * 10^18 / -arg5 + 10^18:
        revert with 0, 'ERR_MUL_OVERFLOW'
    return (((10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + ((10^18 * arg3) + (arg4 / 2) / arg4 / 2) / (10^18 * arg3) + (arg4 / 2) / arg4 * (-arg5 + 10^18 / 2) + 1000000000000000000 * 10^18 / -arg5 + 10^18) + 5 * 10^17 / 10^18)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg2 / 100:
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 < 0:
            revert with 0, 17
        require totalSupply > 0
        if not totalSupply:
            revert with 0, 18
        require totalSupply > 0
        if not totalSupply:
            revert with 0, 18
        if not arg2:
            if 0 > stor31[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor31[address(msg.sender)] < 0:
                revert with 0, 17
            if stor31[arg1] > -1:
                revert with 0, 17
            if stor31[arg1] < stor31[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            stor31[address(arg1)] = stor31[arg1]
        else:
            if arg2 and stor38 / totalSupply > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * stor38 / totalSupply / arg2 != stor38 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg2 * stor38 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg2 * stor38 / totalSupply < 0:
                revert with 0, 17
            if arg2 * stor38 / totalSupply > stor31[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor31[address(msg.sender)] < arg2 * stor38 / totalSupply:
                revert with 0, 17
            stor31[address(msg.sender)] += -1 * arg2 * stor38 / totalSupply
            if stor31[arg1] > !(arg2 * stor38 / totalSupply):
                revert with 0, 17
            if stor31[arg1] + (arg2 * stor38 / totalSupply) < stor31[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            stor31[address(arg1)] = stor31[arg1] + (arg2 * stor38 / totalSupply)
        if 0 > stor38:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor38 < 0:
            revert with 0, 17
        if stor39 > -1:
            revert with 0, 17
        if stor39 < stor39:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg2 / 100 and 2 > -1 / arg2 / 100:
            revert with 0, 17
        if not arg2 / 100:
            revert with 0, 18
        if 2 * arg2 / 100 / arg2 / 100 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 2 * arg2 / 100 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 < 2 * arg2 / 100:
            revert with 0, 17
        require totalSupply > 0
        if not totalSupply:
            revert with 0, 18
        require totalSupply > 0
        if not totalSupply:
            revert with 0, 18
        if not arg2:
            if not 2 * arg2 / 100:
                if 0 > stor31[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor31[address(msg.sender)] < 0:
                    revert with 0, 17
                if stor31[arg1] > -1:
                    revert with 0, 17
                if stor31[arg1] < stor31[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[arg1]
                if 0 > stor38:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor38 < 0:
                    revert with 0, 17
            else:
                if uint255(arg2 / 100) and stor38 / totalSupply > -1 / 2 * arg2 / 100:
                    revert with 0, 17
                if not 2 * arg2 / 100:
                    revert with 0, 18
                if 2 * arg2 / 100 * stor38 / totalSupply / 2 * arg2 / 100 != stor38 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 * arg2 / 100 * stor38 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 2 * arg2 / 100 * stor38 / totalSupply:
                    revert with 0, 17
                if 0 > stor31[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor31[address(msg.sender)] < 0:
                    revert with 0, 17
                if stor31[arg1] > !(-1 * 2 * arg2 / 100 * stor38 / totalSupply):
                    revert with 0, 17
                if stor31[arg1] - (2 * arg2 / 100 * stor38 / totalSupply) < stor31[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[arg1] - (2 * arg2 / 100 * stor38 / totalSupply)
                if 2 * arg2 / 100 * stor38 / totalSupply > stor38:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor38 < 2 * arg2 / 100 * stor38 / totalSupply:
                    revert with 0, 17
                stor38 += -1 * 2 * arg2 / 100 * stor38 / totalSupply
        else:
            if arg2 and stor38 / totalSupply > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * stor38 / totalSupply / arg2 != stor38 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 2 * arg2 / 100:
                if 0 > arg2 * stor38 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 * stor38 / totalSupply < 0:
                    revert with 0, 17
                if arg2 * stor38 / totalSupply > stor31[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor31[address(msg.sender)] < arg2 * stor38 / totalSupply:
                    revert with 0, 17
                stor31[address(msg.sender)] += -1 * arg2 * stor38 / totalSupply
                if stor31[arg1] > !(arg2 * stor38 / totalSupply):
                    revert with 0, 17
                if stor31[arg1] + (arg2 * stor38 / totalSupply) < stor31[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[arg1] + (arg2 * stor38 / totalSupply)
                if 0 > stor38:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor38 < 0:
                    revert with 0, 17
            else:
                if uint255(arg2 / 100) and stor38 / totalSupply > -1 / 2 * arg2 / 100:
                    revert with 0, 17
                if not 2 * arg2 / 100:
                    revert with 0, 18
                if 2 * arg2 / 100 * stor38 / totalSupply / 2 * arg2 / 100 != stor38 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 * arg2 / 100 * stor38 / totalSupply > arg2 * stor38 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 * stor38 / totalSupply < 2 * arg2 / 100 * stor38 / totalSupply:
                    revert with 0, 17
                if arg2 * stor38 / totalSupply > stor31[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor31[address(msg.sender)] < arg2 * stor38 / totalSupply:
                    revert with 0, 17
                stor31[address(msg.sender)] += -1 * arg2 * stor38 / totalSupply
                if stor31[arg1] > !((arg2 * stor38 / totalSupply) - (2 * arg2 / 100 * stor38 / totalSupply)):
                    revert with 0, 17
                if stor31[arg1] + (arg2 * stor38 / totalSupply) - (2 * arg2 / 100 * stor38 / totalSupply) < stor31[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg1)] = stor31[arg1] + (arg2 * stor38 / totalSupply) - (2 * arg2 / 100 * stor38 / totalSupply)
                if 2 * arg2 / 100 * stor38 / totalSupply > stor38:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor38 < 2 * arg2 / 100 * stor38 / totalSupply:
                    revert with 0, 17
                stor38 += -1 * 2 * arg2 / 100 * stor38 / totalSupply
        if stor39 > !(2 * arg2 / 100):
            revert with 0, 17
        if stor39 + (2 * arg2 / 100) < stor39:
            revert with 0, 'SafeMath: addition overflow'
        stor39 += 2 * arg2 / 100
        emit Transfer((arg2 - (2 * arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg3 / 100:
        if 0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg3 < 0:
            revert with 0, 17
        require totalSupply > 0
        if not totalSupply:
            revert with 0, 18
        require totalSupply > 0
        if not totalSupply:
            revert with 0, 18
        if not arg3:
            if 0 > stor31[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor31[address(arg1)] < 0:
                revert with 0, 17
            if stor31[arg2] > -1:
                revert with 0, 17
            if stor31[arg2] < stor31[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            stor31[address(arg2)] = stor31[arg2]
        else:
            if arg3 and stor38 / totalSupply > -1 / arg3:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if arg3 * stor38 / totalSupply / arg3 != stor38 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg3 * stor38 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg3 * stor38 / totalSupply < 0:
                revert with 0, 17
            if arg3 * stor38 / totalSupply > stor31[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor31[address(arg1)] < arg3 * stor38 / totalSupply:
                revert with 0, 17
            stor31[address(arg1)] += -1 * arg3 * stor38 / totalSupply
            if stor31[arg2] > !(arg3 * stor38 / totalSupply):
                revert with 0, 17
            if stor31[arg2] + (arg3 * stor38 / totalSupply) < stor31[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            stor31[address(arg2)] = stor31[arg2] + (arg3 * stor38 / totalSupply)
        if 0 > stor38:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor38 < 0:
            revert with 0, 17
        if stor39 > -1:
            revert with 0, 17
        if stor39 < stor39:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg3 / 100 and 2 > -1 / arg3 / 100:
            revert with 0, 17
        if not arg3 / 100:
            revert with 0, 18
        if 2 * arg3 / 100 / arg3 / 100 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 2 * arg3 / 100 > arg3:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg3 < 2 * arg3 / 100:
            revert with 0, 17
        require totalSupply > 0
        if not totalSupply:
            revert with 0, 18
        require totalSupply > 0
        if not totalSupply:
            revert with 0, 18
        if not arg3:
            if not 2 * arg3 / 100:
                if 0 > stor31[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor31[address(arg1)] < 0:
                    revert with 0, 17
                if stor31[arg2] > -1:
                    revert with 0, 17
                if stor31[arg2] < stor31[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg2)] = stor31[arg2]
                if 0 > stor38:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor38 < 0:
                    revert with 0, 17
            else:
                if uint255(arg3 / 100) and stor38 / totalSupply > -1 / 2 * arg3 / 100:
                    revert with 0, 17
                if not 2 * arg3 / 100:
                    revert with 0, 18
                if 2 * arg3 / 100 * stor38 / totalSupply / 2 * arg3 / 100 != stor38 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 * arg3 / 100 * stor38 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 2 * arg3 / 100 * stor38 / totalSupply:
                    revert with 0, 17
                if 0 > stor31[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor31[address(arg1)] < 0:
                    revert with 0, 17
                if stor31[arg2] > !(-1 * 2 * arg3 / 100 * stor38 / totalSupply):
                    revert with 0, 17
                if stor31[arg2] - (2 * arg3 / 100 * stor38 / totalSupply) < stor31[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg2)] = stor31[arg2] - (2 * arg3 / 100 * stor38 / totalSupply)
                if 2 * arg3 / 100 * stor38 / totalSupply > stor38:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor38 < 2 * arg3 / 100 * stor38 / totalSupply:
                    revert with 0, 17
                stor38 += -1 * 2 * arg3 / 100 * stor38 / totalSupply
        else:
            if arg3 and stor38 / totalSupply > -1 / arg3:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if arg3 * stor38 / totalSupply / arg3 != stor38 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 2 * arg3 / 100:
                if 0 > arg3 * stor38 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg3 * stor38 / totalSupply < 0:
                    revert with 0, 17
                if arg3 * stor38 / totalSupply > stor31[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor31[address(arg1)] < arg3 * stor38 / totalSupply:
                    revert with 0, 17
                stor31[address(arg1)] += -1 * arg3 * stor38 / totalSupply
                if stor31[arg2] > !(arg3 * stor38 / totalSupply):
                    revert with 0, 17
                if stor31[arg2] + (arg3 * stor38 / totalSupply) < stor31[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg2)] = stor31[arg2] + (arg3 * stor38 / totalSupply)
                if 0 > stor38:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor38 < 0:
                    revert with 0, 17
            else:
                if uint255(arg3 / 100) and stor38 / totalSupply > -1 / 2 * arg3 / 100:
                    revert with 0, 17
                if not 2 * arg3 / 100:
                    revert with 0, 18
                if 2 * arg3 / 100 * stor38 / totalSupply / 2 * arg3 / 100 != stor38 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 2 * arg3 / 100 * stor38 / totalSupply > arg3 * stor38 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg3 * stor38 / totalSupply < 2 * arg3 / 100 * stor38 / totalSupply:
                    revert with 0, 17
                if arg3 * stor38 / totalSupply > stor31[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor31[address(arg1)] < arg3 * stor38 / totalSupply:
                    revert with 0, 17
                stor31[address(arg1)] += -1 * arg3 * stor38 / totalSupply
                if stor31[arg2] > !((arg3 * stor38 / totalSupply) - (2 * arg3 / 100 * stor38 / totalSupply)):
                    revert with 0, 17
                if stor31[arg2] + (arg3 * stor38 / totalSupply) - (2 * arg3 / 100 * stor38 / totalSupply) < stor31[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                stor31[address(arg2)] = stor31[arg2] + (arg3 * stor38 / totalSupply) - (2 * arg3 / 100 * stor38 / totalSupply)
                if 2 * arg3 / 100 * stor38 / totalSupply > stor38:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor38 < 2 * arg3 / 100 * stor38 / totalSupply:
                    revert with 0, 17
                stor38 += -1 * 2 * arg3 / 100 * stor38 / totalSupply
        if stor39 > !(2 * arg3 / 100):
            revert with 0, 17
        if stor39 + (2 * arg3 / 100) < stor39:
            revert with 0, 'SafeMath: addition overflow'
        stor39 += 2 * arg3 / 100
        emit Transfer((arg3 - (2 * arg3 / 100)), arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(msg.sender):
        if 1 == ext_code.hash(msg.sender) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if bool(stor25[address(msg.sender)]) != 1:
                revert with 0, '3rd party not supported'
    else:
        if 1 == bool(ext_code.hash(msg.sender)):
            if bool(stor25[address(msg.sender)]) != 1:
                revert with 0, '3rd party not supported'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function amountToRepay(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !collateral:
        revert with 0, 17
    if ext_call.return_data[0] + collateral < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + collateral > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < ext_call.return_data[0] + collateral:
        revert with 0, 17
    if tx1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if tx1:
        if not tx1:
            revert with 0, 18
        if 10^18 * tx1 / tx1 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * tx1 > -51:
        revert with 0, 17
    if (10^18 * tx1) + 50 < 10^18 * tx1:
        revert with 0, 'ERR_DIV_INTERNAL'
    if (10^18 * tx1) + 50 / 100 > -1:
        revert with 0, 17
    if (10^18 * tx1) + 50 / 100 != (10^18 * tx1) + 50 / 100:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !((10^18 * tx1) + 50 / 100):
        revert with 0, 17
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 < (10^18 * tx1) + 50 / 100:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if not totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 'ERR_DIV_ZERO'
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
        if not ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
            revert with 0, 18
        if 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 / ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 > !(totalSupply - ext_call.return_data[0] - collateral / 2):
        revert with 0, 17
    if (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) < 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 18
    if _totalSupply5 and (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral > -1 / _totalSupply5:
        revert with 0, 17
    if _totalSupply5:
        if not _totalSupply5:
            revert with 0, 18
        if _totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral / _totalSupply5 != (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral):
        revert with 0, 17
    if (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 < _totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if stor28[address(arg1)] > (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 < stor28[address(arg1)]:
        revert with 0, 17
    if not ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(arg1)]:
        if stor29[address(arg1)] > -1:
            revert with 0, 17
        if stor29[address(arg1)] and 0 > -1 / stor29[address(arg1)]:
            revert with 0, 17
        if stor29[address(arg1)]:
            if not stor29[address(arg1)]:
                revert with 0, 18
            if 0 / stor29[address(arg1)]:
                revert with 0, 'ERR_MUL_OVERFLOW'
        if stor29[address(arg1)] > -1:
            revert with 0, 17
        if stor29[address(arg1)] < stor29[address(arg1)]:
            revert with 0, 'ERR_ADD_OVERFLOW'
        return stor29[address(arg1)]
    if ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(arg1)] and _loansToken[address(arg1)] > -1 / ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(arg1)]:
        revert with 0, 17
    if not ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(arg1)]:
        revert with 0, 18
    if ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)]) / ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(arg1)] != _loansToken[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor29[address(arg1)] > !(((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)])):
        revert with 0, 17
    if stor29[address(arg1)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)]) and 0 > -1 / stor29[address(arg1)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)]):
        revert with 0, 17
    if stor29[address(arg1)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)]):
        if not stor29[address(arg1)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)]):
            revert with 0, 18
        if 0 / stor29[address(arg1)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)]):
            revert with 0, 'ERR_MUL_OVERFLOW'
    if stor29[address(arg1)] > !(((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)])):
        revert with 0, 17
    if stor29[address(arg1)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)]) > -1:
        revert with 0, 17
    return (stor29[address(arg1)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(arg1)]) - (stor28[address(arg1)] * _loansToken[address(arg1)]))
}

function repayLoan() {
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !collateral:
        revert with 0, 17
    if ext_call.return_data[0] + collateral < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + collateral > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < ext_call.return_data[0] + collateral:
        revert with 0, 17
    if tx1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if tx1:
        if not tx1:
            revert with 0, 18
        if 10^18 * tx1 / tx1 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * tx1 > -51:
        revert with 0, 17
    if (10^18 * tx1) + 50 < 10^18 * tx1:
        revert with 0, 'ERR_DIV_INTERNAL'
    if (10^18 * tx1) + 50 / 100 > -1:
        revert with 0, 17
    if (10^18 * tx1) + 50 / 100 != (10^18 * tx1) + 50 / 100:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !((10^18 * tx1) + 50 / 100):
        revert with 0, 17
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 < (10^18 * tx1) + 50 / 100:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if not totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 'ERR_DIV_ZERO'
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
        if not ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
            revert with 0, 18
        if 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 / ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 != 10^18:
            revert with 0, 'ERR_DIV_INTERNAL'
    if 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18 > !(totalSupply - ext_call.return_data[0] - collateral / 2):
        revert with 0, 17
    if (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) < 10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18:
        revert with 0, 'ERR_DIV_INTERNAL'
    if not totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 18
    if _totalSupply5 and (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral > -1 / _totalSupply5:
        revert with 0, 17
    if _totalSupply5:
        if not _totalSupply5:
            revert with 0, 18
        if _totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral / _totalSupply5 != (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if 5 * 10^17 > !(_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral):
        revert with 0, 17
    if (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 < _totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if stor28[address(msg.sender)] > (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 < stor28[address(msg.sender)]:
        revert with 0, 17
    if not ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(msg.sender)]:
        if stor29[address(msg.sender)] > -1:
            revert with 0, 17
        if stor29[address(msg.sender)] and 0 > -1 / stor29[address(msg.sender)]:
            revert with 0, 17
        if stor29[address(msg.sender)]:
            if not stor29[address(msg.sender)]:
                revert with 0, 18
            if 0 / stor29[address(msg.sender)]:
                revert with 0, 'ERR_MUL_OVERFLOW'
        if stor29[address(msg.sender)] > -1:
            revert with 0, 17
        if stor29[address(msg.sender)] < stor29[address(msg.sender)]:
            revert with 0, 'ERR_ADD_OVERFLOW'
        if block.timestamp > lendData[address(msg.sender)]:
            revert with 0, 'Your loan has expired or not existing lender'
        if not lendData[address(msg.sender)]:
            revert with 0, 'Your loan has expired or not existing lender'
        require ext_code.size(mainAddress)
        call mainAddress.deposit() with:
           value stor29[address(msg.sender)] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if collateral < _loansToken[address(msg.sender)]:
            revert with 0, 17
        collateral -= _loansToken[address(msg.sender)]
        if stor29[address(msg.sender)] and 275 * 10^12 * 3600 > -1 / stor29[address(msg.sender)]:
            revert with 0, 17
        if stor29[address(msg.sender)]:
            if not stor29[address(msg.sender)]:
                revert with 0, 18
            if 275 * 10^12 * 3600 * stor29[address(msg.sender)] / stor29[address(msg.sender)] != 275 * 10^12 * 3600:
                revert with 0, 'ERR_MUL_OVERFLOW'
        if 5 * 10^17 > !(275 * 10^12 * 3600 * stor29[address(msg.sender)]):
            revert with 0, 17
        if (275 * 10^12 * 3600 * stor29[address(msg.sender)]) + 5 * 10^17 < 275 * 10^12 * 3600 * stor29[address(msg.sender)]:
            revert with 0, 'ERR_MUL_OVERFLOW'
        if _totalSupply5 > !((275 * 10^12 * 3600 * stor29[address(msg.sender)]) + 5 * 10^17 / 10^18):
            revert with 0, 17
        _totalSupply5 += (275 * 10^12 * 3600 * stor29[address(msg.sender)]) + 5 * 10^17 / 10^18
    else:
        if ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(msg.sender)] and _loansToken[address(msg.sender)] > -1 / ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(msg.sender)]:
            revert with 0, 17
        if not ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(msg.sender)]:
            revert with 0, 18
        if ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) / ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18) - stor28[address(msg.sender)] != _loansToken[address(msg.sender)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if stor29[address(msg.sender)] > !(((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)])):
            revert with 0, 17
        if stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) and 0 > -1 / stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]):
            revert with 0, 17
        if stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]):
            if not stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]):
                revert with 0, 18
            if 0 / stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]):
                revert with 0, 'ERR_MUL_OVERFLOW'
        if stor29[address(msg.sender)] > !(((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)])):
            revert with 0, 17
        if stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) > -1:
            revert with 0, 17
        if block.timestamp > lendData[address(msg.sender)]:
            revert with 0, 'Your loan has expired or not existing lender'
        if not lendData[address(msg.sender)]:
            revert with 0, 'Your loan has expired or not existing lender'
        require ext_code.size(mainAddress)
        call mainAddress.deposit() with:
           value stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if collateral < _loansToken[address(msg.sender)]:
            revert with 0, 17
        collateral -= _loansToken[address(msg.sender)]
        if stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) and 275 * 10^12 * 3600 > -1 / stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]):
            revert with 0, 17
        if stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]):
            if not stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]):
                revert with 0, 18
            if (275 * 10^12 * 3600 * stor29[address(msg.sender)]) + (275 * 10^12 * 3600 * (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (275 * 10^12 * 3600 * stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) / stor29[address(msg.sender)] + ((_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) != 275 * 10^12 * 3600:
                revert with 0, 'ERR_MUL_OVERFLOW'
        if 5 * 10^17 > !((275 * 10^12 * 3600 * stor29[address(msg.sender)]) + (275 * 10^12 * 3600 * (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) - (275 * 10^12 * 3600 * stor28[address(msg.sender)] * _loansToken[address(msg.sender)])):
            revert with 0, 17
        if _totalSupply5 > !((275 * 10^12 * 3600 * stor29[address(msg.sender)]) + (275 * 10^12 * 3600 * (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) + (-99 * 10^16 * stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) + 5 * 10^17 / 10^18):
            revert with 0, 17
        _totalSupply5 += (275 * 10^12 * 3600 * stor29[address(msg.sender)]) + (275 * 10^12 * 3600 * (_totalSupply5 * (10^18 * ((10^18 * tx1) + 50 / 100) + 5 * 10^17 / 10^18) + (totalSupply - ext_call.return_data[0] - collateral / 2) / totalSupply - ext_call.return_data[0] - collateral) + 5 * 10^17 / 10^18 * _loansToken[address(msg.sender)]) + (-99 * 10^16 * stor28[address(msg.sender)] * _loansToken[address(msg.sender)]) + 5 * 10^17 / 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _loansToken[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    _loansToken[address(msg.sender)] = 0
    stor29[address(msg.sender)] = 0
    stor28[address(msg.sender)] = 0
    lendData[address(msg.sender)] = 0
}



}
