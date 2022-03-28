contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_1efe5523Address; offset 8
uint256 bid;
uint256 ask;
uint256 volume;
uint256 totalFeesCollected;
uint256 feesLeftInContract;
uint256 claimedFees;
uint8 canInvest;
uint8 sub_0e928e59; offset 8
uint256 fee;
uint256 fundsCollectedTotal;
uint256 fundsRepaidTotal;
uint256 fundsLeftInContract;
uint256 indexOfOrders;
uint256 sub_502c2b0c;
uint256 realBalance;
address thisContractAddress;
mapping of uint8 stor21;
mapping of uint8 stor22;
mapping of struct orders;
array of struct allOrdersArr;

function owners(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function name() {
    return name[0 len name.length]
}

function FundsLeftInContract() {
    return fundsLeftInContract
}

function claimedFees() {
    return claimedFees
}

function sub_0e928e59(?) {
    return bool(sub_0e928e59)
}

function feesLeftInContract() {
    return feesLeftInContract
}

function totalSupply() {
    return totalSupply
}

function bid() {
    return bid
}

function sub_1efe5523(?) {
    return sub_1efe5523Address
}

function canInvest() {
    return bool(canInvest)
}

function decimals() {
    return decimals
}

function indexOfOrders() {
    return indexOfOrders
}

function ask() {
    return ask
}

function sub_502c2b0c(?) {
    return sub_502c2b0c
}

function fundsRepaidTotal() {
    return fundsRepaidTotal
}

function realBalance() {
    return realBalance
}

function totalFeesCollected() {
    return totalFeesCollected
}

function allOrdersArr(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allOrdersArr.length
    return allOrdersArr[arg1].field_0, 
           allOrdersArr[arg1].field_256,
           allOrdersArr[arg1].field_512,
           bool(allOrdersArr[arg1].field_768),
           allOrdersArr[arg1].field_1024,
           allOrdersArr[arg1].field_1280,
           allOrdersArr[arg1].field_1536,
           allOrdersArr[arg1].field_1792
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function thisContract() {
    return thisContractAddress
}

function fundsCollectedTotal() {
    return fundsCollectedTotal
}

function symbol() {
    return symbol[0 len symbol.length]
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           bool(orders[arg1].field_768),
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536,
           orders[arg1].field_1792
}

function sub_b1764d6b(?) {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function volume() {
    return volume
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function removeOwner() {
    stor21[address(msg.sender)] = 0
}

function closeFunding() {
    if not stor21[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c7920616e206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    canInvest = 0
}

function sub_ad331767(?) {
    if not stor21[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c7920616e206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    canInvest = 1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor21[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c7920616e206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    fee = arg1
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not stor21[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c7920616e206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    stor21[address(arg1)] = 1
}

function setFundContract(address arg1) {
    require calldata.size - 4 >= 32
    if not stor21[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c7920616e206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_1efe5523Address = arg1
}

function sub_77a77400(?) {
    require calldata.size - 4 >= 32
    if sub_1efe5523Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x654f6e6c79207468652046756e64636f6e74726163742063616e2063616c6c20746869732066756e6374696f6e,
                    mem[209 len 19]
    stor22[address(arg1)] = 1
}

function checkPriceForXcoinsInWeiPerCoin(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1 / 10^18:
        if fee < 0:
            revert with 0, 'SafeMath: addition overflow'
        return fee
    require arg1 / 10^18
    if arg1 / 10^18 * ask / arg1 / 10^18 != ask:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (arg1 / 10^18 * ask) + fee < arg1 / 10^18 * ask:
        revert with 0, 'SafeMath: addition overflow'
    return ((arg1 / 10^18 * ask) + fee)
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function RealValue() {
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        return (0 / totalSupply)
    require fundsLeftInContract
    if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if 10^18 * fundsLeftInContract / totalSupply < 1:
        revert with 0, 'real value is 1 wei or lower'
    return (10^18 * fundsLeftInContract / totalSupply)
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function claimFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor21[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c7920616e206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    claimedFees += arg1
    if arg1 > feesLeftInContract:
        revert with 0, 'SafeMath: subtraction overflow'
    feesLeftInContract -= arg1
    if feesLeftInContract < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x736e6f7420796574206561726e656420656e6f756768206665657320746f20636c61696d2074686174206d7563,
                    mem[209 len 19]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6845524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6845524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function setPrice() {
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 0 / totalSupply
        if 99 * 0 / totalSupply / 0 / totalSupply != 99:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1 > 99 * 0 / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 0 / totalSupply / 100) - 1
        require bid >= 1
        if not 0 / totalSupply:
            ask = 1
        else:
            require 0 / totalSupply
            if 101 * 0 / totalSupply / 0 / totalSupply != 101:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (101 * 0 / totalSupply / 100) + 1 < 101 * 0 / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 0 / totalSupply / 100) + 1
    else:
        require fundsLeftInContract
        if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 10^18 * fundsLeftInContract / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 10^18 * fundsLeftInContract / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 10^18 * fundsLeftInContract / totalSupply
        if 99 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 99:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1 > 99 * 10^18 * fundsLeftInContract / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 10^18 * fundsLeftInContract / totalSupply / 100) - 1
        require bid >= 1
        if not 10^18 * fundsLeftInContract / totalSupply:
            ask = 1
        else:
            require 10^18 * fundsLeftInContract / totalSupply
            if 101 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 101:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1 < 101 * 10^18 * fundsLeftInContract / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1
}

function buy(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not canInvest:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6566756e64696e67206973206e6f7720636c6f7365642c2074727920616761696e206c617465,
                    mem[202 len 26]
    if ask > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6575736572206e6f742077696c6c696e6720746f20706179207468652061736b2070726963,
                    mem[201 len 27]
    if not sub_0e928e59:
        fee = arg3
    volume += arg1
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 0 / totalSupply
        if 99 * 0 / totalSupply / 0 / totalSupply != 99:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1 > 99 * 0 / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 0 / totalSupply / 100) - 1
        require bid >= 1
        if not 0 / totalSupply:
            ask = 1
        else:
            require 0 / totalSupply
            if 101 * 0 / totalSupply / 0 / totalSupply != 101:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (101 * 0 / totalSupply / 100) + 1 < 101 * 0 / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 0 / totalSupply / 100) + 1
    else:
        require fundsLeftInContract
        if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 10^18 * fundsLeftInContract / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 10^18 * fundsLeftInContract / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 10^18 * fundsLeftInContract / totalSupply
        if 99 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 99:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1 > 99 * 10^18 * fundsLeftInContract / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 10^18 * fundsLeftInContract / totalSupply / 100) - 1
        require bid >= 1
        if not 10^18 * fundsLeftInContract / totalSupply:
            ask = 1
        else:
            require 10^18 * fundsLeftInContract / totalSupply
            if 101 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 101:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1 < 101 * 10^18 * fundsLeftInContract / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1
    if not ask:
        revert with 0, 'less than 1 wei, buy more'
    require ask
    if ask * arg1 / ask != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ask * arg1 / 10^18 <= 1:
        revert with 0, 'less than 1 wei, buy more'
    fundsLeftInContract += ask * arg1 / 10^18
    fundsCollectedTotal += ask * arg1 / 10^18
    if (ask * arg1 / 10^18) + fee < ask * arg1 / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value < (ask * arg1 / 10^18) + fee:
        revert with 0, 'not enough money send'
    indexOfOrders++
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    if (ask * arg1 / 10^18) + fee < msg.value:
        require (ask * arg1 / 10^18) + fee > 0
        if (ask * arg1 / 10^18) + fee > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value msg.value - (ask * arg1 / 10^18) - fee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    orders[stor17].field_0 = indexOfOrders
    orders[stor17].field_256 = block.number
    orders[stor17].field_512 = arg1
    orders[stor17].field_768 = 1
    orders[stor17].field_1024 = ask
    orders[stor17].field_1280 = msg.sender
    orders[stor17].field_1536 = (ask * arg1 / 10^18) + fee
    orders[stor17].field_1792 = arg1
    allOrdersArr.length++
    allOrdersArr[allOrdersArr.length].field_0 = indexOfOrders
    allOrdersArr[allOrdersArr.length].field_256 = block.number
    allOrdersArr[allOrdersArr.length].field_512 = arg1
    allOrdersArr[allOrdersArr.length].field_768 = 1
    allOrdersArr[allOrdersArr.length].field_1024 = ask
    allOrdersArr[allOrdersArr.length].field_1280 = msg.sender
    allOrdersArr[allOrdersArr.length].field_1536 = (ask * arg1 / 10^18) + fee
    allOrdersArr[allOrdersArr.length].field_1792 = arg1
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 0 / totalSupply
        if 99 * 0 / totalSupply / 0 / totalSupply != 99:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if 1 > 99 * 0 / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 0 / totalSupply / 100) - 1
        require bid >= 1
        if not 0 / totalSupply:
            ask = 1
        else:
            require 0 / totalSupply
            if 101 * 0 / totalSupply / 0 / totalSupply != 101:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if (101 * 0 / totalSupply / 100) + 1 < 101 * 0 / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 0 / totalSupply / 100) + 1
    else:
        require fundsLeftInContract
        if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 10^18 * fundsLeftInContract / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 10^18 * fundsLeftInContract / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 10^18 * fundsLeftInContract / totalSupply
        if 99 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 99:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if 1 > 99 * 10^18 * fundsLeftInContract / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 10^18 * fundsLeftInContract / totalSupply / 100) - 1
        require bid >= 1
        if not 10^18 * fundsLeftInContract / totalSupply:
            ask = 1
        else:
            require 10^18 * fundsLeftInContract / totalSupply
            if 101 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 101:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1 < 101 * 10^18 * fundsLeftInContract / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1
    totalFeesCollected += fee
    feesLeftInContract += fee
    return indexOfOrders
}

function sell(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if bid < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7275736572206e6f742077696c6c696e6720746f2070617920746865206269642070726963,
                    mem[201 len 27]
    if not canInvest:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6566756e64696e67206973206e6f7720636c6f7365642c2074727920616761696e206c617465,
                    mem[202 len 26]
    if not sub_0e928e59:
        fee = arg3
    volume += arg1
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 0 / totalSupply
        if 99 * 0 / totalSupply / 0 / totalSupply != 99:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1 > 99 * 0 / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 0 / totalSupply / 100) - 1
        require bid >= 1
        if not 0 / totalSupply:
            ask = 1
        else:
            require 0 / totalSupply
            if 101 * 0 / totalSupply / 0 / totalSupply != 101:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (101 * 0 / totalSupply / 100) + 1 < 101 * 0 / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 0 / totalSupply / 100) + 1
    else:
        require fundsLeftInContract
        if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 10^18 * fundsLeftInContract / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 10^18 * fundsLeftInContract / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 10^18 * fundsLeftInContract / totalSupply
        if 99 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 99:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1 > 99 * 10^18 * fundsLeftInContract / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 10^18 * fundsLeftInContract / totalSupply / 100) - 1
        require bid >= 1
        if not 10^18 * fundsLeftInContract / totalSupply:
            ask = 1
        else:
            require 10^18 * fundsLeftInContract / totalSupply
            if 101 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 101:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1 < 101 * 10^18 * fundsLeftInContract / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1
    if not bid:
        if 0 > fundsLeftInContract:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x73636f6e747261637420697320746f6f2062726f6b6520746f207061792074686174206d7563,
                        mem[202 len 26]
        revert with 0, 'nothing?'
    require bid
    if bid * arg1 / bid != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if bid * arg1 / 10^18 > fundsLeftInContract:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x73636f6e747261637420697320746f6f2062726f6b6520746f207061792074686174206d7563,
                    mem[202 len 26]
    if bid * arg1 / 10^18 <= 0:
        revert with 0, 'nothing?'
    if bid * arg1 / 10^18 > fundsLeftInContract:
        revert with 0, 'SafeMath: subtraction overflow'
    fundsLeftInContract -= bid * arg1 / 10^18
    fundsRepaidTotal += bid * arg1 / 10^18
    totalFeesCollected += fee
    feesLeftInContract += fee
    if fee > bid * arg1 / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    indexOfOrders++
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    call msg.sender with:
       value (bid * arg1 / 10^18) - fee wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    orders[stor17].field_0 = indexOfOrders
    orders[stor17].field_256 = block.number
    orders[stor17].field_512 = arg1
    orders[stor17].field_768 = 0
    orders[stor17].field_1024 = bid
    orders[stor17].field_1280 = msg.sender
    orders[stor17].field_1536 = (bid * arg1 / 10^18) - fee
    orders[stor17].field_1792 = arg1
    allOrdersArr.length++
    allOrdersArr[allOrdersArr.length].field_0 = indexOfOrders
    allOrdersArr[allOrdersArr.length].field_256 = block.number
    allOrdersArr[allOrdersArr.length].field_512 = arg1
    allOrdersArr[allOrdersArr.length].field_768 = 0
    allOrdersArr[allOrdersArr.length].field_1024 = bid
    allOrdersArr[allOrdersArr.length].field_1280 = msg.sender
    allOrdersArr[allOrdersArr.length].field_1536 = (bid * arg1 / 10^18) - fee
    allOrdersArr[allOrdersArr.length].field_1792 = arg1
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 0 / totalSupply
        if 99 * 0 / totalSupply / 0 / totalSupply != 99:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
        if 1 > 99 * 0 / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 0 / totalSupply / 100) - 1
        require bid >= 1
        if not 0 / totalSupply:
            ask = 1
        else:
            require 0 / totalSupply
            if 101 * 0 / totalSupply / 0 / totalSupply != 101:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
            if (101 * 0 / totalSupply / 100) + 1 < 101 * 0 / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 0 / totalSupply / 100) + 1
    else:
        require fundsLeftInContract
        if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 10^18 * fundsLeftInContract / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 10^18 * fundsLeftInContract / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 10^18 * fundsLeftInContract / totalSupply
        if 99 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 99:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
        if 1 > 99 * 10^18 * fundsLeftInContract / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 10^18 * fundsLeftInContract / totalSupply / 100) - 1
        require bid >= 1
        if not 10^18 * fundsLeftInContract / totalSupply:
            ask = 1
        else:
            require 10^18 * fundsLeftInContract / totalSupply
            if 101 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 101:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
            if (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1 < 101 * 10^18 * fundsLeftInContract / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1
    return indexOfOrders
}

function sub_02fcb528(?) {
    require calldata.size - 4 >= 64
    if sub_1efe5523Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x654f6e6c79207468652046756e64636f6e74726163742063616e2063616c6c20746869732066756e6374696f6e,
                    mem[209 len 19]
    require stor22[address(arg2)]
    volume += arg1
    sub_502c2b0c += arg1
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 0 / totalSupply
        if 99 * 0 / totalSupply / 0 / totalSupply != 99:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1 > 99 * 0 / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 0 / totalSupply / 100) - 1
        require bid >= 1
        if not 0 / totalSupply:
            ask = 1
        else:
            require 0 / totalSupply
            if 101 * 0 / totalSupply / 0 / totalSupply != 101:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (101 * 0 / totalSupply / 100) + 1 < 101 * 0 / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 0 / totalSupply / 100) + 1
    else:
        require fundsLeftInContract
        if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 10^18 * fundsLeftInContract / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 10^18 * fundsLeftInContract / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 10^18 * fundsLeftInContract / totalSupply
        if 99 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 99:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1 > 99 * 10^18 * fundsLeftInContract / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 10^18 * fundsLeftInContract / totalSupply / 100) - 1
        require bid >= 1
        if not 10^18 * fundsLeftInContract / totalSupply:
            ask = 1
        else:
            require 10^18 * fundsLeftInContract / totalSupply
            if 101 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 101:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1 < 101 * 10^18 * fundsLeftInContract / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 0 / totalSupply:
            if fundsLeftInContract < 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x686e6f7420656e6f7567682066756e6473206c65667420696e207265736572766520666f7220746861,
                            mem[205 len 23]
            indexOfOrders++
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if 0 > fundsLeftInContract:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg2 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            orders[stor17].field_0 = indexOfOrders
            orders[stor17].field_256 = block.number
            orders[stor17].field_512 = arg1
            orders[stor17].field_768 = 0
            orders[stor17].field_1024 = bid
            orders[stor17].field_1280 = msg.sender
            orders[stor17].field_1536 = 0
            orders[stor17].field_1792 = arg1
            allOrdersArr.length++
            allOrdersArr[allOrdersArr.length].field_0 = indexOfOrders
            allOrdersArr[allOrdersArr.length].field_256 = block.number
            allOrdersArr[allOrdersArr.length].field_512 = arg1
            allOrdersArr[allOrdersArr.length].field_768 = 0
            allOrdersArr[allOrdersArr.length].field_1024 = bid
            allOrdersArr[allOrdersArr.length].field_1280 = msg.sender
            allOrdersArr[allOrdersArr.length].field_1536 = 0
        else:
            require 0 / totalSupply
            if 10^18 * 0 / totalSupply / 0 / totalSupply != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 10^18 * 0 / totalSupply:
                if fundsLeftInContract < 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x686e6f7420656e6f7567682066756e6473206c65667420696e207265736572766520666f7220746861,
                                mem[205 len 23]
                indexOfOrders++
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if 0 > fundsLeftInContract:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg2 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                orders[stor17].field_0 = indexOfOrders
                orders[stor17].field_256 = block.number
                orders[stor17].field_512 = arg1
                orders[stor17].field_768 = 0
                orders[stor17].field_1024 = bid
                orders[stor17].field_1280 = msg.sender
                orders[stor17].field_1536 = 0
                orders[stor17].field_1792 = arg1
                allOrdersArr.length++
                allOrdersArr[allOrdersArr.length].field_0 = indexOfOrders
                allOrdersArr[allOrdersArr.length].field_256 = block.number
                allOrdersArr[allOrdersArr.length].field_512 = arg1
                allOrdersArr[allOrdersArr.length].field_768 = 0
                allOrdersArr[allOrdersArr.length].field_1024 = bid
                allOrdersArr[allOrdersArr.length].field_1280 = msg.sender
                allOrdersArr[allOrdersArr.length].field_1536 = 0
            else:
                require 10^18 * 0 / totalSupply
                if 10^18 * 0 / totalSupply * arg1 / 10^18 * 0 / totalSupply != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if fundsLeftInContract < 10^18 * 0 / totalSupply * arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x686e6f7420656e6f7567682066756e6473206c65667420696e207265736572766520666f7220746861,
                                mem[205 len 23]
                indexOfOrders++
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if 10^18 * 0 / totalSupply * arg1 > fundsLeftInContract:
                    revert with 0, 'SafeMath: subtraction overflow'
                fundsLeftInContract += -1 * 10^18 * 0 / totalSupply * arg1
                fundsRepaidTotal += 10^18 * 0 / totalSupply * arg1
                call arg2 with:
                   value 10^18 * 0 / totalSupply * arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                orders[stor17].field_0 = indexOfOrders
                orders[stor17].field_256 = block.number
                orders[stor17].field_512 = arg1
                orders[stor17].field_768 = 0
                orders[stor17].field_1024 = bid
                orders[stor17].field_1280 = msg.sender
                orders[stor17].field_1536 = 10^18 * 0 / totalSupply * arg1
                orders[stor17].field_1792 = arg1
                allOrdersArr.length++
                allOrdersArr[allOrdersArr.length].field_0 = indexOfOrders
                allOrdersArr[allOrdersArr.length].field_256 = block.number
                allOrdersArr[allOrdersArr.length].field_512 = arg1
                allOrdersArr[allOrdersArr.length].field_768 = 0
                allOrdersArr[allOrdersArr.length].field_1024 = bid
                allOrdersArr[allOrdersArr.length].field_1280 = msg.sender
                allOrdersArr[allOrdersArr.length].field_1536 = 10^18 * 0 / totalSupply * arg1
    else:
        require fundsLeftInContract
        if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 10^18 * fundsLeftInContract / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 10^18 * fundsLeftInContract / totalSupply:
            if fundsLeftInContract < 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x686e6f7420656e6f7567682066756e6473206c65667420696e207265736572766520666f7220746861,
                            mem[205 len 23]
            indexOfOrders++
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if 0 > fundsLeftInContract:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg2 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            orders[stor17].field_0 = indexOfOrders
            orders[stor17].field_256 = block.number
            orders[stor17].field_512 = arg1
            orders[stor17].field_768 = 0
            orders[stor17].field_1024 = bid
            orders[stor17].field_1280 = msg.sender
            orders[stor17].field_1536 = 0
            orders[stor17].field_1792 = arg1
            allOrdersArr.length++
            allOrdersArr[allOrdersArr.length].field_0 = indexOfOrders
            allOrdersArr[allOrdersArr.length].field_256 = block.number
            allOrdersArr[allOrdersArr.length].field_512 = arg1
            allOrdersArr[allOrdersArr.length].field_768 = 0
            allOrdersArr[allOrdersArr.length].field_1024 = bid
            allOrdersArr[allOrdersArr.length].field_1280 = msg.sender
            allOrdersArr[allOrdersArr.length].field_1536 = 0
        else:
            require 10^18 * fundsLeftInContract / totalSupply
            if 10^18 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 10^18 * 10^18 * fundsLeftInContract / totalSupply:
                if fundsLeftInContract < 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x686e6f7420656e6f7567682066756e6473206c65667420696e207265736572766520666f7220746861,
                                mem[205 len 23]
                indexOfOrders++
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if 0 > fundsLeftInContract:
                    revert with 0, 'SafeMath: subtraction overflow'
                call arg2 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                orders[stor17].field_0 = indexOfOrders
                orders[stor17].field_256 = block.number
                orders[stor17].field_512 = arg1
                orders[stor17].field_768 = 0
                orders[stor17].field_1024 = bid
                orders[stor17].field_1280 = msg.sender
                orders[stor17].field_1536 = 0
                orders[stor17].field_1792 = arg1
                allOrdersArr.length++
                allOrdersArr[allOrdersArr.length].field_0 = indexOfOrders
                allOrdersArr[allOrdersArr.length].field_256 = block.number
                allOrdersArr[allOrdersArr.length].field_512 = arg1
                allOrdersArr[allOrdersArr.length].field_768 = 0
                allOrdersArr[allOrdersArr.length].field_1024 = bid
                allOrdersArr[allOrdersArr.length].field_1280 = msg.sender
                allOrdersArr[allOrdersArr.length].field_1536 = 0
            else:
                require 10^18 * 10^18 * fundsLeftInContract / totalSupply
                if 10^18 * 10^18 * fundsLeftInContract / totalSupply * arg1 / 10^18 * 10^18 * fundsLeftInContract / totalSupply != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if fundsLeftInContract < 10^18 * 10^18 * fundsLeftInContract / totalSupply * arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x686e6f7420656e6f7567682066756e6473206c65667420696e207265736572766520666f7220746861,
                                mem[205 len 23]
                indexOfOrders++
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if 10^18 * 10^18 * fundsLeftInContract / totalSupply * arg1 > fundsLeftInContract:
                    revert with 0, 'SafeMath: subtraction overflow'
                fundsLeftInContract += -1 * 10^18 * 10^18 * fundsLeftInContract / totalSupply * arg1
                fundsRepaidTotal += 10^18 * 10^18 * fundsLeftInContract / totalSupply * arg1
                call arg2 with:
                   value 10^18 * 10^18 * fundsLeftInContract / totalSupply * arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                orders[stor17].field_0 = indexOfOrders
                orders[stor17].field_256 = block.number
                orders[stor17].field_512 = arg1
                orders[stor17].field_768 = 0
                orders[stor17].field_1024 = bid
                orders[stor17].field_1280 = msg.sender
                orders[stor17].field_1536 = 10^18 * 10^18 * fundsLeftInContract / totalSupply * arg1
                orders[stor17].field_1792 = arg1
                allOrdersArr.length++
                allOrdersArr[allOrdersArr.length].field_0 = indexOfOrders
                allOrdersArr[allOrdersArr.length].field_256 = block.number
                allOrdersArr[allOrdersArr.length].field_512 = arg1
                allOrdersArr[allOrdersArr.length].field_768 = 0
                allOrdersArr[allOrdersArr.length].field_1024 = bid
                allOrdersArr[allOrdersArr.length].field_1280 = msg.sender
                allOrdersArr[allOrdersArr.length].field_1536 = 10^18 * 10^18 * fundsLeftInContract / totalSupply * arg1
    allOrdersArr[allOrdersArr.length].field_1792 = arg1
    if not fundsLeftInContract:
        fundsLeftInContract = 1
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 0 / totalSupply
        if 99 * 0 / totalSupply / 0 / totalSupply != 99:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
        if 1 > 99 * 0 / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 0 / totalSupply / 100) - 1
        require bid >= 1
        if not 0 / totalSupply:
            ask = 1
        else:
            require 0 / totalSupply
            if 101 * 0 / totalSupply / 0 / totalSupply != 101:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
            if (101 * 0 / totalSupply / 100) + 1 < 101 * 0 / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 0 / totalSupply / 100) + 1
    else:
        require fundsLeftInContract
        if 10^18 * fundsLeftInContract / fundsLeftInContract != 10^18:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 10^18 * fundsLeftInContract / totalSupply < 1:
            revert with 0, 'real value is 1 wei or lower'
        if not 10^18 * fundsLeftInContract / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        require 10^18 * fundsLeftInContract / totalSupply
        if 99 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 99:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
        if 1 > 99 * 10^18 * fundsLeftInContract / totalSupply / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        bid = (99 * 10^18 * fundsLeftInContract / totalSupply / 100) - 1
        require bid >= 1
        if not 10^18 * fundsLeftInContract / totalSupply:
            ask = 1
        else:
            require 10^18 * fundsLeftInContract / totalSupply
            if 101 * 10^18 * fundsLeftInContract / totalSupply / 10^18 * fundsLeftInContract / totalSupply != 101:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
            if (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1 < 101 * 10^18 * fundsLeftInContract / totalSupply / 100:
                revert with 0, 'SafeMath: addition overflow'
            ask = (101 * 10^18 * fundsLeftInContract / totalSupply / 100) + 1
    return indexOfOrders
}



}
