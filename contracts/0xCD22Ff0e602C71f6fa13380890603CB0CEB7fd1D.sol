contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor6;
address uniswapV2RouterAddress; offset 8
address uniswapV2PairAddress;
address stakingPoolAddress;
uint256 taxFee;
uint256 taxFeeTotal;
uint8 isTaxActive;
mapping of uint8 stor12;
uint256 minTokenBeforeSwap;
uint8 stor14;
uint8 isSwapEnabled; offset 8
uint256 stor14; offset 8
uint256 totalEthDistributed;

function totalEthDistributed() {
    return totalEthDistributed
}

function name() {
    return name[0 len name.length]
}

function stakingPool() {
    return stakingPoolAddress
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function taxFeeTotal() {
    return taxFeeTotal
}

function decimals() {
    return decimals
}

function isSwapEnabled() {
    return bool(isSwapEnabled)
}

function minTokenBeforeSwap() {
    return minTokenBeforeSwap
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
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

function isTaxActive() {
    return bool(isTaxActive)
}

function taxFee() {
    return taxFee
}

function isTaxless(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTaxActive(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isTaxActive = uint8(arg1)
}

function setMinTokenBeforeSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minTokenBeforeSwap = arg1
}

function setTaxless(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
}

function setPairAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
    Mask(248, 0, stor14.field_8) = 1
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, arg1)
    emit SwapEnabled(arg1);
}

function setStakingPool(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingPoolAddress:
        revert with 0, 'Staking pool already set.'
    stakingPoolAddress = arg1
    stor12[address(arg1)] = 1
    emit StakingPoolSet(arg1);
}

function setTaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'SAM: Tax Fee out of range!'
    if arg1 > 1000:
        revert with 0, 'SAM: Tax Fee out of range!'
    taxFee = arg1
    emit TaxFeeSet(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not isSwapEnabled:
        if not isTaxActive:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor12[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor12[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not this.address:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, this.address);
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if taxFeeTotal < taxFeeTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[390 len 26],
                                        mem[442 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        require arg2
                        if arg2 * taxFee / arg2 != taxFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not this.address:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if arg2 * taxFee / 10000 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        balanceOf[address(msg.sender)] -= arg2 * taxFee / 10000
                        if balanceOf[address(this.address)] + (arg2 * taxFee / 10000) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg2 * taxFee / 10000
                        emit Transfer((arg2 * taxFee / 10000), msg.sender, this.address);
                        if arg2 * taxFee / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if taxFeeTotal + (arg2 * taxFee / 10000) < taxFeeTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        taxFeeTotal += arg2 * taxFee / 10000
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                        if arg2 - (arg2 * taxFee / 10000) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[390 len 26],
                                        mem[442 len 6]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxFee / 10000)
                        if balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000)
                        emit Transfer((arg2 - (arg2 * taxFee / 10000)), msg.sender, arg1);
    else:
        if uint8(stor14.field_0):
            if not isTaxActive:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor12[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor12[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, this.address);
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if taxFeeTotal < taxFeeTotal:
                                revert with 0, 'SafeMath: addition overflow'
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            require arg2
                            if arg2 * taxFee / arg2 != taxFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            if arg2 * taxFee / 10000 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(msg.sender)] -= arg2 * taxFee / 10000
                            if balanceOf[address(this.address)] + (arg2 * taxFee / 10000) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += arg2 * taxFee / 10000
                            emit Transfer((arg2 * taxFee / 10000), msg.sender, this.address);
                            if arg2 * taxFee / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if taxFeeTotal + (arg2 * taxFee / 10000) < taxFeeTotal:
                                revert with 0, 'SafeMath: addition overflow'
                            taxFeeTotal += arg2 * taxFee / 10000
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                            if arg2 - (arg2 * taxFee / 10000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxFee / 10000)
                            if balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000)
                            emit Transfer((arg2 - (arg2 * taxFee / 10000)), msg.sender, arg1);
        else:
            if msg.sender == uniswapV2PairAddress:
                if not isTaxActive:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor12[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor12[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if taxFeeTotal < taxFeeTotal:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 * taxFee / arg2 != taxFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                if arg2 * taxFee / 10000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(msg.sender)] -= arg2 * taxFee / 10000
                                if balanceOf[address(this.address)] + (arg2 * taxFee / 10000) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * taxFee / 10000
                                emit Transfer((arg2 * taxFee / 10000), msg.sender, this.address);
                                if arg2 * taxFee / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if taxFeeTotal + (arg2 * taxFee / 10000) < taxFeeTotal:
                                    revert with 0, 'SafeMath: addition overflow'
                                taxFeeTotal += arg2 * taxFee / 10000
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg2 - (arg2 * taxFee / 10000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxFee / 10000)
                                if balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000)
                                emit Transfer((arg2 - (arg2 * taxFee / 10000)), msg.sender, arg1);
            else:
                uint8(stor14.field_0) = 1
                if balanceOf[address(this.address)] < minTokenBeforeSwap:
                    uint8(stor14.field_0) = 0
                    if not isTaxActive:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor12[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor12[address(arg1)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[230 len 26],
                                                    mem[282 len 6]
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if taxFeeTotal < taxFeeTotal:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require arg2
                                    if arg2 * taxFee / arg2 != taxFee:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                    if arg2 * taxFee / 10000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[230 len 26],
                                                    mem[282 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 * taxFee / 10000
                                    if balanceOf[address(this.address)] + (arg2 * taxFee / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * taxFee / 10000
                                    emit Transfer((arg2 * taxFee / 10000), msg.sender, this.address);
                                    if arg2 * taxFee / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if taxFeeTotal + (arg2 * taxFee / 10000) < taxFeeTotal:
                                        revert with 0, 'SafeMath: addition overflow'
                                    taxFeeTotal += arg2 * taxFee / 10000
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg2 - (arg2 * taxFee / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxFee / 10000)
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000)
                                    emit Transfer((arg2 - (arg2 * taxFee / 10000)), msg.sender, arg1);
                else:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    if not uniswapV2RouterAddress:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                    allowance[address(this.address)][stor6] = balanceOf[address(this.address)]
                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                    mem[388 len 0] = None
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit SwapedTokenForEth(balanceOf[address(this.address)], 0);
                    if totalEthDistributed + eth.balance(this.address) < totalEthDistributed:
                        revert with 0, 'SafeMath: addition overflow'
                    totalEthDistributed += eth.balance(this.address)
                    require ext_code.size(stakingPoolAddress)
                    call stakingPoolAddress.distribute() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor14.field_0) = 0
                    if not isTaxActive:
                        if not msg.sender:
                            revert with 0, 'eERC20: transfer from the zero addres'
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'sERC20: transfer amount exceeds balancimestam', 0
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, '', 27, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor12[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0, 'eERC20: transfer from the zero addres'
                            if not arg1:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 'sERC20: transfer amount exceeds balancimestam', 0
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, '', 27, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor12[address(arg1)]:
                                if not msg.sender:
                                    revert with 0, 'eERC20: transfer from the zero addres'
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'sERC20: transfer amount exceeds balancimestam', 0
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, '', 27, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not msg.sender:
                                        revert with 0, 'eERC20: transfer from the zero addres', mem[425 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if taxFeeTotal < taxFeeTotal:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[550 len 26],
                                                    mem[602 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require arg2
                                    if arg2 * taxFee / arg2 != taxFee:
                                        revert with 0, 'eSafeMath: multiplication overflo'
                                    if not msg.sender:
                                        revert with 0, 'eERC20: transfer from the zero addres', mem[425 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg2 * taxFee / 10000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 * taxFee / 10000
                                    if balanceOf[address(this.address)] + (arg2 * taxFee / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * taxFee / 10000
                                    emit Transfer((arg2 * taxFee / 10000), msg.sender, this.address);
                                    if arg2 * taxFee / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if taxFeeTotal + (arg2 * taxFee / 10000) < taxFeeTotal:
                                        revert with 0, 'SafeMath: addition overflow'
                                    taxFeeTotal += arg2 * taxFee / 10000
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                                    if arg2 - (arg2 * taxFee / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[550 len 26],
                                                    mem[602 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * taxFee / 10000)
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000)
                                    emit Transfer((arg2 - (arg2 * taxFee / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not isSwapEnabled:
        if not isTaxActive:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if stakingPoolAddress != msg.sender:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[262 len 26],
                                mem[314 len 6]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if stor12[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if stakingPoolAddress != msg.sender:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[262 len 26],
                                    mem[314 len 6]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if stor12[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if stakingPoolAddress != msg.sender:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[262 len 26],
                                        mem[314 len 6]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if not arg3:
                        if not arg1:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not this.address:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, this.address);
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if taxFeeTotal < taxFeeTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        if not arg1:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[390 len 26],
                                        mem[442 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        require arg3
                        if arg3 * taxFee / arg3 != taxFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not arg1:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                        if not this.address:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                        if arg3 * taxFee / 10000 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        balanceOf[address(arg1)] -= arg3 * taxFee / 10000
                        if balanceOf[address(this.address)] + (arg3 * taxFee / 10000) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg3 * taxFee / 10000
                        emit Transfer((arg3 * taxFee / 10000), arg1, this.address);
                        if arg3 * taxFee / 10000 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if taxFeeTotal + (arg3 * taxFee / 10000) < taxFeeTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        taxFeeTotal += arg3 * taxFee / 10000
                        if not arg1:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                        if arg3 - (arg3 * taxFee / 10000) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[390 len 26],
                                        mem[442 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 10000)
                        if balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000)
                        emit Transfer((arg3 - (arg3 * taxFee / 10000)), arg1, arg2);
                    if stakingPoolAddress != msg.sender:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[486 len 26],
                                        mem[538 len 6]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if uint8(stor14.field_0):
            if not isTaxActive:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if stakingPoolAddress != msg.sender:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[262 len 26],
                                    mem[314 len 6]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if stor12[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if stakingPoolAddress != msg.sender:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[262 len 26],
                                        mem[314 len 6]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if stor12[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if stakingPoolAddress != msg.sender:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if not arg3:
                            if not arg1:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, this.address);
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if taxFeeTotal < taxFeeTotal:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg1:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            require arg3
                            if arg3 * taxFee / arg3 != taxFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg1:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            if arg3 * taxFee / 10000 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(arg1)] -= arg3 * taxFee / 10000
                            if balanceOf[address(this.address)] + (arg3 * taxFee / 10000) < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += arg3 * taxFee / 10000
                            emit Transfer((arg3 * taxFee / 10000), arg1, this.address);
                            if arg3 * taxFee / 10000 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if taxFeeTotal + (arg3 * taxFee / 10000) < taxFeeTotal:
                                revert with 0, 'SafeMath: addition overflow'
                            taxFeeTotal += arg3 * taxFee / 10000
                            if not arg1:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                            if arg3 - (arg3 * taxFee / 10000) > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[390 len 26],
                                            mem[442 len 6]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 10000)
                            if balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000)
                            emit Transfer((arg3 - (arg3 * taxFee / 10000)), arg1, arg2);
                        if stakingPoolAddress != msg.sender:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[486 len 26],
                                            mem[538 len 6]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if arg1 == uniswapV2PairAddress:
                if not isTaxActive:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if stakingPoolAddress != msg.sender:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[262 len 26],
                                        mem[314 len 6]
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if stor12[address(arg1)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if stakingPoolAddress != msg.sender:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if stor12[address(arg2)]:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if stakingPoolAddress != msg.sender:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if not arg3:
                                if not arg1:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, arg1, this.address);
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if taxFeeTotal < taxFeeTotal:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                require arg3
                                if arg3 * taxFee / arg3 != taxFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not arg1:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                if arg3 * taxFee / 10000 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(arg1)] -= arg3 * taxFee / 10000
                                if balanceOf[address(this.address)] + (arg3 * taxFee / 10000) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg3 * taxFee / 10000
                                emit Transfer((arg3 * taxFee / 10000), arg1, this.address);
                                if arg3 * taxFee / 10000 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if taxFeeTotal + (arg3 * taxFee / 10000) < taxFeeTotal:
                                    revert with 0, 'SafeMath: addition overflow'
                                taxFeeTotal += arg3 * taxFee / 10000
                                if not arg1:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg3 - (arg3 * taxFee / 10000) > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 10000)
                                if balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000)
                                emit Transfer((arg3 - (arg3 * taxFee / 10000)), arg1, arg2);
                            if stakingPoolAddress != msg.sender:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[486 len 26],
                                                mem[538 len 6]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                uint8(stor14.field_0) = 1
                if balanceOf[address(this.address)] < minTokenBeforeSwap:
                    uint8(stor14.field_0) = 0
                    if not isTaxActive:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if stakingPoolAddress != msg.sender:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if stor12[address(arg1)]:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if stakingPoolAddress != msg.sender:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if stor12[address(arg2)]:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if stakingPoolAddress != msg.sender:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if not arg3:
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[230 len 26],
                                                    mem[282 len 6]
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, this.address);
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if taxFeeTotal < taxFeeTotal:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    require arg3
                                    if arg3 * taxFee / arg3 != taxFee:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                                    if arg3 * taxFee / 10000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[230 len 26],
                                                    mem[282 len 6]
                                    balanceOf[address(arg1)] -= arg3 * taxFee / 10000
                                    if balanceOf[address(this.address)] + (arg3 * taxFee / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg3 * taxFee / 10000
                                    emit Transfer((arg3 * taxFee / 10000), arg1, this.address);
                                    if arg3 * taxFee / 10000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if taxFeeTotal + (arg3 * taxFee / 10000) < taxFeeTotal:
                                        revert with 0, 'SafeMath: addition overflow'
                                    taxFeeTotal += arg3 * taxFee / 10000
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg3 - (arg3 * taxFee / 10000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 10000)
                                    if balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000)
                                    emit Transfer((arg3 - (arg3 * taxFee / 10000)), arg1, arg2);
                                if stakingPoolAddress != msg.sender:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[486 len 26],
                                                    mem[538 len 6]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    if not uniswapV2RouterAddress:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                    allowance[address(this.address)][stor6] = balanceOf[address(this.address)]
                    emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                    mem[388 len 0] = None
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit SwapedTokenForEth(balanceOf[address(this.address)], 0);
                    if totalEthDistributed + eth.balance(this.address) < totalEthDistributed:
                        revert with 0, 'SafeMath: addition overflow'
                    totalEthDistributed += eth.balance(this.address)
                    require ext_code.size(stakingPoolAddress)
                    call stakingPoolAddress.distribute() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor14.field_0) = 0
                    if not isTaxActive:
                        if not arg1:
                            revert with 0, 'eERC20: transfer from the zero addres'
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'sERC20: transfer amount exceeds balancimestam', 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, '', 27, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if stakingPoolAddress != msg.sender:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[422 len 26],
                                            mem[474 len 6]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if stor12[address(arg1)]:
                            if not arg1:
                                revert with 0, 'eERC20: transfer from the zero addres'
                            if not arg2:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'sERC20: transfer amount exceeds balancimestam', 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, '', 27, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if stakingPoolAddress != msg.sender:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[422 len 26],
                                                mem[474 len 6]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if stor12[address(arg2)]:
                                if not arg1:
                                    revert with 0, 'eERC20: transfer from the zero addres'
                                if not arg2:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 'sERC20: transfer amount exceeds balancimestam', 0
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                    revert with 0, '', 27, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if stakingPoolAddress != msg.sender:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[422 len 26],
                                                    mem[474 len 6]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if not arg3:
                                    if not arg1:
                                        revert with 0, 'eERC20: transfer from the zero addres', mem[425 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, this.address);
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if taxFeeTotal < taxFeeTotal:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[550 len 26],
                                                    mem[602 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    require arg3
                                    if arg3 * taxFee / arg3 != taxFee:
                                        revert with 0, 'eSafeMath: multiplication overflo'
                                    if not arg1:
                                        revert with 0, 'eERC20: transfer from the zero addres', mem[425 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg3 * taxFee / 10000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(arg1)] -= arg3 * taxFee / 10000
                                    if balanceOf[address(this.address)] + (arg3 * taxFee / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg3 * taxFee / 10000
                                    emit Transfer((arg3 * taxFee / 10000), arg1, this.address);
                                    if arg3 * taxFee / 10000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if taxFeeTotal + (arg3 * taxFee / 10000) < taxFeeTotal:
                                        revert with 0, 'SafeMath: addition overflow'
                                    taxFeeTotal += arg3 * taxFee / 10000
                                    if not arg1:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[585 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[583 len 29]
                                    if arg3 - (arg3 * taxFee / 10000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[550 len 26],
                                                    mem[602 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxFee / 10000)
                                    if balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000)
                                    emit Transfer((arg3 - (arg3 * taxFee / 10000)), arg1, arg2);
                                if stakingPoolAddress != msg.sender:
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7753414d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[646 len 26],
                                                    mem[698 len 6]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
