contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 EGGS_TO_HATCH_1SHRIMP;
uint256 stor1;
uint256 stor2;
uint8 initialized;
address ceoAddress; offset 8
address ceoAddress2;
mapping of uint256 hatcheryShrimp;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of address referrals;
uint256 marketEggs;

function ceoAddress() {
    return ceoAddress
}

function initialized() {
    return bool(initialized)
}

function marketEggs() {
    return marketEggs
}

function lastHatch(address arg1) {
    return lastHatch[arg1]
}

function claimedEggs(address arg1) {
    return claimedEggs[arg1]
}

function EGGS_TO_HATCH_1SHRIMP() {
    return EGGS_TO_HATCH_1SHRIMP
}

function hatcheryShrimp(address arg1) {
    return hatcheryShrimp[arg1]
}

function referrals(address arg1) {
    return referrals[arg1]
}

function ceoAddress2() {
    return ceoAddress2
}

function getMyShrimp() {
    return hatcheryShrimp[address(msg.sender)]
}

function _fallback() payable {
    revert
}

function seedMarket() payable {
    require not marketEggs
    initialized = 1
    marketEggs = 2400000 * 24 * 3600
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 10 * arg1 / arg1 == 10
    return (10 * arg1 / 100)
}

function getEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(arg1)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            return 0
        if EGGS_TO_HATCH_1SHRIMP:
            if EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(arg1)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(arg1)]:
                return (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(arg1)])
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if block.timestamp - lastHatch[address(arg1)]:
            if (block.timestamp * hatcheryShrimp[address(arg1)]) - (lastHatch[address(arg1)] * hatcheryShrimp[address(arg1)]) / block.timestamp - lastHatch[address(arg1)] == hatcheryShrimp[address(arg1)]:
                return ((block.timestamp * hatcheryShrimp[address(arg1)]) - (lastHatch[address(arg1)] * hatcheryShrimp[address(arg1)]))
    revert
}

function getMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if EGGS_TO_HATCH_1SHRIMP:
                if EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if block.timestamp - lastHatch[address(msg.sender)]:
                if (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor1:
        if not stor2:
            if arg1:
                if stor2 + (0 / arg1) >= stor2:
                    if stor2 + (0 / arg1):
                        return (0 / stor2 + (0 / arg1))
        else:
            if stor2:
                if stor2 * arg1 / stor2 == arg1:
                    if stor2 * arg1 >= 0:
                        if arg1:
                            if stor2 + (stor2 * arg1 / arg1) >= stor2:
                                if stor2 + (stor2 * arg1 / arg1):
                                    return (0 / stor2 + (stor2 * arg1 / arg1))
    else:
        if stor1:
            if stor1 * arg3 / stor1 == arg3:
                if not stor1:
                    if not stor2:
                        if arg1:
                            if stor2 + (0 / arg1) >= stor2:
                                if stor2 + (0 / arg1):
                                    return (stor1 * arg3 / stor2 + (0 / arg1))
                    else:
                        if stor2:
                            if stor2 * arg1 / stor2 == arg1:
                                if stor2 * arg1 >= 0:
                                    if arg1:
                                        if stor2 + (stor2 * arg1 / arg1) >= stor2:
                                            if stor2 + (stor2 * arg1 / arg1):
                                                return (stor1 * arg3 / stor2 + (stor2 * arg1 / arg1))
                else:
                    if stor1:
                        if stor1 * arg2 / stor1 == arg2:
                            if not stor2:
                                if stor1 * arg2 >= stor1 * arg2:
                                    if arg1:
                                        if stor2 + (stor1 * arg2 / arg1) >= stor2:
                                            if stor2 + (stor1 * arg2 / arg1):
                                                return (stor1 * arg3 / stor2 + (stor1 * arg2 / arg1))
                            else:
                                if stor2:
                                    if stor2 * arg1 / stor2 == arg1:
                                        if (stor1 * arg2) + (stor2 * arg1) >= stor1 * arg2:
                                            if arg1:
                                                if stor2 + ((stor1 * arg2) + (stor2 * arg1) / arg1) >= stor2:
                                                    if stor2 + ((stor1 * arg2) + (stor2 * arg1) / arg1):
                                                        return (stor1 * arg3 / stor2 + ((stor1 * arg2) + (stor2 * arg1) / arg1))
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    if not stor1:
        if not stor2:
            if arg1:
                if stor2 + (0 / arg1) >= stor2:
                    if stor2 + (0 / arg1):
                        return (0 / stor2 + (0 / arg1))
        else:
            if stor2:
                if stor2 * arg1 / stor2 == arg1:
                    if stor2 * arg1 >= 0:
                        if arg1:
                            if stor2 + (stor2 * arg1 / arg1) >= stor2:
                                if stor2 + (stor2 * arg1 / arg1):
                                    return (0 / stor2 + (stor2 * arg1 / arg1))
    else:
        if stor1:
            if stor1 * marketEggs / stor1 == marketEggs:
                if not stor1:
                    if not stor2:
                        if arg1:
                            if stor2 + (0 / arg1) >= stor2:
                                if stor2 + (0 / arg1):
                                    return (stor1 * marketEggs / stor2 + (0 / arg1))
                    else:
                        if stor2:
                            if stor2 * arg1 / stor2 == arg1:
                                if stor2 * arg1 >= 0:
                                    if arg1:
                                        if stor2 + (stor2 * arg1 / arg1) >= stor2:
                                            if stor2 + (stor2 * arg1 / arg1):
                                                return (stor1 * marketEggs / stor2 + (stor2 * arg1 / arg1))
                else:
                    if stor1:
                        if stor1 * arg2 / stor1 == arg2:
                            if not stor2:
                                if stor1 * arg2 >= stor1 * arg2:
                                    if arg1:
                                        if stor2 + (stor1 * arg2 / arg1) >= stor2:
                                            if stor2 + (stor1 * arg2 / arg1):
                                                return (stor1 * marketEggs / stor2 + (stor1 * arg2 / arg1))
                            else:
                                if stor2:
                                    if stor2 * arg1 / stor2 == arg1:
                                        if (stor1 * arg2) + (stor2 * arg1) >= stor1 * arg2:
                                            if arg1:
                                                if stor2 + ((stor1 * arg2) + (stor2 * arg1) / arg1) >= stor2:
                                                    if stor2 + ((stor1 * arg2) + (stor2 * arg1) / arg1):
                                                        return (stor1 * marketEggs / stor2 + ((stor1 * arg2) + (stor2 * arg1) / arg1))
    revert
}

function calculateEggSell(uint256 arg1) {
    if not stor1:
        if not stor2:
            if arg1:
                if stor2 + (0 / arg1) >= stor2:
                    if stor2 + (0 / arg1):
                        return (0 / stor2 + (0 / arg1))
        else:
            if stor2:
                if stor2 * arg1 / stor2 == arg1:
                    if stor2 * arg1 >= 0:
                        if arg1:
                            if stor2 + (stor2 * arg1 / arg1) >= stor2:
                                if stor2 + (stor2 * arg1 / arg1):
                                    return (0 / stor2 + (stor2 * arg1 / arg1))
    else:
        if stor1:
            if stor1 * eth.balance(this.address) / stor1 == eth.balance(this.address):
                if not stor1:
                    if not stor2:
                        if arg1:
                            if stor2 + (0 / arg1) >= stor2:
                                if stor2 + (0 / arg1):
                                    return (stor1 * eth.balance(this.address) / stor2 + (0 / arg1))
                    else:
                        if stor2:
                            if stor2 * arg1 / stor2 == arg1:
                                if stor2 * arg1 >= 0:
                                    if arg1:
                                        if stor2 + (stor2 * arg1 / arg1) >= stor2:
                                            if stor2 + (stor2 * arg1 / arg1):
                                                return (stor1 * eth.balance(this.address) / stor2 + (stor2 * arg1 / arg1))
                else:
                    if stor1:
                        if stor1 * marketEggs / stor1 == marketEggs:
                            if not stor2:
                                if stor1 * marketEggs >= stor1 * marketEggs:
                                    if arg1:
                                        if stor2 + (stor1 * marketEggs / arg1) >= stor2:
                                            if stor2 + (stor1 * marketEggs / arg1):
                                                return (stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / arg1))
                            else:
                                if stor2:
                                    if stor2 * arg1 / stor2 == arg1:
                                        if (stor1 * marketEggs) + (stor2 * arg1) >= stor1 * marketEggs:
                                            if arg1:
                                                if stor2 + ((stor1 * marketEggs) + (stor2 * arg1) / arg1) >= stor2:
                                                    if stor2 + ((stor1 * marketEggs) + (stor2 * arg1) / arg1):
                                                        return (stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * arg1) / arg1))
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    if not stor1:
        if not stor2:
            if arg1:
                if stor2 + (0 / arg1) >= stor2:
                    if stor2 + (0 / arg1):
                        return (0 / stor2 + (0 / arg1))
        else:
            if stor2:
                if stor2 * arg1 / stor2 == arg1:
                    if stor2 * arg1 >= 0:
                        if arg1:
                            if stor2 + (stor2 * arg1 / arg1) >= stor2:
                                if stor2 + (stor2 * arg1 / arg1):
                                    return (0 / stor2 + (stor2 * arg1 / arg1))
    else:
        if stor1:
            if stor1 * marketEggs / stor1 == marketEggs:
                if not stor1:
                    if not stor2:
                        if arg1:
                            if stor2 + (0 / arg1) >= stor2:
                                if stor2 + (0 / arg1):
                                    return (stor1 * marketEggs / stor2 + (0 / arg1))
                    else:
                        if stor2:
                            if stor2 * arg1 / stor2 == arg1:
                                if stor2 * arg1 >= 0:
                                    if arg1:
                                        if stor2 + (stor2 * arg1 / arg1) >= stor2:
                                            if stor2 + (stor2 * arg1 / arg1):
                                                return (stor1 * marketEggs / stor2 + (stor2 * arg1 / arg1))
                else:
                    if stor1:
                        if stor1 * eth.balance(this.address) / stor1 == eth.balance(this.address):
                            if not stor2:
                                if stor1 * eth.balance(this.address) >= stor1 * eth.balance(this.address):
                                    if arg1:
                                        if stor2 + (stor1 * eth.balance(this.address) / arg1) >= stor2:
                                            if stor2 + (stor1 * eth.balance(this.address) / arg1):
                                                return (stor1 * marketEggs / stor2 + (stor1 * eth.balance(this.address) / arg1))
                            else:
                                if stor2:
                                    if stor2 * arg1 / stor2 == arg1:
                                        if (stor1 * eth.balance(this.address)) + (stor2 * arg1) >= stor1 * eth.balance(this.address):
                                            if arg1:
                                                if stor2 + ((stor1 * eth.balance(this.address)) + (stor2 * arg1) / arg1) >= stor2:
                                                    if stor2 + ((stor1 * eth.balance(this.address)) + (stor2 * arg1) / arg1):
                                                        return (stor1 * marketEggs / stor2 + ((stor1 * eth.balance(this.address)) + (stor2 * arg1) / arg1))
    revert
}

function hatchEggs(address arg1) {
    require initialized
    if arg1 != msg.sender:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = arg1
    else:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 10) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 10
            require marketEggs + (claimedEggs[address(msg.sender)] / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require EGGS_TO_HATCH_1SHRIMP
            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 10) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 10
            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 10
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 10) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 10
            require marketEggs + (claimedEggs[address(msg.sender)] / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 10) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 10
            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 10
}

function buyEggs(address arg1) payable {
    require initialized
    require msg.value <= eth.balance(this.address)
    if not stor1:
        if not stor2:
            require msg.value
            require stor2 + (0 / msg.value) >= stor2
            require stor2 + (0 / msg.value)
            if not 0 / stor2 + (0 / msg.value):
                require 0 <= 0 / stor2 + (0 / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 10 * msg.value / msg.value == 10
                    call ceoAddress with:
                       value 10 * msg.value / 100 / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                       value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                         gas 2300 * is_zero(value) wei
                require claimedEggs[address(msg.sender)] + (0 / stor2 + (0 / msg.value)) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] += 0 / stor2 + (0 / msg.value)
            else:
                require 0 / stor2 + (0 / msg.value)
                require 10 * 0 / stor2 + (0 / msg.value) / 0 / stor2 + (0 / msg.value) == 10
                require 10 * 0 / stor2 + (0 / msg.value) / 100 <= 0 / stor2 + (0 / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 10 * msg.value / msg.value == 10
                    call ceoAddress with:
                       value 10 * msg.value / 100 / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                       value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                         gas 2300 * is_zero(value) wei
                require claimedEggs[address(msg.sender)] + (0 / stor2 + (0 / msg.value)) - (10 * 0 / stor2 + (0 / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor2 + (0 / msg.value)) - (10 * 0 / stor2 + (0 / msg.value) / 100)
        else:
            require stor2
            require stor2 * msg.value / stor2 == msg.value
            require stor2 * msg.value >= 0
            require msg.value
            require stor2 + (stor2 * msg.value / msg.value) >= stor2
            require stor2 + (stor2 * msg.value / msg.value)
            if not 0 / stor2 + (stor2 * msg.value / msg.value):
                require 0 <= 0 / stor2 + (stor2 * msg.value / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 10 * msg.value / msg.value == 10
                    call ceoAddress with:
                       value 10 * msg.value / 100 / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                       value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                         gas 2300 * is_zero(value) wei
                require claimedEggs[address(msg.sender)] + (0 / stor2 + (stor2 * msg.value / msg.value)) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] += 0 / stor2 + (stor2 * msg.value / msg.value)
            else:
                require 0 / stor2 + (stor2 * msg.value / msg.value)
                require 10 * 0 / stor2 + (stor2 * msg.value / msg.value) / 0 / stor2 + (stor2 * msg.value / msg.value) == 10
                require 10 * 0 / stor2 + (stor2 * msg.value / msg.value) / 100 <= 0 / stor2 + (stor2 * msg.value / msg.value)
                if not msg.value:
                    call ceoAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                         gas 2300 wei
                else:
                    require msg.value
                    require 10 * msg.value / msg.value == 10
                    call ceoAddress with:
                       value 10 * msg.value / 100 / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call ceoAddress2 with:
                       value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                         gas 2300 * is_zero(value) wei
                require claimedEggs[address(msg.sender)] + (0 / stor2 + (stor2 * msg.value / msg.value)) - (10 * 0 / stor2 + (stor2 * msg.value / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor2 + (stor2 * msg.value / msg.value)) - (10 * 0 / stor2 + (stor2 * msg.value / msg.value) / 100)
    else:
        require stor1
        require stor1 * marketEggs / stor1 == marketEggs
        if not stor1:
            if not stor2:
                require msg.value
                require stor2 + (0 / msg.value) >= stor2
                require stor2 + (0 / msg.value)
                if not stor1 * marketEggs / stor2 + (0 / msg.value):
                    require 0 <= stor1 * marketEggs / stor2 + (0 / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        call ceoAddress with:
                           value 10 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + (0 / msg.value)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor1 * marketEggs / stor2 + (0 / msg.value)
                else:
                    require stor1 * marketEggs / stor2 + (0 / msg.value)
                    require 10 * stor1 * marketEggs / stor2 + (0 / msg.value) / stor1 * marketEggs / stor2 + (0 / msg.value) == 10
                    require 10 * stor1 * marketEggs / stor2 + (0 / msg.value) / 100 <= stor1 * marketEggs / stor2 + (0 / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        call ceoAddress with:
                           value 10 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + (0 / msg.value)) - (10 * stor1 * marketEggs / stor2 + (0 / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + (0 / msg.value)) - (10 * stor1 * marketEggs / stor2 + (0 / msg.value) / 100)
            else:
                require stor2
                require stor2 * msg.value / stor2 == msg.value
                require stor2 * msg.value >= 0
                require msg.value
                require stor2 + (stor2 * msg.value / msg.value) >= stor2
                require stor2 + (stor2 * msg.value / msg.value)
                if not stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value):
                    require 0 <= stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        call ceoAddress with:
                           value 10 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value)
                else:
                    require stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value)
                    require 10 * stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value) / stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value) == 10
                    require 10 * stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value) / 100 <= stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        call ceoAddress with:
                           value 10 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value)) - (10 * stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value)) - (10 * stor1 * marketEggs / stor2 + (stor2 * msg.value / msg.value) / 100)
        else:
            require stor1
            require (eth.balance(this.address) * stor1) - (msg.value * stor1) / stor1 == eth.balance(this.address) - msg.value
            if not stor2:
                require msg.value
                require stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) >= stor2
                require stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value)
                if not stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value):
                    require 0 <= stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        call ceoAddress with:
                           value 10 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value)
                else:
                    require stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value)
                    require 10 * stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) / stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) == 10
                    require 10 * stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) / 100 <= stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        call ceoAddress with:
                           value 10 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value)) - (10 * stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value)) - (10 * stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) / msg.value) / 100)
            else:
                require stor2
                require stor2 * msg.value / stor2 == msg.value
                require stor2 * msg.value >= 0
                require msg.value
                require stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value) >= stor2
                require stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value)
                if not stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value):
                    require 0 <= stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        call ceoAddress with:
                           value 10 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value)
                else:
                    require stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value)
                    require 10 * stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value) / stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value) == 10
                    require 10 * stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value) / 100 <= stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value)
                    if not msg.value:
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                    else:
                        require msg.value
                        require 10 * msg.value / msg.value == 10
                        call ceoAddress with:
                           value 10 * msg.value / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * msg.value / 100) - (10 * msg.value / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                    require claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value)) - (10 * stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value)) - (10 * stor1 * marketEggs / stor2 + ((eth.balance(this.address) * stor1) - (msg.value * stor1) + (stor2 * msg.value) / msg.value) / 100)
    require initialized
    if arg1 != msg.sender:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = arg1
    else:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 10) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 10
            require marketEggs + (claimedEggs[address(msg.sender)] / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require EGGS_TO_HATCH_1SHRIMP
            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 10) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 10
            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) / 10
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 10) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 10
            require marketEggs + (claimedEggs[address(msg.sender)] / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 10
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1SHRIMP
            require hatcheryShrimp[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP) >= hatcheryShrimp[address(msg.sender)]
            hatcheryShrimp[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / EGGS_TO_HATCH_1SHRIMP
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor8[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 10) >= claimedEggs[stor8[address(msg.sender)]]
            claimedEggs[stor8[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 10
            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 10) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / 10
}

function sellEggs() {
    require initialized
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1SHRIMP < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1SHRIMP:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor1:
                if not stor2:
                    require claimedEggs[address(msg.sender)]
                    require stor2 + (0 / claimedEggs[address(msg.sender)]) >= stor2
                    require stor2 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor2 + (0 / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / stor2 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor2 + (0 / claimedEggs[address(msg.sender)])
                        require 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) == 10
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100) - (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor2 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor2 + (0 / claimedEggs[address(msg.sender)])) - (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require stor2 * claimedEggs[address(msg.sender)] / stor2 == claimedEggs[address(msg.sender)]
                    require stor2 * claimedEggs[address(msg.sender)] >= 0
                    require claimedEggs[address(msg.sender)]
                    require stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor2
                    require stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    if not 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 10
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) - (10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor1
                require stor1 * eth.balance(this.address) / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require claimedEggs[address(msg.sender)]
                        require stor2 + (0 / claimedEggs[address(msg.sender)]) >= stor2
                        require stor2 + (0 / claimedEggs[address(msg.sender)])
                        if not stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)])
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 <= stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)])) - (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor2
                        require stor2 * claimedEggs[address(msg.sender)] / stor2 == claimedEggs[address(msg.sender)]
                        require stor2 * claimedEggs[address(msg.sender)] >= 0
                        require claimedEggs[address(msg.sender)]
                        require stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor2
                        require stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        if not stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor1
                    require stor1 * marketEggs / stor1 == marketEggs
                    if not stor2:
                        require stor1 * marketEggs >= stor1 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) >= stor2
                        require stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])
                        if not stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100 <= stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor2
                        require stor2 * claimedEggs[address(msg.sender)] / stor2 == claimedEggs[address(msg.sender)]
                        require (stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) >= stor1 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) >= stor2
                        require stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        if not stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require EGGS_TO_HATCH_1SHRIMP
            require EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] / EGGS_TO_HATCH_1SHRIMP == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            if not stor1:
                if not stor2:
                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                    require stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor2
                    require stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                    if not 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        require 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 10
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        call ceoAddress with:
                           value 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / stor2 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                    require (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) >= 0
                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                    require stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor2
                    require stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                    if not 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        require 10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 10
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        call ceoAddress with:
                           value 10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor1
                require stor1 * eth.balance(this.address) / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor2
                        require stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        if not stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor2
                        require (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / stor2 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) >= 0
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor2
                        require stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        if not stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor1
                    require stor1 * marketEggs / stor1 == marketEggs
                    if not stor2:
                        require stor1 * marketEggs >= stor1 * marketEggs
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor2
                        require stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        if not stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor2
                        require (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / stor2 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require (stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) >= stor1 * marketEggs
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                        require stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) >= stor2
                        require stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                        if not stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100 <= stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)]))) - (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1SHRIMP * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            if not stor1:
                if not stor2:
                    require claimedEggs[address(msg.sender)]
                    require stor2 + (0 / claimedEggs[address(msg.sender)]) >= stor2
                    require stor2 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor2 + (0 / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / stor2 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor2 + (0 / claimedEggs[address(msg.sender)])
                        require 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) == 10
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100) - (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor2 + (0 / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor2 + (0 / claimedEggs[address(msg.sender)])) - (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require stor2 * claimedEggs[address(msg.sender)] / stor2 == claimedEggs[address(msg.sender)]
                    require stor2 * claimedEggs[address(msg.sender)] >= 0
                    require claimedEggs[address(msg.sender)]
                    require stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor2
                    require stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    if not 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 10
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        call ceoAddress with:
                           value 10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) - (10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        call msg.sender with:
                           value (0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (10 * 0 / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor1
                require stor1 * eth.balance(this.address) / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require claimedEggs[address(msg.sender)]
                        require stor2 + (0 / claimedEggs[address(msg.sender)]) >= stor2
                        require stor2 + (0 / claimedEggs[address(msg.sender)])
                        if not stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)])
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100 <= stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)])) - (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor2
                        require stor2 * claimedEggs[address(msg.sender)] / stor2 == claimedEggs[address(msg.sender)]
                        require stor2 * claimedEggs[address(msg.sender)] >= 0
                        require claimedEggs[address(msg.sender)]
                        require stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor2
                        require stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        if not stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor2 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor1
                    require stor1 * marketEggs / stor1 == marketEggs
                    if not stor2:
                        require stor1 * marketEggs >= stor1 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) >= stor2
                        require stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])
                        if not stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100 <= stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)])) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor2
                        require stor2 * claimedEggs[address(msg.sender)] / stor2 == claimedEggs[address(msg.sender)]
                        require (stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) >= stor1 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) >= stor2
                        require stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        if not stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (stor2 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == hatcheryShrimp[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            if not stor1:
                if not stor2:
                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                    require stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor2
                    require stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                    if not 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        require 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 10
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        call ceoAddress with:
                           value 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (10 * 0 / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require stor2
                    require (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / stor2 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                    require (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) >= 0
                    require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                    require stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor2
                    require stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                    if not 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        call ceoAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                             gas 2300 wei
                        require 0 <= 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        require 10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 10
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        call ceoAddress with:
                           value 10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call ceoAddress2 with:
                           value (10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                             gas 2300 * is_zero(value) wei
                        require 10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        call msg.sender with:
                           value (0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (10 * 0 / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                             gas 2300 * is_zero(value) wei
            else:
                require stor1
                require stor1 * eth.balance(this.address) / stor1 == eth.balance(this.address)
                if not stor1:
                    if not stor2:
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor2
                        require stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        if not stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (10 * stor1 * eth.balance(this.address) / stor2 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor2
                        require (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / stor2 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) >= 0
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor2
                        require stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        if not stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (10 * stor1 * eth.balance(this.address) / stor2 + ((claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require stor1
                    require stor1 * marketEggs / stor1 == marketEggs
                    if not stor2:
                        require stor1 * marketEggs >= stor1 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor2
                        require stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        if not stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (10 * stor1 * eth.balance(this.address) / stor2 + (stor1 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require stor2
                        require (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / stor2 == claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require (stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) >= stor1 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                        require stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) >= stor2
                        require stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                        if not stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                                 gas 2300 wei
                            require 0 <= stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) == 10
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])
                            call ceoAddress with:
                               value 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call ceoAddress2 with:
                               value (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) - (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 / 2) wei
                                 gas 2300 * is_zero(value) wei
                            require 10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100 <= stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))
                            call msg.sender with:
                               value (stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)]))) - (10 * stor1 * eth.balance(this.address) / stor2 + ((stor1 * marketEggs) + (claimedEggs[address(msg.sender)] * stor2) + (block.timestamp * hatcheryShrimp[address(msg.sender)] * stor2) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)] * stor2) / claimedEggs[address(msg.sender)] + (block.timestamp * hatcheryShrimp[address(msg.sender)]) - (lastHatch[address(msg.sender)] * hatcheryShrimp[address(msg.sender)])) / 100) wei
                                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
