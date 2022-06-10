contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 roi;
uint256 feeRate;
uint256 sub_ea362937;
uint256 sub_d9607482;
uint256 numDeposits;
address managerAddress;
mapping of uint256 balance;
mapping of uint256 deposits;
mapping of uint256 cumulativeProfit;
mapping of uint256 profit;
mapping of address addresses;

function getBalance() {
    return balance[address(msg.sender)]
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balance[arg1]
}

function manager() {
    return managerAddress
}

function roi() {
    return roi
}

function getProfit() {
    return profit[address(msg.sender)]
}

function getCumulativeProfit() {
    return cumulativeProfit[address(msg.sender)]
}

function feeRate() {
    return feeRate
}

function numDeposits() {
    return numDeposits
}

function sub_ce74bc3e(?) {
    require calldata.size - 4 >= 32
    return profit[arg1]
}

function sub_d9607482(?) {
    return sub_d9607482
}

function sub_ea362937(?) {
    return sub_ea362937
}

function addresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    return addresses[arg1]
}

function sub_f7efba8e(?) {
    require calldata.size - 4 >= 32
    return cumulativeProfit[arg1]
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function getDepositDelta() {
    return (block.timestamp - deposits[address(msg.sender)])
}

function withdraw() {
    if block.timestamp - deposits[address(msg.sender)] / 3600 / 24 >= sub_d9607482:
        if eth.balance(this.address) > balance[address(msg.sender)] + cumulativeProfit[address(msg.sender)]:
            call msg.sender with:
               value balance[address(msg.sender)] + cumulativeProfit[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            stor0 = uint8(bool(ext_call.success))
            if stor0:
                deposits[address(msg.sender)] = block.timestamp
                profit[address(msg.sender)] = 0
                balance[address(msg.sender)] = 0
}

function reCalc() payable {
    if block.timestamp - deposits[address(msg.sender)] / 3600 / 24 >= sub_d9607482:
        if balance[address(msg.sender)] > 0:
            stor1 = (balance[address(msg.sender)] * roi) + (profit[address(msg.sender)] * roi) / 100 * feeRate / 100
            stor2 = ((balance[address(msg.sender)] * roi) + (profit[address(msg.sender)] * roi) / 100) - stor1
            call managerAddress with:
               value stor1 wei
                 gas 2300 * is_zero(value) wei
            stor0 = uint8(bool(ext_call.success))
            profit[address(msg.sender)] += stor2
            cumulativeProfit[address(msg.sender)] += stor2
            deposits[address(msg.sender)] = block.timestamp
}

function deposit() payable {
    numDeposits++
    sub_ea362937 = block.timestamp
    addresses[stor7] = msg.sender
    balance[address(msg.sender)] += msg.value
    if block.timestamp - deposits[address(msg.sender)] / 3600 / 24 >= sub_d9607482:
        if balance[address(msg.sender)] > 0:
            stor1 = (balance[address(msg.sender)] * roi) + (profit[address(msg.sender)] * roi) / 100 * feeRate / 100
            stor2 = ((balance[address(msg.sender)] * roi) + (profit[address(msg.sender)] * roi) / 100) - stor1
            call managerAddress with:
               value stor1 wei
                 gas 2300 * is_zero(value) wei
            stor0 = uint8(bool(ext_call.success))
            profit[address(msg.sender)] += stor2
            cumulativeProfit[address(msg.sender)] += stor2
            deposits[address(msg.sender)] = block.timestamp
}

function withdrawProfit() {
    if block.timestamp - deposits[address(msg.sender)] / 3600 / 24 >= sub_d9607482:
        if eth.balance(this.address) > profit[address(msg.sender)]:
            call msg.sender with:
               value profit[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            stor0 = uint8(bool(ext_call.success))
            if stor0:
                profit[address(msg.sender)] = 0
                if block.timestamp - deposits[address(msg.sender)] / 3600 / 24 >= sub_d9607482:
                    if balance[address(msg.sender)] > 0:
                        stor1 = (balance[address(msg.sender)] * roi) + (profit[address(msg.sender)] * roi) / 100 * feeRate / 100
                        stor2 = ((balance[address(msg.sender)] * roi) + (profit[address(msg.sender)] * roi) / 100) - stor1
                        call managerAddress with:
                           value stor1 wei
                             gas 2300 * is_zero(value) wei
                        stor0 = uint8(bool(ext_call.success))
                        profit[address(msg.sender)] += stor2
                        cumulativeProfit[address(msg.sender)] += stor2
                        deposits[address(msg.sender)] = block.timestamp
}



}
