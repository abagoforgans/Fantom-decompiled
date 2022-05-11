contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
mapping of struct balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint256 BURN_FEE;
uint256 LP_FEE;
uint256 stor8;
uint256 stor9;
uint256 maxLPCap;
uint8 swapAndLiquifyEnable;
address stor11;
address lpReceiverAddress; offset 8
mapping of uint8 stor12;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint256 MAX_SUPPLY;
uint256 storB342;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function swapAndLiquifyEnable() {
    return bool(swapAndLiquifyEnable)
}

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function BURN_FEE() {
    return BURN_FEE
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function LP_FEE() {
    return LP_FEE
}

function maxLPCap() {
    return maxLPCap
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function owner() {
    return owner
}

function lpReceiverAddress() {
    return lpReceiverAddress
}

function _excluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxLPCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxLPCap = arg1
}

function changeLpReceiverAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lpReceiverAddress = arg1
}

function setSwapAndLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapAndLiquifyEnable = uint8(arg1)
}

function setFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    BURN_FEE = arg1
    stor8 = arg1
    LP_FEE = arg2
    stor9 = arg2
}

function exclude(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    return 1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = arg1
    allowance[this.address][address(arg1)].field_0 = MAX_SUPPLY
}

function swapAndLiquify(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 / 2 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 < arg1 / 2:
        revert with 0, 17
    mem[256] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[288] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor13].field_0 = arg1 / 2
    allowance[address(this.address)][stor13].field_255 = 0
    mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 324] = arg1 / 2
    idx = 0
    s = ceil32(return_data.size) + 516
    t = 256
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor13].field_0 = arg1 - (arg1 / 2)
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args this.address, arg1 - (arg1 / 2), 0, 0, stor11, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit SwapAndLiquify(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
}

function name() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if balanceOf[address(msg.sender)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if bool(swapAndLiquifyEnable) != 1:
        if balanceOf[address(msg.sender)].field_0 < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)].field_0 -= arg2
        if bool(stor12[address(msg.sender)]) == 1:
            if balanceOf[address(arg1)].field_0 > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)].field_0 += arg2
            emit 0xfeddf252: arg2, msg.sender, arg1
        else:
            if not arg2:
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 0, 17
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 0, 17
                    if balanceOf[address(arg1)].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit 0xfeddf252: arg2, msg.sender, arg1
                    if balanceOf[this.address].field_0 > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, this.address
                else:
                    if arg2 and LP_FEE > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * LP_FEE / arg2 != LP_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 0, 17
                    if arg2 * LP_FEE / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < arg2 * LP_FEE / 100:
                        revert with 0, 17
                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * LP_FEE / 100)):
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * LP_FEE / 100)
                    emit 0xfeddf252: arg2, msg.sender, arg1
                    if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                    emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                if storB342 > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, msg.sender, 57005
            else:
                if arg2 and BURN_FEE > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * BURN_FEE / arg2 != BURN_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not arg2:
                    if arg2 * BURN_FEE / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < arg2 * BURN_FEE / 100:
                        revert with 0, 17
                    if 0 > arg2 - (arg2 * BURN_FEE / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 - (arg2 * BURN_FEE / 100) < 0:
                        revert with 0, 17
                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100)):
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100)
                    emit 0xfeddf252: arg2, msg.sender, arg1
                    if balanceOf[this.address].field_0 > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, this.address
                else:
                    if arg2 and LP_FEE > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * LP_FEE / arg2 != LP_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 * BURN_FEE / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < arg2 * BURN_FEE / 100:
                        revert with 0, 17
                    if arg2 * LP_FEE / 100 > arg2 - (arg2 * BURN_FEE / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 - (arg2 * BURN_FEE / 100) < arg2 * LP_FEE / 100:
                        revert with 0, 17
                    if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)):
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)
                    emit 0xfeddf252: arg2, msg.sender, arg1
                    if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                    emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                if storB342 > !(arg2 * BURN_FEE / 100):
                    revert with 0, 17
                storB342 += arg2 * BURN_FEE / 100
                emit 0xfeddf252: (arg2 * BURN_FEE / 100), msg.sender, 57005
    else:
        if balanceOf[this.address].field_0 < maxLPCap:
            if balanceOf[address(msg.sender)].field_0 < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)].field_0 -= arg2
            if bool(stor12[address(msg.sender)]) == 1:
                if balanceOf[address(arg1)].field_0 > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)].field_0 += arg2
                emit 0xfeddf252: arg2, msg.sender, arg1
            else:
                if not arg2:
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit 0xfeddf252: arg2, msg.sender, arg1
                        if balanceOf[this.address].field_0 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, this.address
                    else:
                        if arg2 and LP_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * LP_FEE / arg2 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if arg2 * LP_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * LP_FEE / 100)
                        emit 0xfeddf252: arg2, msg.sender, arg1
                        if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                        emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                    if storB342 > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, 57005
                else:
                    if arg2 and BURN_FEE > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * BURN_FEE / arg2 != BURN_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not arg2:
                        if arg2 * BURN_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * BURN_FEE / 100:
                            revert with 0, 17
                        if 0 > arg2 - (arg2 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 - (arg2 * BURN_FEE / 100) < 0:
                            revert with 0, 17
                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100)
                        emit 0xfeddf252: arg2, msg.sender, arg1
                        if balanceOf[this.address].field_0 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, this.address
                    else:
                        if arg2 and LP_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * LP_FEE / arg2 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * BURN_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * BURN_FEE / 100:
                            revert with 0, 17
                        if arg2 * LP_FEE / 100 > arg2 - (arg2 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 - (arg2 * BURN_FEE / 100) < arg2 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)
                        emit 0xfeddf252: arg2, msg.sender, arg1
                        if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                        emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                    if storB342 > !(arg2 * BURN_FEE / 100):
                        revert with 0, 17
                    storB342 += arg2 * BURN_FEE / 100
                    emit 0xfeddf252: (arg2 * BURN_FEE / 100), msg.sender, 57005
        else:
            if uniswapV2PairAddress == msg.sender:
                if balanceOf[address(msg.sender)].field_0 < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)].field_0 -= arg2
                if bool(stor12[address(msg.sender)]) == 1:
                    if balanceOf[address(arg1)].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit 0xfeddf252: arg2, msg.sender, arg1
                else:
                    if not arg2:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            if balanceOf[this.address].field_0 > -1:
                                revert with 0, 17
                            emit 0xfeddf252: 0, msg.sender, this.address
                        else:
                            if arg2 and LP_FEE > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * LP_FEE / arg2 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if arg2 * LP_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * LP_FEE / 100)
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                            emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                        if storB342 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, 57005
                    else:
                        if arg2 and BURN_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * BURN_FEE / arg2 != BURN_FEE:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not arg2:
                            if arg2 * BURN_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * BURN_FEE / 100:
                                revert with 0, 17
                            if 0 > arg2 - (arg2 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 - (arg2 * BURN_FEE / 100) < 0:
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100)
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            if balanceOf[this.address].field_0 > -1:
                                revert with 0, 17
                            emit 0xfeddf252: 0, msg.sender, this.address
                        else:
                            if arg2 and LP_FEE > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * LP_FEE / arg2 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg2 * BURN_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * BURN_FEE / 100:
                                revert with 0, 17
                            if arg2 * LP_FEE / 100 > arg2 - (arg2 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 - (arg2 * BURN_FEE / 100) < arg2 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                            emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                        if storB342 > !(arg2 * BURN_FEE / 100):
                            revert with 0, 17
                        storB342 += arg2 * BURN_FEE / 100
                        emit 0xfeddf252: (arg2 * BURN_FEE / 100), msg.sender, 57005
            else:
                swapAndLiquifyEnable = 0
                if balanceOf[this.address].field_1 > balanceOf[this.address].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                    revert with 0, 17
                mem[256] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[288] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = balanceOf[this.address].field_1
                mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 324] = balanceOf[this.address].field_1
                idx = 0
                s = ceil32(return_data.size) + 516
                t = 256
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, stor11, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[this.address].field_1), 0, balanceOf[this.address].field_0 - balanceOf[this.address].field_1);
                swapAndLiquifyEnable = 1
                if balanceOf[address(msg.sender)].field_0 < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)].field_0 -= arg2
                if bool(stor12[address(msg.sender)]) == 1:
                    if balanceOf[address(arg1)].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit 0xfeddf252: arg2, msg.sender, arg1
                else:
                    if not arg2:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            if balanceOf[this.address].field_0 > -1:
                                revert with 0, 17
                            emit 0xfeddf252: 0, msg.sender, this.address
                        else:
                            if arg2 and LP_FEE > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * LP_FEE / arg2 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if arg2 * LP_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * LP_FEE / 100)
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                            emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                        if storB342 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, 57005
                    else:
                        if arg2 and BURN_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * BURN_FEE / arg2 != BURN_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg2:
                            if arg2 * BURN_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * BURN_FEE / 100:
                                revert with 0, 17
                            if 0 > arg2 - (arg2 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 - (arg2 * BURN_FEE / 100) < 0:
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100)
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            if balanceOf[this.address].field_0 > -1:
                                revert with 0, 17
                            emit 0xfeddf252: 0, msg.sender, this.address
                        else:
                            if arg2 and LP_FEE > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * LP_FEE / arg2 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg2 * BURN_FEE / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < arg2 * BURN_FEE / 100:
                                revert with 0, 17
                            if arg2 * LP_FEE / 100 > arg2 - (arg2 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 - (arg2 * BURN_FEE / 100) < arg2 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)
                            emit 0xfeddf252: arg2, msg.sender, arg1
                            if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                            emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                        if storB342 > !(arg2 * BURN_FEE / 100):
                            revert with 0, 17
                        storB342 += arg2 * BURN_FEE / 100
                        emit 0xfeddf252: (arg2 * BURN_FEE / 100), msg.sender, 57005
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[address(arg1)].field_0 < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if bool(swapAndLiquifyEnable) != 1:
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 0, 17
        balanceOf[address(arg1)].field_0 -= arg3
        if bool(stor12[address(arg1)]) == 1:
            if balanceOf[address(arg2)].field_0 > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)].field_0 += arg3
            emit 0xfeddf252: arg3, arg1, arg2
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if not arg3:
                if not arg3:
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < 0:
                        revert with 0, 17
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < 0:
                        revert with 0, 17
                    if balanceOf[address(arg2)].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit 0xfeddf252: arg3, arg1, arg2
                    if balanceOf[this.address].field_0 > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, this.address
                else:
                    if arg3 and LP_FEE > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * LP_FEE / arg3 != LP_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < 0:
                        revert with 0, 17
                    if arg3 * LP_FEE / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < arg3 * LP_FEE / 100:
                        revert with 0, 17
                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * LP_FEE / 100)):
                        revert with 0, 17
                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * LP_FEE / 100)
                    emit 0xfeddf252: arg3, arg1, arg2
                    if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                    emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                if storB342 > -1:
                    revert with 0, 17
                emit 0xfeddf252: 0, msg.sender, 57005
            else:
                if arg3 and BURN_FEE > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 * BURN_FEE / arg3 != BURN_FEE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not arg3:
                    if arg3 * BURN_FEE / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < arg3 * BURN_FEE / 100:
                        revert with 0, 17
                    if 0 > arg3 - (arg3 * BURN_FEE / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 - (arg3 * BURN_FEE / 100) < 0:
                        revert with 0, 17
                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100)):
                        revert with 0, 17
                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100)
                    emit 0xfeddf252: arg3, arg1, arg2
                    if balanceOf[this.address].field_0 > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, this.address
                else:
                    if arg3 and LP_FEE > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * LP_FEE / arg3 != LP_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg3 * BURN_FEE / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < arg3 * BURN_FEE / 100:
                        revert with 0, 17
                    if arg3 * LP_FEE / 100 > arg3 - (arg3 * BURN_FEE / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 - (arg3 * BURN_FEE / 100) < arg3 * LP_FEE / 100:
                        revert with 0, 17
                    if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)):
                        revert with 0, 17
                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)
                    emit 0xfeddf252: arg3, arg1, arg2
                    if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                        revert with 0, 17
                    balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                    emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                if storB342 > !(arg3 * BURN_FEE / 100):
                    revert with 0, 17
                storB342 += arg3 * BURN_FEE / 100
                emit 0xfeddf252: (arg3 * BURN_FEE / 100), msg.sender, 57005
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
    else:
        if balanceOf[this.address].field_0 < maxLPCap:
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 0, 17
            balanceOf[address(arg1)].field_0 -= arg3
            if bool(stor12[address(arg1)]) == 1:
                if balanceOf[address(arg2)].field_0 > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)].field_0 += arg3
                emit 0xfeddf252: arg3, arg1, arg2
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if not arg3:
                    if not arg3:
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if balanceOf[address(arg2)].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit 0xfeddf252: arg3, arg1, arg2
                        if balanceOf[this.address].field_0 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, this.address
                    else:
                        if arg3 and LP_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * LP_FEE / arg3 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if arg3 * LP_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * LP_FEE / 100)
                        emit 0xfeddf252: arg3, arg1, arg2
                        if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                        emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                    if storB342 > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, 57005
                else:
                    if arg3 and BURN_FEE > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * BURN_FEE / arg3 != BURN_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not arg3:
                        if arg3 * BURN_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * BURN_FEE / 100:
                            revert with 0, 17
                        if 0 > arg3 - (arg3 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 - (arg3 * BURN_FEE / 100) < 0:
                            revert with 0, 17
                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100)
                        emit 0xfeddf252: arg3, arg1, arg2
                        if balanceOf[this.address].field_0 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, this.address
                    else:
                        if arg3 and LP_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * LP_FEE / arg3 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * BURN_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * BURN_FEE / 100:
                            revert with 0, 17
                        if arg3 * LP_FEE / 100 > arg3 - (arg3 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 - (arg3 * BURN_FEE / 100) < arg3 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)
                        emit 0xfeddf252: arg3, arg1, arg2
                        if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                        emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                    if storB342 > !(arg3 * BURN_FEE / 100):
                        revert with 0, 17
                    storB342 += arg3 * BURN_FEE / 100
                    emit 0xfeddf252: (arg3 * BURN_FEE / 100), msg.sender, 57005
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
        else:
            if uniswapV2PairAddress == arg1:
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)].field_0 -= arg3
                if bool(stor12[address(arg1)]) == 1:
                    if balanceOf[address(arg2)].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit 0xfeddf252: arg3, arg1, arg2
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if not arg3:
                        if not arg3:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit 0xfeddf252: arg3, arg1, arg2
                            if balanceOf[this.address].field_0 > -1:
                                revert with 0, 17
                            emit 0xfeddf252: 0, msg.sender, this.address
                        else:
                            if arg3 and LP_FEE > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * LP_FEE / arg3 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 * LP_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * LP_FEE / 100)
                            emit 0xfeddf252: arg3, arg1, arg2
                            if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                            emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                        if storB342 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, 57005
                    else:
                        if arg3 and BURN_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * BURN_FEE / arg3 != BURN_FEE:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not arg3:
                            if arg3 * BURN_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * BURN_FEE / 100:
                                revert with 0, 17
                            if 0 > arg3 - (arg3 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 - (arg3 * BURN_FEE / 100) < 0:
                                revert with 0, 17
                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100)
                            emit 0xfeddf252: arg3, arg1, arg2
                            if balanceOf[this.address].field_0 > -1:
                                revert with 0, 17
                            emit 0xfeddf252: 0, msg.sender, this.address
                        else:
                            if arg3 and LP_FEE > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * LP_FEE / arg3 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg3 * BURN_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * BURN_FEE / 100:
                                revert with 0, 17
                            if arg3 * LP_FEE / 100 > arg3 - (arg3 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 - (arg3 * BURN_FEE / 100) < arg3 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)
                            emit 0xfeddf252: arg3, arg1, arg2
                            if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                            emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                        if storB342 > !(arg3 * BURN_FEE / 100):
                            revert with 0, 17
                        storB342 += arg3 * BURN_FEE / 100
                        emit 0xfeddf252: (arg3 * BURN_FEE / 100), msg.sender, 57005
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
            else:
                swapAndLiquifyEnable = 0
                if balanceOf[this.address].field_1 > balanceOf[this.address].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                    revert with 0, 17
                mem[256] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[288] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = balanceOf[this.address].field_1
                mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 324] = balanceOf[this.address].field_1
                idx = 0
                s = ceil32(return_data.size) + 516
                t = 256
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, stor11, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[this.address].field_1), 0, balanceOf[this.address].field_0 - balanceOf[this.address].field_1);
                swapAndLiquifyEnable = 1
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)].field_0 -= arg3
                if bool(stor12[address(arg1)]) == 1:
                    if balanceOf[address(arg2)].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit 0xfeddf252: arg3, arg1, arg2
                else:
                    if not arg3:
                        if not arg3:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if balanceOf[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit 0xfeddf252: arg3, arg1, arg2
                            if balanceOf[this.address].field_0 > -1:
                                revert with 0, 17
                            emit 0xfeddf252: 0, msg.sender, this.address
                        else:
                            if arg3 and LP_FEE > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * LP_FEE / arg3 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 * LP_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * LP_FEE / 100)
                            emit 0xfeddf252: arg3, arg1, arg2
                            if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                            emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                        if storB342 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, 57005
                    else:
                        if arg3 and BURN_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * BURN_FEE / arg3 != BURN_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg3:
                            if arg3 * BURN_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * BURN_FEE / 100:
                                revert with 0, 17
                            if 0 > arg3 - (arg3 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 - (arg3 * BURN_FEE / 100) < 0:
                                revert with 0, 17
                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100)
                            emit 0xfeddf252: arg3, arg1, arg2
                            if balanceOf[this.address].field_0 > -1:
                                revert with 0, 17
                            emit 0xfeddf252: 0, msg.sender, this.address
                        else:
                            if arg3 and LP_FEE > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * LP_FEE / arg3 != LP_FEE:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg3 * BURN_FEE / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < arg3 * BURN_FEE / 100:
                                revert with 0, 17
                            if arg3 * LP_FEE / 100 > arg3 - (arg3 * BURN_FEE / 100):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 - (arg3 * BURN_FEE / 100) < arg3 * LP_FEE / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)
                            emit 0xfeddf252: arg3, arg1, arg2
                            if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                            emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                        if storB342 > !(arg3 * BURN_FEE / 100):
                            revert with 0, 17
                        storB342 += arg3 * BURN_FEE / 100
                        emit 0xfeddf252: (arg3 * BURN_FEE / 100), msg.sender, 57005
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa457c2d7(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x801527ce(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balanceOf[address(arg1)].field_0
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    require unknown_0x7647b90d(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor12[address(arg1)] = uint8(bool(arg2))
            if unknown_0x801527ce(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == bool(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                swapAndLiquifyEnable = uint8(bool(arg1))
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                require unknown_0xa2cb8aac(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return lpReceiverAddress
            require not msg.value
            if bool(stor5.length):
                if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor5.length):
                        if 31 < uint255(stor5.length) * 0.5:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor5.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                        mem[160] = 256 * stor5.length.field_8
                else:
                    if bool(stor5.length) == stor5.length.field_1 < 32:
                        revert with 0, 34
                    if stor5.length.field_1:
                        if 31 < stor5.length.field_1:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while stor5.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                        mem[160] = 256 * stor5.length.field_8
                mem[ceil32(uint255(stor5.length) * 0.5) + 224 len ceil32(uint255(stor5.length) * 0.5)] = mem[160 len ceil32(uint255(stor5.length) * 0.5)]
                if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
                    mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if bool(stor5.length):
                if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor5.length):
                    if 31 < uint255(stor5.length) * 0.5:
                        mem[160] = uint256(stor5.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor5.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                    mem[160] = 256 * stor5.length.field_8
            else:
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 0, 34
                if stor5.length.field_1:
                    if 31 < stor5.length.field_1:
                        mem[160] = uint256(stor5.field_0)
                        idx = 160
                        s = 0
                        while stor5.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                    mem[160] = 256 * stor5.length.field_8
            mem[ceil32(stor5.length.field_1) + 224 len ceil32(stor5.length.field_1)] = mem[160 len ceil32(stor5.length.field_1)]
            if ceil32(stor5.length.field_1) > stor5.length.field_1:
                mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 224] = 0
            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 224 len 2 * ceil32(stor5.length.field_1)]), 
        if unknown_0xd6ef56f3(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd6ef56f3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor12[arg1])
            if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[address(arg1)][address(arg2)].field_0
            if unknown_0xdf0b3453(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                lpReceiverAddress = address(arg1)
            else:
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                emit OwnershipTransferred(owner, address(arg1));
                owner = address(arg1)
        if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)].field_0 < arg2:
                revert with 0, 'ERC20: decreased allowance below zero'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if unknown_0xb6f116cf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    maxLPCap = arg1
                else:
                    require unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    uniswapV2PairAddress = ext_call.return_data[12 len 20]
                    uniswapV2RouterAddress = address(arg1)
                    allowance[this.address][address(arg1)].field_0 = MAX_SUPPLY
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if balanceOf[address(msg.sender)].field_0 < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            if arg2 <= 0:
                revert with 0, 'Transfer amount must be greater than zero'
            if 1 == bool(swapAndLiquifyEnable):
                if balanceOf[this.address].field_0 >= maxLPCap:
                    if uniswapV2PairAddress != msg.sender:
                        swapAndLiquifyEnable = 0
                        if balanceOf[this.address].field_1 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                            revert with 0, 17
                        mem[288] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[320] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = balanceOf[this.address].field_1
                        mem[ceil32(return_data.size) + 352] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 356] = balanceOf[this.address].field_1
                        idx = 0
                        s = ceil32(return_data.size) + 548
                        t = 288
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 548 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, stor11, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[this.address].field_1), 0, balanceOf[this.address].field_0 - balanceOf[this.address].field_1);
                        swapAndLiquifyEnable = 1
            if balanceOf[address(msg.sender)].field_0 < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)].field_0 -= arg2
            if bool(stor12[address(msg.sender)]) == 1:
                if balanceOf[address(arg1)].field_0 > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)].field_0 += arg2
                emit 0xfeddf252: arg2, msg.sender, address(arg1)
            else:
                if not arg2:
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit 0xfeddf252: arg2, msg.sender, address(arg1)
                        if balanceOf[this.address].field_0 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, this.address
                    else:
                        if arg2 and LP_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * LP_FEE / arg2 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < 0:
                            revert with 0, 17
                        if arg2 * LP_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * LP_FEE / 100)
                        emit 0xfeddf252: arg2, msg.sender, address(arg1)
                        if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                        emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                    if storB342 > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, 57005
                else:
                    if arg2 and BURN_FEE > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * BURN_FEE / arg2 != BURN_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2:
                        if arg2 * BURN_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * BURN_FEE / 100:
                            revert with 0, 17
                        if 0 > arg2 - (arg2 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 - (arg2 * BURN_FEE / 100) < 0:
                            revert with 0, 17
                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100)
                        emit 0xfeddf252: arg2, msg.sender, address(arg1)
                        if balanceOf[this.address].field_0 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, this.address
                    else:
                        if arg2 and LP_FEE > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * LP_FEE / arg2 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * BURN_FEE / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 < arg2 * BURN_FEE / 100:
                            revert with 0, 17
                        if arg2 * LP_FEE / 100 > arg2 - (arg2 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg2 - (arg2 * BURN_FEE / 100) < arg2 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg1)].field_0 > !(arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * BURN_FEE / 100) - (arg2 * LP_FEE / 100)
                        emit 0xfeddf252: arg2, msg.sender, address(arg1)
                        if balanceOf[this.address].field_0 > !(arg2 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg2 * LP_FEE / 100
                        emit 0xfeddf252: (arg2 * LP_FEE / 100), msg.sender, this.address
                    if storB342 > !(arg2 * BURN_FEE / 100):
                        revert with 0, 17
                    storB342 += arg2 * BURN_FEE / 100
                    emit 0xfeddf252: (arg2 * BURN_FEE / 100), msg.sender, 57005
    else:
        if unknown_0x313ce567(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x49bd5a5e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2PairAddress
                if uint32(call.func_hash) >> 224 != unknown_0x52f7c988(?????):
                    if unknown_0x5e3f2727(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return LP_FEE
                    require unknown_0x69ee297b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return maxLPCap
                require not msg.value
                require calldata.size - 4 >= 64
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                BURN_FEE = arg1
                stor8 = arg1
                LP_FEE = arg2
                stor9 = arg2
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 18
            if unknown_0x32cb6b0c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return MAX_SUPPLY
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                require unknown_0x480df058(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return BURN_FEE
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)].field_0 > !arg2:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
        else:
            if unknown_0x173865ad(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != name():
                    if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                        require unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return uniswapV2RouterAddress
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
                    return 1
                require not msg.value
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4.length):
                            if 31 < uint255(stor4.length) * 0.5:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor4.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                            mem[160] = 256 * stor4.length.field_8
                    else:
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if stor4.length.field_1:
                            if 31 < stor4.length.field_1:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while stor4.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                            mem[160] = 256 * stor4.length.field_8
                    mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                    if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                        mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4.length):
                        if 31 < uint255(stor4.length) * 0.5:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                        mem[160] = 256 * stor4.length.field_8
                else:
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if stor4.length.field_1:
                        if 31 < stor4.length.field_1:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while stor4.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                        mem[160] = 256 * stor4.length.field_8
                mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                if ceil32(stor4.length.field_1) > stor4.length.field_1:
                    mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
            if unknown_0x173865ad(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if arg1 / 2 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 / 2:
                    revert with 0, 17
                mem[288] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[320] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = arg1 / 2
                allowance[address(this.address)][stor13].field_255 = 0
                mem[ceil32(return_data.size) + 352] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 356] = arg1 / 2
                idx = 0
                s = ceil32(return_data.size) + 548
                t = 288
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, arg1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 548 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor13].field_0 = arg1 - (arg1 / 2)
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, arg1 - (arg1 / 2), 0, 0, stor11, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, arg1), 0, arg1 - (arg1 / 2));
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            if unknown_0x2223e04e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(swapAndLiquifyEnable)
            require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            if arg3 <= 0:
                revert with 0, 'Transfer amount must be greater than zero'
            if 1 == bool(swapAndLiquifyEnable):
                if balanceOf[this.address].field_0 >= maxLPCap:
                    if uniswapV2PairAddress != address(arg1):
                        swapAndLiquifyEnable = 0
                        if balanceOf[this.address].field_1 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                            revert with 0, 17
                        mem[288] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[320] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = balanceOf[this.address].field_1
                        mem[ceil32(return_data.size) + 352] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 356] = balanceOf[this.address].field_1
                        idx = 0
                        s = ceil32(return_data.size) + 548
                        t = 288
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 548 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) > eth.balance(this.address):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13].field_0 = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, stor11, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[this.address].field_1), 0, balanceOf[this.address].field_0 - balanceOf[this.address].field_1);
                        swapAndLiquifyEnable = 1
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 0, 17
            balanceOf[address(arg1)].field_0 -= arg3
            if bool(stor12[address(arg1)]) == 1:
                if balanceOf[address(arg2)].field_0 > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)].field_0 += arg3
                emit 0xfeddf252: arg3, address(arg1), address(arg2)
            else:
                if not arg3:
                    if not arg3:
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if balanceOf[address(arg2)].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit 0xfeddf252: arg3, address(arg1), address(arg2)
                        if balanceOf[this.address].field_0 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, this.address
                    else:
                        if arg3 and LP_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * LP_FEE / arg3 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < 0:
                            revert with 0, 17
                        if arg3 * LP_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * LP_FEE / 100)
                        emit 0xfeddf252: arg3, address(arg1), address(arg2)
                        if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                        emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                    if storB342 > -1:
                        revert with 0, 17
                    emit 0xfeddf252: 0, msg.sender, 57005
                else:
                    if arg3 and BURN_FEE > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * BURN_FEE / arg3 != BURN_FEE:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3:
                        if arg3 * BURN_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * BURN_FEE / 100:
                            revert with 0, 17
                        if 0 > arg3 - (arg3 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 - (arg3 * BURN_FEE / 100) < 0:
                            revert with 0, 17
                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100)
                        emit 0xfeddf252: arg3, address(arg1), address(arg2)
                        if balanceOf[this.address].field_0 > -1:
                            revert with 0, 17
                        emit 0xfeddf252: 0, msg.sender, this.address
                    else:
                        if arg3 and LP_FEE > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * LP_FEE / arg3 != LP_FEE:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * BURN_FEE / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 < arg3 * BURN_FEE / 100:
                            revert with 0, 17
                        if arg3 * LP_FEE / 100 > arg3 - (arg3 * BURN_FEE / 100):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg3 - (arg3 * BURN_FEE / 100) < arg3 * LP_FEE / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)].field_0 > !(arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * BURN_FEE / 100) - (arg3 * LP_FEE / 100)
                        emit 0xfeddf252: arg3, address(arg1), address(arg2)
                        if balanceOf[this.address].field_0 > !(arg3 * LP_FEE / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg3 * LP_FEE / 100
                        emit 0xfeddf252: (arg3 * LP_FEE / 100), msg.sender, this.address
                    if storB342 > !(arg3 * BURN_FEE / 100):
                        revert with 0, 17
                    storB342 += arg3 * BURN_FEE / 100
                    emit 0xfeddf252: (arg3 * BURN_FEE / 100), msg.sender, 57005
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
    return 1
}



}
