contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'BabyBoo'

const decimals = 4

const symbol = 'BBOO'


address owner;
mapping of uint8 stor1;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 totalFee;
uint256 stor17;
address autoLiquidityReceiverAddress;
address sub_d92420eeAddress;
address marketingFeeReceiverAddress;
uint256 stor21;
uint256 stor22;
address routerAddress;
address pairAddress;
address stor25;
uint256 stor26;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _maxWalletToken() {
    return _maxWalletToken
}

function getOwner() {
    return owner
}

function pair() {
    return pairAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_d92420ee(?) {
    return sub_d92420eeAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    _maxWalletToken = totalSupply * arg1 / 100
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor26 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor21 = arg1
    stor22 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function getCirculatingSupply() {
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor25)
    call stor25.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13 = arg1
    stor14 = arg2
    stor15 = arg3
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg1 + arg2 + arg3
    stor17 = arg4
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(stor25)
    if not arg2:
        call stor25.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor25.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor24]:
        if not arg1:
            if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                    return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    else:
        if balanceOf[stor24]:
            if 2 * balanceOf[stor24] / balanceOf[stor24] != 2:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg1:
                if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                    return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
            else:
                if arg1:
                    if arg1 * 2 * balanceOf[stor24] / arg1 != 2 * balanceOf[stor24]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                        return (arg1 * 2 * balanceOf[stor24] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor24]:
        if not arg2:
            if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                    return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    else:
        if balanceOf[stor24]:
            if 2 * balanceOf[stor24] / balanceOf[stor24] != 2:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                    return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
            else:
                if arg2:
                    if arg2 * 2 * balanceOf[stor24] / arg2 != 2 * balanceOf[stor24]:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                        return (arg2 * 2 * balanceOf[stor24] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    revert
}

function airdrop(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                    mem[204 len 24]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg3.length
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[0] = arg1
    mem[32] = 8
    if balanceOf[address(arg1)] < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0, 'Not enough tokens to airdrop'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = 20
        mem[_63 + 32] = 'Insufficient Balance'
        mem[32] = 8
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _65 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_65 + idx + 68] = mem[_63 + idx + 32]
                idx = idx + 32
                continue 
            mem[_65 + 68] = mem[_65 + 80 len 20]
            revert with memory
              from mem[64]
               len _65 + -mem[64] + 100
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit Transfer(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        require idx < arg2.length
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 12
        if not stor12[address(cd[((32 * idx) + arg2 + 36)])]:
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 8
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(stor25)
            call stor25.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
        idx = idx + 1
        continue 
    if not stor12[address(arg1)]:
        require ext_code.size(stor25)
        call stor25.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
}



}
