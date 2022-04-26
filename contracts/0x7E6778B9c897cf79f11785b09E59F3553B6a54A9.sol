contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#  - burnRemaining()
#
address owner;
uint256 name;
address sub_e13b7f5cAddress;
uint256 totalAmount;
uint256 sub_53c69636;
uint256 sub_9661cb0d;
uint256 sub_6fa6316c;
uint256 sub_b5304a9c;
uint256 ratio;
uint256 maxPurchase;
uint256 minAllocation;
uint256 maxAllocation;
uint256 startTime;
uint256 endTime;
uint256 claimTime;
uint8 stor15;
address burnAddress; offset 8
mapping of struct sub_21ffef0c;

function name() {
    return name
}

function totalAmount() {
    return totalAmount
}

function sub_1ec58d7d(?) {
    return bool(stor15)
}

function sub_21ffef0c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_21ffef0c[address(arg1)].field_256
}

function claimTime() {
    return claimTime
}

function endTime() {
    return endTime
}

function sub_53c69636(?) {
    return sub_53c69636
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_21ffef0c[address(arg1)].field_0), 
           sub_21ffef0c[address(arg1)].field_256,
           sub_21ffef0c[address(arg1)].field_512,
           sub_21ffef0c[address(arg1)].field_768,
           sub_21ffef0c[address(arg1)].field_1024,
           sub_21ffef0c[address(arg1)].field_1280
}

function sub_6fa6316c(?) {
    return sub_6fa6316c
}

function burnAddress() {
    return burnAddress
}

function ratio() {
    return ratio
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_9661cb0d(?) {
    return sub_9661cb0d
}

function maxPurchase() {
    return maxPurchase
}

function maxAllocation() {
    return maxAllocation
}

function minAllocation() {
    return minAllocation
}

function sub_b5304a9c(?) {
    return sub_b5304a9c
}

function sub_e13b7f5c(?) {
    return sub_e13b7f5cAddress
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

function sub_938f296c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor15:
        return not bool(stor15)
    return bool(sub_21ffef0c[address(arg1)].field_0)
}

function sub_2e1db460(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = uint8(bool(arg1))
}

function updateRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateRatio: Ratio must be greater than 0'
    ratio = arg1
}

function updateTotalAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= sub_53c69636:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateTotalAmount: Bad total amount'
    totalAmount = arg1
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

function sub_1e6fc5f3(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateTime: Start time must be greater than 0'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateTime: End time must be greater than start time'
    if arg3 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateTime: Claim time must be greater than or equal to end time'
    startTime = arg1
    endTime = arg2
    claimTime = arg3
}

function sub_e603eddb(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateAllocation: Max purchase must be greater than 0'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateAllocation: Allocation must be greater than 0'
    if arg3 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateAllocation: Max allocation must be greater than min one'
    maxPurchase = arg1
    minAllocation = arg2
    maxAllocation = arg3
}

function addWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        sub_21ffef0c[mem[(32 * idx) + 140 len 20]].field_0 = 1
        idx = idx + 1
        continue 
}

function removeWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        sub_21ffef0c[mem[(32 * idx) + 140 len 20]].field_0 = 0
        idx = idx + 1
        continue 
}

function withdrawFund() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_b5304a9c >= sub_6fa6316c:
        if eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit WithdrawFund(eth.balance(this.address), msg.sender);
    else:
        if sub_b5304a9c > sub_6fa6316c:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if eth.balance(this.address) <= sub_6fa6316c - sub_b5304a9c:
            if eth.balance(this.address):
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit WithdrawFund(eth.balance(this.address), msg.sender);
        else:
            if sub_b5304a9c > sub_6fa6316c:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_6fa6316c - sub_b5304a9c > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) - sub_6fa6316c + sub_b5304a9c:
                call msg.sender with:
                   value eth.balance(this.address) - sub_6fa6316c + sub_b5304a9c wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit WithdrawFund((eth.balance(this.address) - sub_6fa6316c + sub_b5304a9c), msg.sender);
}

function sub_6202834f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if block.timestamp < startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::calculatePayment: You cannot purchase now'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::calculatePayment: You cannot purchase now'
    if stor15:
        if not sub_21ffef0c[address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'AuraPublicSale::calculatePayment: You are not whitelisted'
    if arg2 < minAllocation:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::calculatePayment: Amount must be greater than or equal to min allocation'
    if arg2 <= maxAllocation:
        if arg2 + sub_53c69636 < sub_53c69636:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 + sub_53c69636 <= totalAmount:
            if not arg2:
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                return arg2, 0 / ratio
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not ratio:
                revert with 0, 'SafeMath: division by zero', 0
            return arg2, 10^18 * arg2 / ratio
    else:
        if maxAllocation + sub_53c69636 < sub_53c69636:
            revert with 0, 'SafeMath: addition overflow'
        if maxAllocation + sub_53c69636 <= totalAmount:
            if not maxAllocation:
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                return maxAllocation, 0 / ratio
            if 10^18 * maxAllocation / maxAllocation != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not ratio:
                revert with 0, 'SafeMath: division by zero', 0
            return maxAllocation, 10^18 * maxAllocation / ratio
    if sub_53c69636 > totalAmount:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not totalAmount - sub_53c69636:
        if not ratio:
            revert with 0, 'SafeMath: division by zero', 0
        return totalAmount - sub_53c69636, 0 / ratio
    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / totalAmount - sub_53c69636 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ratio:
        revert with 0, 'SafeMath: division by zero', 0
    return totalAmount - sub_53c69636, (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio
}

function purchase() payable {
    if sub_21ffef0c[msg.sender].field_1280 >= maxPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::purchase: You can purchase up to only 4 times'
    if not msg.value:
        if block.timestamp < startTime:
            revert with 0, 'AuraPublicSale::calculatePayment: You cannot purchase now'
        if block.timestamp >= endTime:
            revert with 0, 'AuraPublicSale::calculatePayment: You cannot purchase now'
        if stor15:
            if not sub_21ffef0c[address(msg.sender)].field_0:
                revert with 0, 'AuraPublicSale::calculatePayment: You are not whitelisted'
        if 0 < minAllocation:
            revert with 0, 'AuraPublicSale::calculatePayment: Amount must be greater than or equal to min allocation'
        if 0 <= maxAllocation:
            if sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if sub_53c69636 > totalAmount:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ratio:
                revert with 0, 'SafeMath: division by zero', 0
            revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
        if maxAllocation + sub_53c69636 < sub_53c69636:
            revert with 0, 'SafeMath: addition overflow'
        if maxAllocation + sub_53c69636 <= totalAmount:
            if not maxAllocation:
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                if maxAllocation <= 0:
                    revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                if maxAllocation + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_21ffef0c[msg.sender].field_256 += maxAllocation
                if maxAllocation + sub_53c69636 < sub_53c69636:
                    revert with 0, 'SafeMath: addition overflow'
                sub_53c69636 += maxAllocation
                if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                sub_21ffef0c[msg.sender].field_1280++
                if 0 / ratio < msg.value:
                    if 0 / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_768 = msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768
                    if 0 / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (0 / ratio) + sub_6fa6316c < sub_6fa6316c:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6fa6316c = msg.value - (0 / ratio) + sub_6fa6316c
            else:
                if 10^18 * maxAllocation / maxAllocation != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                if maxAllocation <= 0:
                    revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                if maxAllocation + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_21ffef0c[msg.sender].field_256 += maxAllocation
                if maxAllocation + sub_53c69636 < sub_53c69636:
                    revert with 0, 'SafeMath: addition overflow'
                sub_53c69636 += maxAllocation
                if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                sub_21ffef0c[msg.sender].field_1280++
                if 10^18 * maxAllocation / ratio < msg.value:
                    if 10^18 * maxAllocation / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (10^18 * maxAllocation / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_768 = msg.value - (10^18 * maxAllocation / ratio) + sub_21ffef0c[msg.sender].field_768
                    if 10^18 * maxAllocation / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (10^18 * maxAllocation / ratio) + sub_6fa6316c < sub_6fa6316c:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6fa6316c = msg.value - (10^18 * maxAllocation / ratio) + sub_6fa6316c
            emit Purchase(maxAllocation, msg.sender);
        else:
            if sub_53c69636 > totalAmount:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not totalAmount - sub_53c69636:
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                if totalAmount - sub_53c69636 <= 0:
                    revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                if totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_21ffef0c[msg.sender].field_256 = totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256
                if totalAmount < sub_53c69636:
                    revert with 0, 'SafeMath: addition overflow'
                sub_53c69636 = totalAmount
                if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                sub_21ffef0c[msg.sender].field_1280++
                if 0 / ratio < msg.value:
                    if 0 / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_768 = msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768
                    if 0 / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (0 / ratio) + sub_6fa6316c < sub_6fa6316c:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6fa6316c = msg.value - (0 / ratio) + sub_6fa6316c
            else:
                if (10^18 * totalAmount) - (10^18 * sub_53c69636) / totalAmount - sub_53c69636 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                if totalAmount - sub_53c69636 <= 0:
                    revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                if totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                sub_21ffef0c[msg.sender].field_256 = totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256
                if totalAmount < sub_53c69636:
                    revert with 0, 'SafeMath: addition overflow'
                sub_53c69636 = totalAmount
                if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                sub_21ffef0c[msg.sender].field_1280++
                if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio < msg.value:
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_768 = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_21ffef0c[msg.sender].field_768
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c < sub_6fa6316c:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6fa6316c = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c
            emit Purchase((totalAmount - sub_53c69636), msg.sender);
    else:
        if ratio * msg.value / msg.value != ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp < startTime:
            revert with 0, 'AuraPublicSale::calculatePayment: You cannot purchase now'
        if block.timestamp >= endTime:
            revert with 0, 'AuraPublicSale::calculatePayment: You cannot purchase now'
        if stor15:
            if not sub_21ffef0c[address(msg.sender)].field_0:
                revert with 0, 'AuraPublicSale::calculatePayment: You are not whitelisted'
        if ratio * msg.value / 10^18 < minAllocation:
            revert with 0, 'AuraPublicSale::calculatePayment: Amount must be greater than or equal to min allocation'
        if ratio * msg.value / 10^18 <= maxAllocation:
            if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if (ratio * msg.value / 10^18) + sub_53c69636 <= totalAmount:
                if not ratio * msg.value / 10^18:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ratio * msg.value / 10^18 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if (ratio * msg.value / 10^18) + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_256 += ratio * msg.value / 10^18
                    if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 += ratio * msg.value / 10^18
                    if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_1280++
                    if 0 / ratio < msg.value:
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_21ffef0c[msg.sender].field_768 = msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - (0 / ratio) + sub_6fa6316c
                else:
                    if 10^18 * ratio * msg.value / 10^18 / ratio * msg.value / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ratio * msg.value / 10^18 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if (ratio * msg.value / 10^18) + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_256 += ratio * msg.value / 10^18
                    if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 += ratio * msg.value / 10^18
                    if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_1280++
                    if 10^18 * ratio * msg.value / 10^18 / ratio < msg.value:
                        if 10^18 * ratio * msg.value / 10^18 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (10^18 * ratio * msg.value / 10^18 / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_21ffef0c[msg.sender].field_768 = msg.value - (10^18 * ratio * msg.value / 10^18 / ratio) + sub_21ffef0c[msg.sender].field_768
                        if 10^18 * ratio * msg.value / 10^18 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (10^18 * ratio * msg.value / 10^18 / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - (10^18 * ratio * msg.value / 10^18 / ratio) + sub_6fa6316c
                emit Purchase((ratio * msg.value / 10^18), msg.sender);
            else:
                if sub_53c69636 > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not totalAmount - sub_53c69636:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalAmount - sub_53c69636 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_256 = totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256
                    if totalAmount < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = totalAmount
                    if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_1280++
                    if 0 / ratio < msg.value:
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_21ffef0c[msg.sender].field_768 = msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - (0 / ratio) + sub_6fa6316c
                else:
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / totalAmount - sub_53c69636 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalAmount - sub_53c69636 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_256 = totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256
                    if totalAmount < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = totalAmount
                    if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_1280++
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio < msg.value:
                        if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_21ffef0c[msg.sender].field_768 = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_21ffef0c[msg.sender].field_768
                        if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c
                emit Purchase((totalAmount - sub_53c69636), msg.sender);
        else:
            if maxAllocation + sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if maxAllocation + sub_53c69636 <= totalAmount:
                if not maxAllocation:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if maxAllocation <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if maxAllocation + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_256 += maxAllocation
                    if maxAllocation + sub_53c69636 < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 += maxAllocation
                    if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_1280++
                    if 0 / ratio < msg.value:
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_21ffef0c[msg.sender].field_768 = msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - (0 / ratio) + sub_6fa6316c
                else:
                    if 10^18 * maxAllocation / maxAllocation != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if maxAllocation <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if maxAllocation + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_256 += maxAllocation
                    if maxAllocation + sub_53c69636 < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 += maxAllocation
                    if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_1280++
                    if 10^18 * maxAllocation / ratio < msg.value:
                        if 10^18 * maxAllocation / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (10^18 * maxAllocation / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_21ffef0c[msg.sender].field_768 = msg.value - (10^18 * maxAllocation / ratio) + sub_21ffef0c[msg.sender].field_768
                        if 10^18 * maxAllocation / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (10^18 * maxAllocation / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - (10^18 * maxAllocation / ratio) + sub_6fa6316c
                emit Purchase(maxAllocation, msg.sender);
            else:
                if sub_53c69636 > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not totalAmount - sub_53c69636:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalAmount - sub_53c69636 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_256 = totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256
                    if totalAmount < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = totalAmount
                    if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_1280++
                    if 0 / ratio < msg.value:
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_21ffef0c[msg.sender].field_768 = msg.value - (0 / ratio) + sub_21ffef0c[msg.sender].field_768
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - (0 / ratio) + sub_6fa6316c
                else:
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / totalAmount - sub_53c69636 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalAmount - sub_53c69636 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256 < sub_21ffef0c[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_256 = totalAmount - sub_53c69636 + sub_21ffef0c[msg.sender].field_256
                    if totalAmount < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = totalAmount
                    if sub_21ffef0c[msg.sender].field_1280 + 1 < sub_21ffef0c[msg.sender].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_21ffef0c[msg.sender].field_1280++
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio < msg.value:
                        if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_21ffef0c[msg.sender].field_768 < sub_21ffef0c[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_21ffef0c[msg.sender].field_768 = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_21ffef0c[msg.sender].field_768
                        if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c
                emit Purchase((totalAmount - sub_53c69636), msg.sender);
}



}
