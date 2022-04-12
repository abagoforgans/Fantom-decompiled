contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1)
#
const sellPrice = (25 * 10^13 * 3600)

const buyPrice = 11 * 10^17


mapping of uint256 balanceOf;
mapping of uint256 stor1;
mapping of struct statsOf;
uint64 stor3; offset 192
uint256 stor3;
uint256 totalSupply;
uint256 stor4;
uint256 totalDeposits;
uint256 stor6;
uint256 players;
uint256 totalTxs;
uint256 dividendBalance_;
uint256 lastPayout;
uint256 totalClaims;
uint256 balanceInterval;
uint256 distributionInterval;
address tokenAddress;
uint8 status; offset 160
uint128 stor15; offset 160
address owner;
address stor16;

function statsOf(address arg1) {
    return statsOf[address(arg1)].field_0, 
           statsOf[address(arg1)].field_512,
           statsOf[address(arg1)].field_768,
           statsOf[address(arg1)].field_1024,
           statsOf[address(arg1)].field_1280,
           statsOf[address(arg1)].field_1536,
           statsOf[address(arg1)].field_1792,
           statsOf[address(arg1)].field_2304,
           statsOf[address(arg1)].field_2560,
           statsOf[address(arg1)].field_2816,
           statsOf[address(arg1)].field_3072,
           statsOf[address(arg1)].field_3328,
           statsOf[address(arg1)].field_256,
           statsOf[address(arg1)].field_2048
}

function totalSupply() {
    return totalSupply
}

function activated() {
    return bool(status)
}

function totalClaims() {
    return totalClaims
}

function getStatus() {
    return bool(status)
}

function totalTxs() {
    return totalTxs
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionInterval() {
    return distributionInterval
}

function totalDeposits() {
    return totalDeposits
}

function owner() {
    return owner
}

function myTokens() {
    return balanceOf[address(msg.sender)]
}

function tokenAddress() {
    return tokenAddress
}

function lastPayout() {
    return lastPayout
}

function dividendBalance_() {
    return dividendBalance_
}

function players() {
    return players
}

function balanceInterval() {
    return balanceInterval
}

function _fallback() payable {
    revert
}

function tokenBalance(address arg1) {
    return eth.balance(arg1)
}

function setStatus(bool arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor15 = Mask(96, 0, arg1)
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (stor4 * balanceOf[address(arg1)]) - stor1[address(arg1)]) >> 64)
}

function myDividends() {
    return (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64)
}

function calculateTokensReceived(uint256 arg1) {
    if not arg1:
        if 0 <= arg1:
            return arg1
    else:
        if arg1:
            if 10 * arg1 / arg1 == 10:
                if 10 * arg1 / 100 <= arg1:
                    return (arg1 - (10 * arg1 / 100))
    revert
}

function calculateethReceived(uint256 arg1) {
    require arg1 <= totalSupply
    if not arg1:
        if 0 <= arg1:
            return arg1
    else:
        if arg1:
            if 10 * arg1 / arg1 == 10:
                if 10 * arg1 / 100 <= arg1:
                    return (arg1 - (10 * arg1 / 100))
    revert
}

function totalTokenBalance() {
    require ext_code.size(stor16)
    call stor16.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function donatePool(uint256 arg1) {
    require ext_code.size(stor16)
    call stor16.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    dividendBalance_ += arg1
    emit onDonation(arg1, block.timestamp, msg.sender);
    return 0
}

function dailyEstimate(address arg1) {
    if not dividendBalance_:
        if totalSupply <= 0:
            return 0
        if totalSupply:
            return (0 / totalSupply)
    else:
        if dividendBalance_:
            if 2 * dividendBalance_ / dividendBalance_ == 2:
                if totalSupply <= 0:
                    return 0
                if not 2 * dividendBalance_ / 100:
                    if totalSupply:
                        return (0 / totalSupply)
                else:
                    if 2 * dividendBalance_ / 100:
                        if 2 * dividendBalance_ / 100 * balanceOf[address(arg1)] / 2 * dividendBalance_ / 100 == balanceOf[address(arg1)]:
                            if totalSupply:
                                return (2 * dividendBalance_ / 100 * balanceOf[address(arg1)] / totalSupply)
    revert
}

function withdraw() {
    require Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 > 0
    stor1[address(msg.sender)] += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)])
    require ext_code.size(stor16)
    call stor16.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require statsOf[address(msg.sender)].field_512 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) >= statsOf[address(msg.sender)].field_512
    statsOf[address(msg.sender)].field_512 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
    statsOf[address(msg.sender)].field_2816++
    totalTxs++
    totalClaims += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
    emit onWithdraw(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]), block.timestamp, msg.sender);
    emit onLeaderBoard(statsOf[address(msg.sender)].field_0, balanceOf[address(msg.sender)], statsOf[address(msg.sender)].field_512, block.timestamp, msg.sender);
    if stor6 <= block.timestamp:
        if block.timestamp - stor6 > balanceInterval:
            require ext_code.size(stor16)
            call stor16.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit onBalance(ext_call.return_data[0], block.timestamp);
            stor6 = block.timestamp
    else:
        if 0 > balanceInterval:
            require ext_code.size(stor16)
            call stor16.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit onBalance(ext_call.return_data[0], block.timestamp);
            stor6 = block.timestamp
    if lastPayout <= block.timestamp:
        if block.timestamp - lastPayout > distributionInterval:
            if totalSupply > 0:
                if not dividendBalance_:
                    if 0 > dividendBalance_:
                        dividendBalance_ = 0
                    require totalSupply
                    require stor4 + (0 / totalSupply) >= stor4
                    stor4 += 0 / totalSupply
                else:
                    require dividendBalance_
                    require 2 * dividendBalance_ / dividendBalance_ == 2
                    if lastPayout <= block.timestamp:
                        if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                            dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                        else:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                        stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                    else:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                lastPayout = block.timestamp
    else:
        if 0 > distributionInterval:
            if totalSupply > 0:
                if not dividendBalance_:
                    if 0 > dividendBalance_:
                        dividendBalance_ = 0
                    require totalSupply
                    require stor4 + (0 / totalSupply) >= stor4
                    stor4 += 0 / totalSupply
                else:
                    require dividendBalance_
                    require 2 * dividendBalance_ / dividendBalance_ == 2
                    if lastPayout <= block.timestamp:
                        if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                            dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                        else:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                        stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                    else:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                lastPayout = block.timestamp
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    if not arg1:
        require 0 <= arg1
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        stor1[address(msg.sender)] = stor1[address(msg.sender)] - (stor4 * arg1) - (arg1 << 64)
        if totalSupply > 0:
            require totalSupply
            require stor4 + (0 / totalSupply) >= stor4
            stor4 += 0 / totalSupply
        emit onTokenSell(arg1, arg1, block.timestamp, msg.sender);
    else:
        require arg1
        require 10 * arg1 / arg1 == 10
        require 10 * arg1 / 100 <= arg1
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        stor1[address(msg.sender)] = stor1[address(msg.sender)] - (stor4 * arg1) - (arg1 - (10 * arg1 / 100) << 64)
        if totalSupply > 0:
            require totalSupply
            require stor4 + (10 * arg1 / 100 / 5 << 64 / totalSupply) >= stor4
            stor4 += 10 * arg1 / 100 / 5 << 64 / totalSupply
        if 10 * arg1 / 100 / 5 <= 10 * arg1 / 100:
            dividendBalance_ = dividendBalance_ + (10 * arg1 / 100) - (10 * arg1 / 100 / 5)
        emit onTokenSell(arg1, arg1 - (10 * arg1 / 100), block.timestamp, msg.sender);
    if stor6 <= block.timestamp:
        if block.timestamp - stor6 > balanceInterval:
            require ext_code.size(stor16)
            call stor16.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit onBalance(ext_call.return_data[0], block.timestamp);
            stor6 = block.timestamp
    else:
        if 0 > balanceInterval:
            require ext_code.size(stor16)
            call stor16.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit onBalance(ext_call.return_data[0], block.timestamp);
            stor6 = block.timestamp
    if lastPayout <= block.timestamp:
        if block.timestamp - lastPayout > distributionInterval:
            if totalSupply > 0:
                if not dividendBalance_:
                    if 0 > dividendBalance_:
                        dividendBalance_ = 0
                    require totalSupply
                    require stor4 + (0 / totalSupply) >= stor4
                    stor4 += 0 / totalSupply
                else:
                    require dividendBalance_
                    require 2 * dividendBalance_ / dividendBalance_ == 2
                    if lastPayout <= block.timestamp:
                        if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                            dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                        else:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                        stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                    else:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                lastPayout = block.timestamp
    else:
        if 0 > distributionInterval:
            if totalSupply > 0:
                if not dividendBalance_:
                    if 0 > dividendBalance_:
                        dividendBalance_ = 0
                    require totalSupply
                    require stor4 + (0 / totalSupply) >= stor4
                    stor4 += 0 / totalSupply
                else:
                    require dividendBalance_
                    require 2 * dividendBalance_ / dividendBalance_ == 2
                    if lastPayout <= block.timestamp:
                        if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                            dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                        else:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                        stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                    else:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                lastPayout = block.timestamp
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require arg2 <= balanceOf[address(msg.sender)]
    if Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 > 0:
        require Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 > 0
        stor1[address(msg.sender)] += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)])
        require ext_code.size(stor16)
        call stor16.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require statsOf[address(msg.sender)].field_512 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) >= statsOf[address(msg.sender)].field_512
        statsOf[address(msg.sender)].field_512 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        statsOf[address(msg.sender)].field_2816++
        totalTxs++
        totalClaims += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        emit onWithdraw(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]), block.timestamp, msg.sender);
        emit onLeaderBoard(statsOf[address(msg.sender)].field_0, balanceOf[address(msg.sender)], statsOf[address(msg.sender)].field_512, block.timestamp, msg.sender);
        if stor6 <= block.timestamp:
            if block.timestamp - stor6 > balanceInterval:
                require ext_code.size(stor16)
                call stor16.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit onBalance(ext_call.return_data[0], block.timestamp);
                stor6 = block.timestamp
        else:
            if 0 > balanceInterval:
                require ext_code.size(stor16)
                call stor16.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit onBalance(ext_call.return_data[0], block.timestamp);
                stor6 = block.timestamp
        if lastPayout <= block.timestamp:
            if block.timestamp - lastPayout > distributionInterval:
                if totalSupply > 0:
                    if not dividendBalance_:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                    else:
                        require dividendBalance_
                        require 2 * dividendBalance_ / dividendBalance_ == 2
                        if lastPayout <= block.timestamp:
                            if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                                dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                            else:
                                dividendBalance_ = 0
                            require totalSupply
                            require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                            stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                        else:
                            if 0 > dividendBalance_:
                                dividendBalance_ = 0
                            require totalSupply
                            require stor4 + (0 / totalSupply) >= stor4
                            stor4 += 0 / totalSupply
                    lastPayout = block.timestamp
        else:
            if 0 > distributionInterval:
                if totalSupply > 0:
                    if not dividendBalance_:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                    else:
                        require dividendBalance_
                        require 2 * dividendBalance_ / dividendBalance_ == 2
                        if lastPayout <= block.timestamp:
                            if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                                dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                            else:
                                dividendBalance_ = 0
                            require totalSupply
                            require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                            stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                        else:
                            if 0 > dividendBalance_:
                                dividendBalance_ = 0
                            require totalSupply
                            require stor4 + (0 / totalSupply) >= stor4
                            stor4 += 0 / totalSupply
                    lastPayout = block.timestamp
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    stor1[address(msg.sender)] += -1 * stor4 * arg2
    stor1[address(arg1)] += stor4 * arg2
    if not statsOf[address(arg1)].field_0:
        if not statsOf[address(arg1)].field_1536:
            players++
    statsOf[address(msg.sender)].field_3072++
    statsOf[address(msg.sender)].field_1280 += arg2
    statsOf[address(arg1)].field_1536 += arg2
    statsOf[address(arg1)].field_3328++
    totalTxs++
    emit onTransfer(arg2, block.timestamp, msg.sender, arg1);
    emit onLeaderBoard(statsOf[address(msg.sender)].field_0, balanceOf[address(msg.sender)], statsOf[address(msg.sender)].field_512, block.timestamp, msg.sender);
    emit onLeaderBoard(statsOf[address(arg1)].field_0, balanceOf[address(arg1)], statsOf[address(arg1)].field_512, block.timestamp, arg1);
    return 1
}

function reinvest() {
    require Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 > 0
    stor1[address(msg.sender)] += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)])
    if not statsOf[address(msg.sender)].field_0:
        if not statsOf[address(msg.sender)].field_1536:
            players++
    totalTxs++
    if not Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]):
        require 0 <= Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        emit onTokenPurchase(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]), Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]), block.timestamp, msg.sender);
        require Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 > 0
        require (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) + totalSupply >= Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        require (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) + totalSupply > totalSupply
        if totalSupply > 0:
            totalSupply += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        else:
            Mask(192, 0, stor3.field_0) = Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
            uint64(stor3.field_192) = 0
        if totalSupply > 0:
            require totalSupply
            require stor4 + (0 / totalSupply) >= stor4
            stor4 += 0 / totalSupply
        require balanceOf[address(msg.sender)] + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        stor1[address(msg.sender)] += stor4 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        statsOf[address(msg.sender)].field_0 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        statsOf[address(msg.sender)].field_1792++
        emit onReinvestment(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]), Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]), block.timestamp, msg.sender);
    else:
        require Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        require 10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 == 10
        require 10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100 <= Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        emit onTokenPurchase(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]), (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100), block.timestamp, msg.sender);
        require (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100) > 0
        require totalSupply >= 0
        require (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100) + totalSupply > totalSupply
        if totalSupply <= 0:
            totalSupply = (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100)
        else:
            totalSupply = totalSupply + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100)
        if totalSupply > 0:
            require totalSupply
            require stor4 + (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100 / 5 << 64 / totalSupply) >= stor4
            stor4 += 10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100 / 5 << 64 / totalSupply
        if 10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100 / 5 <= 10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100:
            dividendBalance_ = dividendBalance_ + (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100 / 5)
        require balanceOf[address(msg.sender)] + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100)
        stor1[address(msg.sender)] = stor1[address(msg.sender)] + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 * stor4) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100 * stor4)
        statsOf[address(msg.sender)].field_0 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
        statsOf[address(msg.sender)].field_1792++
        emit onReinvestment(Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]), (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) - (10 * Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64 / 100), block.timestamp, msg.sender);
    require statsOf[address(msg.sender)].field_256 + (Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64) >= statsOf[address(msg.sender)].field_256
    statsOf[address(msg.sender)].field_256 += Mask(192, 64, (stor4 * balanceOf[address(msg.sender)]) - stor1[address(msg.sender)]) >> 64
    statsOf[address(msg.sender)].field_2048++
    emit onLeaderBoard(statsOf[address(msg.sender)].field_0, balanceOf[address(msg.sender)], statsOf[address(msg.sender)].field_512, block.timestamp, msg.sender);
    if stor6 <= block.timestamp:
        if block.timestamp - stor6 > balanceInterval:
            require ext_code.size(stor16)
            call stor16.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit onBalance(ext_call.return_data[0], block.timestamp);
            stor6 = block.timestamp
    else:
        if 0 > balanceInterval:
            require ext_code.size(stor16)
            call stor16.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit onBalance(ext_call.return_data[0], block.timestamp);
            stor6 = block.timestamp
    if lastPayout <= block.timestamp:
        if block.timestamp - lastPayout > distributionInterval:
            if totalSupply > 0:
                if not dividendBalance_:
                    if 0 > dividendBalance_:
                        dividendBalance_ = 0
                    require totalSupply
                    require stor4 + (0 / totalSupply) >= stor4
                    stor4 += 0 / totalSupply
                else:
                    require dividendBalance_
                    require 2 * dividendBalance_ / dividendBalance_ == 2
                    if lastPayout <= block.timestamp:
                        if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                            dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                        else:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                        stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                    else:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                lastPayout = block.timestamp
    else:
        if 0 > distributionInterval:
            if totalSupply > 0:
                if not dividendBalance_:
                    if 0 > dividendBalance_:
                        dividendBalance_ = 0
                    require totalSupply
                    require stor4 + (0 / totalSupply) >= stor4
                    stor4 += 0 / totalSupply
                else:
                    require dividendBalance_
                    require 2 * dividendBalance_ / dividendBalance_ == 2
                    if lastPayout <= block.timestamp:
                        if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                            dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                        else:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                        stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                    else:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                lastPayout = block.timestamp
}

function buyFor(address arg1, uint256 arg2) {
    if not status:
        revert with 0, 'Staking is not active yet'
    require ext_code.size(stor16)
    call stor16.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    totalDeposits += arg2
    if not statsOf[address(arg1)].field_0:
        if not statsOf[address(arg1)].field_1536:
            players++
    totalTxs++
    if not arg2:
        require 0 <= arg2
        emit onTokenPurchase(arg2, arg2, block.timestamp, arg1);
        require arg2 > 0
        require arg2 + totalSupply >= arg2
        require arg2 + totalSupply > totalSupply
        if totalSupply <= 0:
            totalSupply = arg2
        else:
            totalSupply += arg2
        if totalSupply > 0:
            require totalSupply
            require stor4 + (0 / totalSupply) >= stor4
            stor4 += 0 / totalSupply
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        stor1[address(arg1)] += stor4 * arg2
        statsOf[address(arg1)].field_0 += arg2
        statsOf[address(arg1)].field_1792++
        emit onLeaderBoard(statsOf[address(arg1)].field_0, balanceOf[address(arg1)], statsOf[address(arg1)].field_512, block.timestamp, arg1);
        if stor6 <= block.timestamp:
            if block.timestamp - stor6 > balanceInterval:
                require ext_code.size(stor16)
                call stor16.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit onBalance(ext_call.return_data[0], block.timestamp);
                stor6 = block.timestamp
        else:
            if 0 > balanceInterval:
                require ext_code.size(stor16)
                call stor16.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit onBalance(ext_call.return_data[0], block.timestamp);
                stor6 = block.timestamp
        if lastPayout <= block.timestamp:
            if block.timestamp - lastPayout > distributionInterval:
                if totalSupply > 0:
                    if not dividendBalance_:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                    else:
                        require dividendBalance_
                        require 2 * dividendBalance_ / dividendBalance_ == 2
                        if lastPayout <= block.timestamp:
                            if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                                dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                            else:
                                dividendBalance_ = 0
                            require totalSupply
                            require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                            stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                        else:
                            if 0 > dividendBalance_:
                                dividendBalance_ = 0
                            require totalSupply
                            require stor4 + (0 / totalSupply) >= stor4
                            stor4 += 0 / totalSupply
                    lastPayout = block.timestamp
        else:
            if 0 > distributionInterval:
                if totalSupply > 0:
                    if not dividendBalance_:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                    else:
                        require dividendBalance_
                        require 2 * dividendBalance_ / dividendBalance_ == 2
                        if lastPayout <= block.timestamp:
                            if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                                dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                            else:
                                dividendBalance_ = 0
                            require totalSupply
                            require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                            stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                        else:
                            if 0 > dividendBalance_:
                                dividendBalance_ = 0
                            require totalSupply
                            require stor4 + (0 / totalSupply) >= stor4
                            stor4 += 0 / totalSupply
                    lastPayout = block.timestamp
        return arg2
    require arg2
    require 10 * arg2 / arg2 == 10
    require 10 * arg2 / 100 <= arg2
    emit onTokenPurchase(arg2, arg2 - (10 * arg2 / 100), block.timestamp, arg1);
    require arg2 - (10 * arg2 / 100) > 0
    require totalSupply >= 0
    require arg2 - (10 * arg2 / 100) + totalSupply > totalSupply
    if totalSupply <= 0:
        totalSupply = arg2 - (10 * arg2 / 100)
    else:
        totalSupply = totalSupply + arg2 - (10 * arg2 / 100)
    if totalSupply > 0:
        require totalSupply
        require stor4 + (10 * arg2 / 100 / 5 << 64 / totalSupply) >= stor4
        stor4 += 10 * arg2 / 100 / 5 << 64 / totalSupply
    if 10 * arg2 / 100 / 5 <= 10 * arg2 / 100:
        dividendBalance_ = dividendBalance_ + (10 * arg2 / 100) - (10 * arg2 / 100 / 5)
    require balanceOf[address(arg1)] + arg2 - (10 * arg2 / 100) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (10 * arg2 / 100)
    stor1[address(arg1)] = stor1[address(arg1)] + (arg2 * stor4) - (10 * arg2 / 100 * stor4)
    statsOf[address(arg1)].field_0 += arg2
    statsOf[address(arg1)].field_1792++
    emit onLeaderBoard(statsOf[address(arg1)].field_0, balanceOf[address(arg1)], statsOf[address(arg1)].field_512, block.timestamp, arg1);
    if stor6 <= block.timestamp:
        if block.timestamp - stor6 > balanceInterval:
            require ext_code.size(stor16)
            call stor16.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit onBalance(ext_call.return_data[0], block.timestamp);
            stor6 = block.timestamp
    else:
        if 0 > balanceInterval:
            require ext_code.size(stor16)
            call stor16.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit onBalance(ext_call.return_data[0], block.timestamp);
            stor6 = block.timestamp
    if lastPayout <= block.timestamp:
        if block.timestamp - lastPayout > distributionInterval:
            if totalSupply > 0:
                if not dividendBalance_:
                    if 0 > dividendBalance_:
                        dividendBalance_ = 0
                    require totalSupply
                    require stor4 + (0 / totalSupply) >= stor4
                    stor4 += 0 / totalSupply
                else:
                    require dividendBalance_
                    require 2 * dividendBalance_ / dividendBalance_ == 2
                    if lastPayout <= block.timestamp:
                        if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                            dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                        else:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                        stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                    else:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                lastPayout = block.timestamp
    else:
        if 0 > distributionInterval:
            if totalSupply > 0:
                if not dividendBalance_:
                    if 0 > dividendBalance_:
                        dividendBalance_ = 0
                    require totalSupply
                    require stor4 + (0 / totalSupply) >= stor4
                    stor4 += 0 / totalSupply
                else:
                    require dividendBalance_
                    require 2 * dividendBalance_ / dividendBalance_ == 2
                    if lastPayout <= block.timestamp:
                        if (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) <= dividendBalance_:
                            dividendBalance_ = dividendBalance_ - (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) + (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600)
                        else:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + ((block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply) >= stor4
                        stor4 += (block.timestamp * 2 * dividendBalance_ / 100 / 24 * 3600) - (lastPayout * 2 * dividendBalance_ / 100 / 24 * 3600) << 64 / totalSupply
                    else:
                        if 0 > dividendBalance_:
                            dividendBalance_ = 0
                        require totalSupply
                        require stor4 + (0 / totalSupply) >= stor4
                        stor4 += 0 / totalSupply
                lastPayout = block.timestamp
    return (arg2 - (10 * arg2 / 100))
}



}
