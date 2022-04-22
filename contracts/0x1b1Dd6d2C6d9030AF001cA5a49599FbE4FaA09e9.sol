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
uint256 minAllocation;
uint256 maxAllocation;
uint256 startTime;
uint256 endTime;
uint256 claimTime;
uint8 sub_1ec58d7d;
address burnAddress; offset 8
mapping of struct stor15;

function name() {
    return name
}

function totalAmount() {
    return totalAmount
}

function sub_1ec58d7d(?) {
    return bool(sub_1ec58d7d)
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
    if not sub_1ec58d7d:
        return not bool(sub_1ec58d7d)
    return bool(stor15[address(arg1)].field_0)
}

function sub_2e1db460(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1ec58d7d = uint8(bool(arg1))
}

function sub_21ffef0c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor15[address(arg1)].field_256 <= maxAllocation:
        return stor15[address(arg1)].field_256, maxAllocation - stor15[address(arg1)].field_256
    return stor15[address(arg1)].field_256, 0
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

function sub_24fb413c(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateAllocation: Allocation must be greater than 0'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraPublicSale::updateAllocation: Max allocation must be greater than min one'
    minAllocation = arg1
    maxAllocation = arg2
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor15[address(arg1)].field_256 <= maxAllocation:
        return bool(stor15[address(arg1)].field_0), 
               stor15[address(arg1)].field_256,
               stor15[address(arg1)].field_512,
               stor15[address(arg1)].field_768,
               stor15[address(arg1)].field_1024,
               maxAllocation - stor15[address(arg1)].field_256
    return bool(stor15[address(arg1)].field_0), 
           stor15[address(arg1)].field_256,
           stor15[address(arg1)].field_512,
           stor15[address(arg1)].field_768,
           stor15[address(arg1)].field_1024,
           0
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
        mem[32] = 15
        stor15[mem[(32 * idx) + 140 len 20]].field_0 = 1
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
        mem[32] = 15
        stor15[mem[(32 * idx) + 140 len 20]].field_0 = 0
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
                    32,
                    57,
                    0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e,
                    ': You cannot purchase now'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e,
                    ': You cannot purchase now'
    if sub_1ec58d7d:
        if not stor15[address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        57,
                        0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e,
                        ': You are not whitelisted'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e,
                    ': Amount must be greater than 0'
    if arg2 + stor15[address(arg1)].field_256 < stor15[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if stor15[address(arg1)].field_256 <= maxAllocation:
        if arg2 + stor15[address(arg1)].field_256 < minAllocation:
            revert with 0, 
                        32,
                        76,
                        0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e,
                        ': Amount must be greater than mi',
                        0x6e20616c6c6f636174696f6e0000000000000000000000000000000000000000
        if arg2 <= maxAllocation - stor15[address(arg1)].field_256:
            if arg2 + sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 + sub_53c69636 <= totalAmount:
                if not arg2:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    return arg2, 0 / ratio
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                return arg2, 10^18 * arg2 / ratio
        else:
            if maxAllocation - stor15[address(arg1)].field_256 + sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if maxAllocation - stor15[address(arg1)].field_256 + sub_53c69636 <= totalAmount:
                if not maxAllocation - stor15[address(arg1)].field_256:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    return maxAllocation - stor15[address(arg1)].field_256, 0 / ratio
                if (10^18 * maxAllocation) - (10^18 * stor15[address(arg1)].field_256) / maxAllocation - stor15[address(arg1)].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                return maxAllocation - stor15[address(arg1)].field_256, 
                       (10^18 * maxAllocation) - (10^18 * stor15[address(arg1)].field_256) / ratio
    else:
        if arg2 + stor15[address(arg1)].field_256 < minAllocation:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        76,
                        0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e,
                        ': Amount must be greater than mi',
                        0x6e20616c6c6f636174696f6e0000000000000000000000000000000000000000
        if arg2 > 0:
            if sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if sub_53c69636 > totalAmount:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ratio:
                revert with 0, 'SafeMath: division by zero', 0
            return 0, 0 / ratio
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
    if not msg.value:
        if block.timestamp < startTime:
            revert with 0, 32, 57, 0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e, ': You cannot purchase now'
        if block.timestamp >= endTime:
            revert with 0, 32, 57, 0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e, ': You cannot purchase now'
        if sub_1ec58d7d:
            if not stor15[address(msg.sender)].field_0:
                revert with 0, 32, 57, 0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e, ': You are not whitelisted'
        revert with 0, 32, 63, 0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e, ': Amount must be greater than 0'
    if ratio * msg.value / msg.value != ratio:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if block.timestamp < startTime:
        revert with 0, 32, 57, 0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e, ': You cannot purchase now'
    if block.timestamp >= endTime:
        revert with 0, 32, 57, 0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e, ': You cannot purchase now'
    if sub_1ec58d7d:
        if not stor15[address(msg.sender)].field_0:
            revert with 0, 32, 57, 0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e, ': You are not whitelisted'
    if ratio * msg.value / 10^18 <= 0:
        revert with 0, 32, 63, 0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e, ': Amount must be greater than 0'
    if (ratio * msg.value / 10^18) + stor15[address(msg.sender)].field_256 < stor15[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if (ratio * msg.value / 10^18) + stor15[address(msg.sender)].field_256 < minAllocation:
        revert with 0, 
                    32,
                    76,
                    0xfe417572615075626c696353616c653a3a63616c63756c6174655061796d656e,
                    ': Amount must be greater than mi',
                    0x6e20616c6c6f636174696f6e0000000000000000000000000000000000000000
    if stor15[address(msg.sender)].field_256 <= maxAllocation:
        if ratio * msg.value / 10^18 <= maxAllocation - stor15[address(msg.sender)].field_256:
            if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if (ratio * msg.value / 10^18) + sub_53c69636 <= totalAmount:
                if not ratio * msg.value / 10^18:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ratio * msg.value / 10^18 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if (ratio * msg.value / 10^18) + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_256 += ratio * msg.value / 10^18
                    if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 += ratio * msg.value / 10^18
                    if 0 / ratio < msg.value:
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15[msg.sender].field_768 = msg.value - (0 / ratio) + stor15[msg.sender].field_768
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
                    if (ratio * msg.value / 10^18) + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_256 += ratio * msg.value / 10^18
                    if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 += ratio * msg.value / 10^18
                    if 10^18 * ratio * msg.value / 10^18 / ratio < msg.value:
                        if 10^18 * ratio * msg.value / 10^18 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (10^18 * ratio * msg.value / 10^18 / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15[msg.sender].field_768 = msg.value - (10^18 * ratio * msg.value / 10^18 / ratio) + stor15[msg.sender].field_768
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
                    if totalAmount - sub_53c69636 + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_256 = totalAmount - sub_53c69636 + stor15[msg.sender].field_256
                    if totalAmount < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = totalAmount
                    if 0 / ratio < msg.value:
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15[msg.sender].field_768 = msg.value - (0 / ratio) + stor15[msg.sender].field_768
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
                    if totalAmount - sub_53c69636 + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_256 = totalAmount - sub_53c69636 + stor15[msg.sender].field_256
                    if totalAmount < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = totalAmount
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio < msg.value:
                        if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15[msg.sender].field_768 = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + stor15[msg.sender].field_768
                        if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c
                emit Purchase((totalAmount - sub_53c69636), msg.sender);
        else:
            if maxAllocation - stor15[address(msg.sender)].field_256 + sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if maxAllocation - stor15[address(msg.sender)].field_256 + sub_53c69636 <= totalAmount:
                if not maxAllocation - stor15[address(msg.sender)].field_256:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if maxAllocation - stor15[address(msg.sender)].field_256 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if maxAllocation - stor15[address(msg.sender)].field_256 + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_256 = maxAllocation - stor15[address(msg.sender)].field_256 + stor15[msg.sender].field_256
                    if maxAllocation - stor15[address(msg.sender)].field_256 + sub_53c69636 < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = maxAllocation - stor15[address(msg.sender)].field_256 + sub_53c69636
                    if 0 / ratio < msg.value:
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15[msg.sender].field_768 = msg.value - (0 / ratio) + stor15[msg.sender].field_768
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - (0 / ratio) + sub_6fa6316c
                else:
                    if (10^18 * maxAllocation) - (10^18 * stor15[address(msg.sender)].field_256) / maxAllocation - stor15[address(msg.sender)].field_256 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if maxAllocation - stor15[address(msg.sender)].field_256 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if maxAllocation - stor15[address(msg.sender)].field_256 + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_256 = maxAllocation - stor15[address(msg.sender)].field_256 + stor15[msg.sender].field_256
                    if maxAllocation - stor15[address(msg.sender)].field_256 + sub_53c69636 < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = maxAllocation - stor15[address(msg.sender)].field_256 + sub_53c69636
                    if (10^18 * maxAllocation) - (10^18 * stor15[address(msg.sender)].field_256) / ratio < msg.value:
                        if (10^18 * maxAllocation) - (10^18 * stor15[address(msg.sender)].field_256) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * maxAllocation) - (10^18 * stor15[address(msg.sender)].field_256) / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15[msg.sender].field_768 = msg.value - ((10^18 * maxAllocation) - (10^18 * stor15[address(msg.sender)].field_256) / ratio) + stor15[msg.sender].field_768
                        if (10^18 * maxAllocation) - (10^18 * stor15[address(msg.sender)].field_256) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * maxAllocation) - (10^18 * stor15[address(msg.sender)].field_256) / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - ((10^18 * maxAllocation) - (10^18 * stor15[address(msg.sender)].field_256) / ratio) + sub_6fa6316c
                emit Purchase((maxAllocation - stor15[address(msg.sender)].field_256), msg.sender);
            else:
                if sub_53c69636 > totalAmount:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not totalAmount - sub_53c69636:
                    if not ratio:
                        revert with 0, 'SafeMath: division by zero', 0
                    if totalAmount - sub_53c69636 <= 0:
                        revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                    if totalAmount - sub_53c69636 + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_256 = totalAmount - sub_53c69636 + stor15[msg.sender].field_256
                    if totalAmount < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = totalAmount
                    if 0 / ratio < msg.value:
                        if 0 / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - (0 / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15[msg.sender].field_768 = msg.value - (0 / ratio) + stor15[msg.sender].field_768
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
                    if totalAmount - sub_53c69636 + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_256 = totalAmount - sub_53c69636 + stor15[msg.sender].field_256
                    if totalAmount < sub_53c69636:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_53c69636 = totalAmount
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio < msg.value:
                        if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        stor15[msg.sender].field_768 = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + stor15[msg.sender].field_768
                        if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c < sub_6fa6316c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6fa6316c = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c
                emit Purchase((totalAmount - sub_53c69636), msg.sender);
    else:
        if ratio * msg.value / 10^18 > 0:
            if sub_53c69636 < sub_53c69636:
                revert with 0, 'SafeMath: addition overflow'
            if sub_53c69636 > totalAmount:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ratio:
                revert with 0, 'SafeMath: division by zero', 0
            revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
        if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
            revert with 0, 'SafeMath: addition overflow'
        if (ratio * msg.value / 10^18) + sub_53c69636 <= totalAmount:
            if not ratio * msg.value / 10^18:
                if not ratio:
                    revert with 0, 'SafeMath: division by zero', 0
                if ratio * msg.value / 10^18 <= 0:
                    revert with 0, 'AuraPublicSale::purchase: Amount must be greater than 0'
                if (ratio * msg.value / 10^18) + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                stor15[msg.sender].field_256 += ratio * msg.value / 10^18
                if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
                    revert with 0, 'SafeMath: addition overflow'
                sub_53c69636 += ratio * msg.value / 10^18
                if 0 / ratio < msg.value:
                    if 0 / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (0 / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_768 = msg.value - (0 / ratio) + stor15[msg.sender].field_768
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
                if (ratio * msg.value / 10^18) + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                stor15[msg.sender].field_256 += ratio * msg.value / 10^18
                if (ratio * msg.value / 10^18) + sub_53c69636 < sub_53c69636:
                    revert with 0, 'SafeMath: addition overflow'
                sub_53c69636 += ratio * msg.value / 10^18
                if 10^18 * ratio * msg.value / 10^18 / ratio < msg.value:
                    if 10^18 * ratio * msg.value / 10^18 / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (10^18 * ratio * msg.value / 10^18 / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_768 = msg.value - (10^18 * ratio * msg.value / 10^18 / ratio) + stor15[msg.sender].field_768
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
                if totalAmount - sub_53c69636 + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                stor15[msg.sender].field_256 = totalAmount - sub_53c69636 + stor15[msg.sender].field_256
                if totalAmount < sub_53c69636:
                    revert with 0, 'SafeMath: addition overflow'
                sub_53c69636 = totalAmount
                if 0 / ratio < msg.value:
                    if 0 / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - (0 / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_768 = msg.value - (0 / ratio) + stor15[msg.sender].field_768
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
                if totalAmount - sub_53c69636 + stor15[msg.sender].field_256 < stor15[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                stor15[msg.sender].field_256 = totalAmount - sub_53c69636 + stor15[msg.sender].field_256
                if totalAmount < sub_53c69636:
                    revert with 0, 'SafeMath: addition overflow'
                sub_53c69636 = totalAmount
                if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio < msg.value:
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + stor15[msg.sender].field_768 < stor15[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    stor15[msg.sender].field_768 = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + stor15[msg.sender].field_768
                    if (10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c < sub_6fa6316c:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6fa6316c = msg.value - ((10^18 * totalAmount) - (10^18 * sub_53c69636) / ratio) + sub_6fa6316c
            emit Purchase((totalAmount - sub_53c69636), msg.sender);
}



}
