contract main {




// =====================  Runtime code  =====================


address owner;
address nextOwner;
uint256 maxBetCoinDice;
uint256 maxBetDoubleDice;
uint128 jackpotSize;
uint128 lockedInBets; offset 128
mapping of struct stor5;

function maxBetCoinDice() {
    return maxBetCoinDice
}

function jackpotSize() {
    return jackpotSize
}

function nextOwner() {
    return nextOwner
}

function owner() {
    return owner
}

function maxBetDoubleDice() {
    return maxBetDoubleDice
}

function lockedInBets() {
    return lockedInBets
}

function kill() {
    require msg.sender == owner
    require not lockedInBets
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function acceptNextOwner() {
    require msg.sender == nextOwner
    owner = nextOwner
}

function changeMaxBetCoinDice(uint256 arg1) {
    require msg.sender == owner
    maxBetCoinDice = arg1
}

function changeMaxBetDoubleDice(uint256 arg1) {
    require msg.sender == owner
    maxBetDoubleDice = arg1
}

function approveNextOwner(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    nextOwner = arg1
}

function increaseJackpot(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    require uint128(jackpotSize + lockedInBets) + arg1 <= eth.balance(this.address)
    jackpotSize = uint128(jackpotSize + arg1)
}

function withdrawFunds(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= eth.balance(this.address)
    require uint128(jackpotSize + lockedInBets) + arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit Payment(arg2, arg1);
}

function refundBet(address arg1) {
    require stor5[address(arg1)].field_128
    require block.number > stor5[address(arg1)].field_8 + 100
    require stor5[address(arg1)].field_0 <= 3
    if not stor5[address(arg1)].field_0:
        idx = 0
        s = 1
        t = 0
        while idx < 2:
            if not stor5[address(arg1)].field_64 or not s:
                idx = idx + 1
                s = 2 * s
                t = t
                continue 
            idx = idx + 1
            s = 2 * s
            t = t + 1
            continue 
        require 0 < t
        require t <= 2
        require t
        lockedInBets = uint128(lockedInBets - (98 * 2 * stor5[address(arg1)].field_128 / t / 100))
    else:
        require stor5[address(arg1)].field_0 <= 3
        if stor5[address(arg1)].field_0 == 1:
            idx = 0
            s = 1
            t = 0
            while idx < 6:
                if not stor5[address(arg1)].field_64 or not s:
                    idx = idx + 1
                    s = 2 * s
                    t = t
                    continue 
                idx = idx + 1
                s = 2 * s
                t = t + 1
                continue 
            require 0 < t
            require t <= 6
            require t
            lockedInBets = uint128(lockedInBets - (98 * 6 * stor5[address(arg1)].field_128 / t / 100))
        else:
            require stor5[address(arg1)].field_0 <= 3
            require stor5[address(arg1)].field_0 == 2
            idx = 0
            s = 1
            t = 0
            while idx < 36:
                if not stor5[address(arg1)].field_64 or not s:
                    idx = idx + 1
                    s = 2 * s
                    t = t
                    continue 
                idx = idx + 1
                s = 2 * s
                t = t + 1
                continue 
            require 0 < t
            require t <= 36
            require t
            lockedInBets = uint128(lockedInBets - (98 * 36 * stor5[address(arg1)].field_128 / t / 100))
    stor5[address(arg1)].field_0 = 0
    stor5[address(arg1)].field_8 = 0
    stor5[address(arg1)].field_64 = 0
    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
    call arg1 with:
       value stor5[address(arg1)].field_128 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(stor5[address(arg1)].field_128, arg1);
    else:
        emit Payment(stor5[address(arg1)].field_128, arg1);
}

function sub_dcb3b30e(?) payable {
    require not stor5[address(msg.sender)].field_128
    require arg1 <= 3
    require arg1 < 3
    require msg.value >= 2 * 10^16
    require arg1 <= 3
    if not arg1:
        require msg.value <= maxBetCoinDice
    else:
        require arg1 <= 3
        if arg1 == 1:
            require msg.value <= maxBetCoinDice
        else:
            require arg1 <= 3
            if arg1 != 2:
                require msg.value <= 0
            else:
                require msg.value <= maxBetDoubleDice
    require arg2 < 18446744073709551616
    require arg1 <= 3
    if not arg1:
        idx = 0
        s = 1
        t = 0
        while idx < 2:
            if not arg2 or not s:
                idx = idx + 1
                s = 2 * s
                t = t
                continue 
            idx = idx + 1
            s = 2 * s
            t = t + 1
            continue 
        require 0 < t
        require t <= 2
        require t
        require uint128(jackpotSize + lockedInBets) + (98 * 2 * msg.value / t / 100) + (50 * 2 * msg.value / 100 / 100) <= eth.balance(this.address)
        lockedInBets = uint128(lockedInBets + (98 * 2 * msg.value / t / 100))
    else:
        require arg1 <= 3
        if arg1 == 1:
            idx = 0
            s = 1
            t = 0
            while idx < 6:
                if not arg2 or not s:
                    idx = idx + 1
                    s = 2 * s
                    t = t
                    continue 
                idx = idx + 1
                s = 2 * s
                t = t + 1
                continue 
            require 0 < t
            require t <= 6
            require t
            require uint128(jackpotSize + lockedInBets) + (98 * 6 * msg.value / t / 100) + (50 * 2 * msg.value / 100 / 100) <= eth.balance(this.address)
            lockedInBets = uint128(lockedInBets + (98 * 6 * msg.value / t / 100))
        else:
            require arg1 <= 3
            require arg1 == 2
            idx = 0
            s = 1
            t = 0
            while idx < 36:
                if not arg2 or not s:
                    idx = idx + 1
                    s = 2 * s
                    t = t
                    continue 
                idx = idx + 1
                s = 2 * s
                t = t + 1
                continue 
            require 0 < t
            require t <= 36
            require t
            require uint128(jackpotSize + lockedInBets) + (98 * 36 * msg.value / t / 100) + (50 * 2 * msg.value / 100 / 100) <= eth.balance(this.address)
            lockedInBets = uint128(lockedInBets + (98 * 36 * msg.value / t / 100))
    jackpotSize = uint128(jackpotSize + (50 * 2 * msg.value / 100 / 100))
    require arg1 <= 3
    stor5[address(msg.sender)].field_0 = arg1
    stor5[address(msg.sender)].field_8 = block.number % 72057594037927936
    stor5[address(msg.sender)].field_64 = uint64(arg2)
    stor5[address(msg.sender)].field_128 = uint128(msg.value)
}

function settleBet(address arg1) {
    require stor5[address(arg1)].field_128
    require block.number > stor5[address(arg1)].field_8 + 2
    require block.number <= stor5[address(arg1)].field_8 + 100
    require stor5[address(arg1)].field_0 <= 3
    if not stor5[address(arg1)].field_0:
        idx = 0
        s = 1
        t = 0
        while idx < 2:
            if not stor5[address(arg1)].field_64 or not s:
                idx = idx + 1
                s = 2 * s
                t = t
                continue 
            idx = idx + 1
            s = 2 * s
            t = t + 1
            continue 
        require 0 < t
        require t <= 2
        require t
        lockedInBets = uint128(lockedInBets - (98 * 2 * stor5[address(arg1)].field_128 / t / 100))
        if not 2^bool(sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2))) or not stor5[address(arg1)].field_64:
            if stor5[address(arg1)].field_128 < 10^17:
                stor5[address(arg1)].field_0 = 0
                stor5[address(arg1)].field_8 = 0
                stor5[address(arg1)].field_64 = 0
                stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                call arg1 with:
                   value 1 wei
                     gas 0 wei
                if not ext_call.success:
                    emit FailedPayment(1, arg1);
                else:
                    emit Payment(0, arg1);
            else:
                if sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2)) / 2 % 1000:
                    stor5[address(arg1)].field_0 = 0
                    stor5[address(arg1)].field_8 = 0
                    stor5[address(arg1)].field_64 = 0
                    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                    call arg1 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, arg1);
                    else:
                        emit Payment(0, arg1);
                else:
                    jackpotSize = 0
                    stor5[address(arg1)].field_0 = 0
                    stor5[address(arg1)].field_8 = 0
                    stor5[address(arg1)].field_64 = 0
                    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                    if jackpotSize > 0:
                        emit JackpotPayment(jackpotSize, arg1);
                    if jackpotSize:
                        call arg1 with:
                           value jackpotSize wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment(jackpotSize, arg1);
                        else:
                            emit Payment(0, arg1);
                    else:
                        call arg1 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, arg1);
                        else:
                            emit Payment(0, arg1);
        else:
            if stor5[address(arg1)].field_128 < 10^17:
                stor5[address(arg1)].field_0 = 0
                stor5[address(arg1)].field_8 = 0
                stor5[address(arg1)].field_64 = 0
                stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                if 98 * 2 * stor5[address(arg1)].field_128 / t / 100:
                    call arg1 with:
                       value 98 * 2 * stor5[address(arg1)].field_128 / t / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        emit FailedPayment((98 * 2 * stor5[address(arg1)].field_128 / t / 100), arg1);
                    else:
                        emit Payment((98 * 2 * stor5[address(arg1)].field_128 / t / 100), arg1);
                else:
                    call arg1 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, arg1);
                    else:
                        emit Payment((98 * 2 * stor5[address(arg1)].field_128 / t / 100), arg1);
            else:
                if sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2)) / 2 % 1000:
                    stor5[address(arg1)].field_0 = 0
                    stor5[address(arg1)].field_8 = 0
                    stor5[address(arg1)].field_64 = 0
                    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                    if 98 * 2 * stor5[address(arg1)].field_128 / t / 100:
                        call arg1 with:
                           value 98 * 2 * stor5[address(arg1)].field_128 / t / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment((98 * 2 * stor5[address(arg1)].field_128 / t / 100), arg1);
                        else:
                            emit Payment((98 * 2 * stor5[address(arg1)].field_128 / t / 100), arg1);
                    else:
                        call arg1 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, arg1);
                        else:
                            emit Payment((98 * 2 * stor5[address(arg1)].field_128 / t / 100), arg1);
                else:
                    jackpotSize = 0
                    stor5[address(arg1)].field_0 = 0
                    stor5[address(arg1)].field_8 = 0
                    stor5[address(arg1)].field_64 = 0
                    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                    if jackpotSize > 0:
                        emit JackpotPayment(jackpotSize, arg1);
                    if (98 * 2 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize:
                        call arg1 with:
                           value (98 * 2 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment(((98 * 2 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize), arg1);
                        else:
                            emit Payment((98 * 2 * stor5[address(arg1)].field_128 / t / 100), arg1);
                    else:
                        call arg1 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, arg1);
                        else:
                            emit Payment((98 * 2 * stor5[address(arg1)].field_128 / t / 100), arg1);
    else:
        require stor5[address(arg1)].field_0 <= 3
        if stor5[address(arg1)].field_0 == 1:
            idx = 0
            s = 1
            t = 0
            while idx < 6:
                if not stor5[address(arg1)].field_64 or not s:
                    idx = idx + 1
                    s = 2 * s
                    t = t
                    continue 
                idx = idx + 1
                s = 2 * s
                t = t + 1
                continue 
            require 0 < t
            require t <= 6
            require t
            lockedInBets = uint128(lockedInBets - (98 * 6 * stor5[address(arg1)].field_128 / t / 100))
            if not 2^(sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2)) % 6) or not stor5[address(arg1)].field_64:
                if stor5[address(arg1)].field_128 < 10^17:
                    stor5[address(arg1)].field_0 = 0
                    stor5[address(arg1)].field_8 = 0
                    stor5[address(arg1)].field_64 = 0
                    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                    call arg1 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, arg1);
                    else:
                        emit Payment(0, arg1);
                else:
                    if sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2)) / 6 % 1000:
                        stor5[address(arg1)].field_0 = 0
                        stor5[address(arg1)].field_8 = 0
                        stor5[address(arg1)].field_64 = 0
                        stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                        call arg1 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, arg1);
                        else:
                            emit Payment(0, arg1);
                    else:
                        jackpotSize = 0
                        stor5[address(arg1)].field_0 = 0
                        stor5[address(arg1)].field_8 = 0
                        stor5[address(arg1)].field_64 = 0
                        stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                        if jackpotSize > 0:
                            emit JackpotPayment(jackpotSize, arg1);
                        if jackpotSize:
                            call arg1 with:
                               value jackpotSize wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(jackpotSize, arg1);
                            else:
                                emit Payment(0, arg1);
                        else:
                            call arg1 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, arg1);
                            else:
                                emit Payment(0, arg1);
            else:
                if stor5[address(arg1)].field_128 < 10^17:
                    stor5[address(arg1)].field_0 = 0
                    stor5[address(arg1)].field_8 = 0
                    stor5[address(arg1)].field_64 = 0
                    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                    if 98 * 6 * stor5[address(arg1)].field_128 / t / 100:
                        call arg1 with:
                           value 98 * 6 * stor5[address(arg1)].field_128 / t / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment((98 * 6 * stor5[address(arg1)].field_128 / t / 100), arg1);
                        else:
                            emit Payment((98 * 6 * stor5[address(arg1)].field_128 / t / 100), arg1);
                    else:
                        call arg1 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, arg1);
                        else:
                            emit Payment((98 * 6 * stor5[address(arg1)].field_128 / t / 100), arg1);
                else:
                    if sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2)) / 6 % 1000:
                        stor5[address(arg1)].field_0 = 0
                        stor5[address(arg1)].field_8 = 0
                        stor5[address(arg1)].field_64 = 0
                        stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                        if 98 * 6 * stor5[address(arg1)].field_128 / t / 100:
                            call arg1 with:
                               value 98 * 6 * stor5[address(arg1)].field_128 / t / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment((98 * 6 * stor5[address(arg1)].field_128 / t / 100), arg1);
                            else:
                                emit Payment((98 * 6 * stor5[address(arg1)].field_128 / t / 100), arg1);
                        else:
                            call arg1 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, arg1);
                            else:
                                emit Payment((98 * 6 * stor5[address(arg1)].field_128 / t / 100), arg1);
                    else:
                        jackpotSize = 0
                        stor5[address(arg1)].field_0 = 0
                        stor5[address(arg1)].field_8 = 0
                        stor5[address(arg1)].field_64 = 0
                        stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                        if jackpotSize > 0:
                            emit JackpotPayment(jackpotSize, arg1);
                        if (98 * 6 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize:
                            call arg1 with:
                               value (98 * 6 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((98 * 6 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize), arg1);
                            else:
                                emit Payment((98 * 6 * stor5[address(arg1)].field_128 / t / 100), arg1);
                        else:
                            call arg1 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, arg1);
                            else:
                                emit Payment((98 * 6 * stor5[address(arg1)].field_128 / t / 100), arg1);
        else:
            require stor5[address(arg1)].field_0 <= 3
            require stor5[address(arg1)].field_0 == 2
            idx = 0
            s = 1
            t = 0
            while idx < 36:
                if not stor5[address(arg1)].field_64 or not s:
                    idx = idx + 1
                    s = 2 * s
                    t = t
                    continue 
                idx = idx + 1
                s = 2 * s
                t = t + 1
                continue 
            require 0 < t
            require t <= 36
            require t
            lockedInBets = uint128(lockedInBets - (98 * 36 * stor5[address(arg1)].field_128 / t / 100))
            if not 2^(sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2)) % 36) or not stor5[address(arg1)].field_64:
                if stor5[address(arg1)].field_128 < 10^17:
                    stor5[address(arg1)].field_0 = 0
                    stor5[address(arg1)].field_8 = 0
                    stor5[address(arg1)].field_64 = 0
                    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                    call arg1 with:
                       value 1 wei
                         gas 0 wei
                    if not ext_call.success:
                        emit FailedPayment(1, arg1);
                    else:
                        emit Payment(0, arg1);
                else:
                    if sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2)) / 36 % 1000:
                        stor5[address(arg1)].field_0 = 0
                        stor5[address(arg1)].field_8 = 0
                        stor5[address(arg1)].field_64 = 0
                        stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                        call arg1 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, arg1);
                        else:
                            emit Payment(0, arg1);
                    else:
                        jackpotSize = 0
                        stor5[address(arg1)].field_0 = 0
                        stor5[address(arg1)].field_8 = 0
                        stor5[address(arg1)].field_64 = 0
                        stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                        if jackpotSize > 0:
                            emit JackpotPayment(jackpotSize, arg1);
                        if jackpotSize:
                            call arg1 with:
                               value jackpotSize wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(jackpotSize, arg1);
                            else:
                                emit Payment(0, arg1);
                        else:
                            call arg1 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, arg1);
                            else:
                                emit Payment(0, arg1);
            else:
                if stor5[address(arg1)].field_128 < 10^17:
                    stor5[address(arg1)].field_0 = 0
                    stor5[address(arg1)].field_8 = 0
                    stor5[address(arg1)].field_64 = 0
                    stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                    if 98 * 36 * stor5[address(arg1)].field_128 / t / 100:
                        call arg1 with:
                           value 98 * 36 * stor5[address(arg1)].field_128 / t / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            emit FailedPayment((98 * 36 * stor5[address(arg1)].field_128 / t / 100), arg1);
                        else:
                            emit Payment((98 * 36 * stor5[address(arg1)].field_128 / t / 100), arg1);
                    else:
                        call arg1 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, arg1);
                        else:
                            emit Payment((98 * 36 * stor5[address(arg1)].field_128 / t / 100), arg1);
                else:
                    if sha3(arg1, block.hash(stor5[address(arg1)].field_8 + 2)) / 36 % 1000:
                        stor5[address(arg1)].field_0 = 0
                        stor5[address(arg1)].field_8 = 0
                        stor5[address(arg1)].field_64 = 0
                        stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                        if 98 * 36 * stor5[address(arg1)].field_128 / t / 100:
                            call arg1 with:
                               value 98 * 36 * stor5[address(arg1)].field_128 / t / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment((98 * 36 * stor5[address(arg1)].field_128 / t / 100), arg1);
                            else:
                                emit Payment((98 * 36 * stor5[address(arg1)].field_128 / t / 100), arg1);
                        else:
                            call arg1 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, arg1);
                            else:
                                emit Payment((98 * 36 * stor5[address(arg1)].field_128 / t / 100), arg1);
                    else:
                        jackpotSize = 0
                        stor5[address(arg1)].field_0 = 0
                        stor5[address(arg1)].field_8 = 0
                        stor5[address(arg1)].field_64 = 0
                        stor5[address(arg1)].field_0 = stor5[address(arg1)].field_0
                        if jackpotSize > 0:
                            emit JackpotPayment(jackpotSize, arg1);
                        if (98 * 36 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize:
                            call arg1 with:
                               value (98 * 36 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((98 * 36 * stor5[address(arg1)].field_128 / t / 100) + jackpotSize), arg1);
                            else:
                                emit Payment((98 * 36 * stor5[address(arg1)].field_128 / t / 100), arg1);
                        else:
                            call arg1 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, arg1);
                            else:
                                emit Payment((98 * 36 * stor5[address(arg1)].field_128 / t / 100), arg1);
}



}
