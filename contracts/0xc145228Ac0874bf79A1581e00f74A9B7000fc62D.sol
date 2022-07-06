contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 EGGS_TO_HATCH_1MINERS;
uint256 stor2;
uint256 stor3;
uint8 stor4;
address stor4;
address ceoAddress; offset 8
address ceoAddress2;
mapping of uint256 myMiners;
mapping of uint256 claimedEggs;
mapping of uint256 lastHatch;
mapping of address referrals;
uint256 marketEggs;

function ceoAddress() {
    return ceoAddress
}

function getMyMiners() {
    return myMiners[address(msg.sender)]
}

function initialized() {
    return bool(uint8(stor4.field_0))
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

function hatcheryMiners(address arg1) {
    return myMiners[arg1]
}

function EGGS_TO_HATCH_1MINERS() {
    return EGGS_TO_HATCH_1MINERS
}

function referrals(address arg1) {
    return referrals[arg1]
}

function ceoAddress2() {
    return ceoAddress2
}

function _fallback() payable {
    revert
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 5 * arg1 / arg1 == 5
    return (5 * arg1 / 100)
}

function getBalance() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function seedMarket(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not marketEggs
    uint8(stor4.field_0) = 1
    marketEggs = 20 * 10^6 * 3600
}

function getEggsSinceLastHatch(address arg1) {
    require lastHatch[address(arg1)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(arg1)]:
        if not EGGS_TO_HATCH_1MINERS:
            return 0
        if EGGS_TO_HATCH_1MINERS:
            if EGGS_TO_HATCH_1MINERS * myMiners[address(arg1)] / EGGS_TO_HATCH_1MINERS == myMiners[address(arg1)]:
                return (EGGS_TO_HATCH_1MINERS * myMiners[address(arg1)])
    else:
        if not block.timestamp - lastHatch[address(arg1)]:
            return 0
        if block.timestamp - lastHatch[address(arg1)]:
            if (block.timestamp * myMiners[address(arg1)]) - (lastHatch[address(arg1)] * myMiners[address(arg1)]) / block.timestamp - lastHatch[address(arg1)] == myMiners[address(arg1)]:
                return ((block.timestamp * myMiners[address(arg1)]) - (lastHatch[address(arg1)] * myMiners[address(arg1)]))
    revert
}

function getMyEggs() {
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if EGGS_TO_HATCH_1MINERS:
                if EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            if claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]:
                return claimedEggs[address(msg.sender)]
        else:
            if block.timestamp - lastHatch[address(msg.sender)]:
                if (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]:
                    if claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= claimedEggs[address(msg.sender)]:
                        return (claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor2:
        if not stor3:
            if arg1:
                if stor3 + (0 / arg1) >= stor3:
                    if stor3 + (0 / arg1):
                        return (0 / stor3 + (0 / arg1))
        else:
            if stor3:
                if stor3 * arg1 / stor3 == arg1:
                    if stor3 * arg1 >= 0:
                        if arg1:
                            if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                if stor3 + (stor3 * arg1 / arg1):
                                    return (0 / stor3 + (stor3 * arg1 / arg1))
    else:
        if stor2:
            if stor2 * arg3 / stor2 == arg3:
                if not stor2:
                    if not stor3:
                        if arg1:
                            if stor3 + (0 / arg1) >= stor3:
                                if stor3 + (0 / arg1):
                                    return (stor2 * arg3 / stor3 + (0 / arg1))
                    else:
                        if stor3:
                            if stor3 * arg1 / stor3 == arg1:
                                if stor3 * arg1 >= 0:
                                    if arg1:
                                        if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                            if stor3 + (stor3 * arg1 / arg1):
                                                return (stor2 * arg3 / stor3 + (stor3 * arg1 / arg1))
                else:
                    if stor2:
                        if stor2 * arg2 / stor2 == arg2:
                            if not stor3:
                                if stor2 * arg2 >= stor2 * arg2:
                                    if arg1:
                                        if stor3 + (stor2 * arg2 / arg1) >= stor3:
                                            if stor3 + (stor2 * arg2 / arg1):
                                                return (stor2 * arg3 / stor3 + (stor2 * arg2 / arg1))
                            else:
                                if stor3:
                                    if stor3 * arg1 / stor3 == arg1:
                                        if (stor2 * arg2) + (stor3 * arg1) >= stor2 * arg2:
                                            if arg1:
                                                if stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1) >= stor3:
                                                    if stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1):
                                                        return (stor2 * arg3 / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
    revert
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    if not stor2:
        if not stor3:
            if arg1:
                if stor3 + (0 / arg1) >= stor3:
                    if stor3 + (0 / arg1):
                        return (0 / stor3 + (0 / arg1))
        else:
            if stor3:
                if stor3 * arg1 / stor3 == arg1:
                    if stor3 * arg1 >= 0:
                        if arg1:
                            if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                if stor3 + (stor3 * arg1 / arg1):
                                    return (0 / stor3 + (stor3 * arg1 / arg1))
    else:
        if stor2:
            if stor2 * marketEggs / stor2 == marketEggs:
                if not stor2:
                    if not stor3:
                        if arg1:
                            if stor3 + (0 / arg1) >= stor3:
                                if stor3 + (0 / arg1):
                                    return (stor2 * marketEggs / stor3 + (0 / arg1))
                    else:
                        if stor3:
                            if stor3 * arg1 / stor3 == arg1:
                                if stor3 * arg1 >= 0:
                                    if arg1:
                                        if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                            if stor3 + (stor3 * arg1 / arg1):
                                                return (stor2 * marketEggs / stor3 + (stor3 * arg1 / arg1))
                else:
                    if stor2:
                        if stor2 * arg2 / stor2 == arg2:
                            if not stor3:
                                if stor2 * arg2 >= stor2 * arg2:
                                    if arg1:
                                        if stor3 + (stor2 * arg2 / arg1) >= stor3:
                                            if stor3 + (stor2 * arg2 / arg1):
                                                return (stor2 * marketEggs / stor3 + (stor2 * arg2 / arg1))
                            else:
                                if stor3:
                                    if stor3 * arg1 / stor3 == arg1:
                                        if (stor2 * arg2) + (stor3 * arg1) >= stor2 * arg2:
                                            if arg1:
                                                if stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1) >= stor3:
                                                    if stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1):
                                                        return (stor2 * marketEggs / stor3 + ((stor2 * arg2) + (stor3 * arg1) / arg1))
    revert
}

function calculateEggSell(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2:
        if not stor3:
            if arg1:
                if stor3 + (0 / arg1) >= stor3:
                    if stor3 + (0 / arg1):
                        return (0 / stor3 + (0 / arg1))
        else:
            if stor3:
                if stor3 * arg1 / stor3 == arg1:
                    if stor3 * arg1 >= 0:
                        if arg1:
                            if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                if stor3 + (stor3 * arg1 / arg1):
                                    return (0 / stor3 + (stor3 * arg1 / arg1))
    else:
        if stor2:
            if stor2 * ext_call.return_data[0] / stor2 == ext_call.return_data[0]:
                if not stor2:
                    if not stor3:
                        if arg1:
                            if stor3 + (0 / arg1) >= stor3:
                                if stor3 + (0 / arg1):
                                    return (stor2 * ext_call.return_data[0] / stor3 + (0 / arg1))
                    else:
                        if stor3:
                            if stor3 * arg1 / stor3 == arg1:
                                if stor3 * arg1 >= 0:
                                    if arg1:
                                        if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                            if stor3 + (stor3 * arg1 / arg1):
                                                return (stor2 * ext_call.return_data[0] / stor3 + (stor3 * arg1 / arg1))
                else:
                    if stor2:
                        if stor2 * marketEggs / stor2 == marketEggs:
                            if not stor3:
                                if stor2 * marketEggs >= stor2 * marketEggs:
                                    if arg1:
                                        if stor3 + (stor2 * marketEggs / arg1) >= stor3:
                                            if stor3 + (stor2 * marketEggs / arg1):
                                                return (stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / arg1))
                            else:
                                if stor3:
                                    if stor3 * arg1 / stor3 == arg1:
                                        if (stor2 * marketEggs) + (stor3 * arg1) >= stor2 * marketEggs:
                                            if arg1:
                                                if stor3 + ((stor2 * marketEggs) + (stor3 * arg1) / arg1) >= stor3:
                                                    if stor3 + ((stor2 * marketEggs) + (stor3 * arg1) / arg1):
                                                        return (stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * arg1) / arg1))
    revert
}

function calculateEggBuySimple(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2:
        if not stor3:
            if arg1:
                if stor3 + (0 / arg1) >= stor3:
                    if stor3 + (0 / arg1):
                        return (0 / stor3 + (0 / arg1))
        else:
            if stor3:
                if stor3 * arg1 / stor3 == arg1:
                    if stor3 * arg1 >= 0:
                        if arg1:
                            if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                if stor3 + (stor3 * arg1 / arg1):
                                    return (0 / stor3 + (stor3 * arg1 / arg1))
    else:
        if stor2:
            if stor2 * marketEggs / stor2 == marketEggs:
                if not stor2:
                    if not stor3:
                        if arg1:
                            if stor3 + (0 / arg1) >= stor3:
                                if stor3 + (0 / arg1):
                                    return (stor2 * marketEggs / stor3 + (0 / arg1))
                    else:
                        if stor3:
                            if stor3 * arg1 / stor3 == arg1:
                                if stor3 * arg1 >= 0:
                                    if arg1:
                                        if stor3 + (stor3 * arg1 / arg1) >= stor3:
                                            if stor3 + (stor3 * arg1 / arg1):
                                                return (stor2 * marketEggs / stor3 + (stor3 * arg1 / arg1))
                else:
                    if stor2:
                        if stor2 * ext_call.return_data[0] / stor2 == ext_call.return_data[0]:
                            if not stor3:
                                if stor2 * ext_call.return_data[0] >= stor2 * ext_call.return_data[0]:
                                    if arg1:
                                        if stor3 + (stor2 * ext_call.return_data[0] / arg1) >= stor3:
                                            if stor3 + (stor2 * ext_call.return_data[0] / arg1):
                                                return (stor2 * marketEggs / stor3 + (stor2 * ext_call.return_data[0] / arg1))
                            else:
                                if stor3:
                                    if stor3 * arg1 / stor3 == arg1:
                                        if (stor2 * ext_call.return_data[0]) + (stor3 * arg1) >= stor2 * ext_call.return_data[0]:
                                            if arg1:
                                                if stor3 + ((stor2 * ext_call.return_data[0]) + (stor3 * arg1) / arg1) >= stor3:
                                                    if stor3 + ((stor2 * ext_call.return_data[0]) + (stor3 * arg1) / arg1):
                                                        return (stor2 * marketEggs / stor3 + ((stor2 * ext_call.return_data[0]) + (stor3 * arg1) / arg1))
    revert
}

function hatchEggs(address arg1) {
    require uint8(stor4.field_0)
    if arg1 != msg.sender:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = arg1
    else:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1MINERS
            require myMiners[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1MINERS) >= myMiners[address(msg.sender)]
            myMiners[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1MINERS
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor9[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 10) >= claimedEggs[stor9[address(msg.sender)]]
            claimedEggs[stor9[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 10
            require marketEggs + (claimedEggs[address(msg.sender)] / 5) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 5
        else:
            require EGGS_TO_HATCH_1MINERS
            require EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1MINERS
            require myMiners[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS) >= myMiners[address(msg.sender)]
            myMiners[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor9[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / 10) >= claimedEggs[stor9[address(msg.sender)]]
            claimedEggs[stor9[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / 10
            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / 5) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / 5
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1MINERS
            require myMiners[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1MINERS) >= myMiners[address(msg.sender)]
            myMiners[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1MINERS
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor9[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 10) >= claimedEggs[stor9[address(msg.sender)]]
            claimedEggs[stor9[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 10
            require marketEggs + (claimedEggs[address(msg.sender)] / 5) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 5
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1MINERS
            require myMiners[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS) >= myMiners[address(msg.sender)]
            myMiners[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor9[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / 10) >= claimedEggs[stor9[address(msg.sender)]]
            claimedEggs[stor9[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / 10
            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / 5) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / 5
}

function buyEggs(address arg1, uint256 arg2) {
    require uint8(stor4.field_0)
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    if not stor2:
        if not stor3:
            require arg2
            require stor3 + (0 / arg2) >= stor3
            require stor3 + (0 / arg2)
            if not 0 / stor3 + (0 / arg2):
                require 0 <= 0 / stor3 + (0 / arg2)
                if not arg2:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, 0
                else:
                    require arg2
                    require 5 * arg2 / arg2 == 5
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 5 * arg2 / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require claimedEggs[address(msg.sender)] + (0 / stor3 + (0 / arg2)) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] += 0 / stor3 + (0 / arg2)
            else:
                require 0 / stor3 + (0 / arg2)
                require 5 * 0 / stor3 + (0 / arg2) / 0 / stor3 + (0 / arg2) == 5
                require 5 * 0 / stor3 + (0 / arg2) / 100 <= 0 / stor3 + (0 / arg2)
                if not arg2:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, 0
                else:
                    require arg2
                    require 5 * arg2 / arg2 == 5
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 5 * arg2 / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require claimedEggs[address(msg.sender)] + (0 / stor3 + (0 / arg2)) - (5 * 0 / stor3 + (0 / arg2) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor3 + (0 / arg2)) - (5 * 0 / stor3 + (0 / arg2) / 100)
        else:
            require stor3
            require stor3 * arg2 / stor3 == arg2
            require stor3 * arg2 >= 0
            require arg2
            require stor3 + (stor3 * arg2 / arg2) >= stor3
            require stor3 + (stor3 * arg2 / arg2)
            if not 0 / stor3 + (stor3 * arg2 / arg2):
                require 0 <= 0 / stor3 + (stor3 * arg2 / arg2)
                if not arg2:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, 0
                else:
                    require arg2
                    require 5 * arg2 / arg2 == 5
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 5 * arg2 / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require claimedEggs[address(msg.sender)] + (0 / stor3 + (stor3 * arg2 / arg2)) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] += 0 / stor3 + (stor3 * arg2 / arg2)
            else:
                require 0 / stor3 + (stor3 * arg2 / arg2)
                require 5 * 0 / stor3 + (stor3 * arg2 / arg2) / 0 / stor3 + (stor3 * arg2 / arg2) == 5
                require 5 * 0 / stor3 + (stor3 * arg2 / arg2) / 100 <= 0 / stor3 + (stor3 * arg2 / arg2)
                if not arg2:
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, 0
                else:
                    require arg2
                    require 5 * arg2 / arg2 == 5
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor4.field_0), 5 * arg2 / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require claimedEggs[address(msg.sender)] + (0 / stor3 + (stor3 * arg2 / arg2)) - (5 * 0 / stor3 + (stor3 * arg2 / arg2) / 100) >= claimedEggs[address(msg.sender)]
                claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (0 / stor3 + (stor3 * arg2 / arg2)) - (5 * 0 / stor3 + (stor3 * arg2 / arg2) / 100)
    else:
        require stor2
        require stor2 * marketEggs / stor2 == marketEggs
        if not stor2:
            if not stor3:
                require arg2
                require stor3 + (0 / arg2) >= stor3
                require stor3 + (0 / arg2)
                if not stor2 * marketEggs / stor3 + (0 / arg2):
                    require 0 <= stor2 * marketEggs / stor3 + (0 / arg2)
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require arg2
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (0 / arg2)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor2 * marketEggs / stor3 + (0 / arg2)
                else:
                    require stor2 * marketEggs / stor3 + (0 / arg2)
                    require 5 * stor2 * marketEggs / stor3 + (0 / arg2) / stor2 * marketEggs / stor3 + (0 / arg2) == 5
                    require 5 * stor2 * marketEggs / stor3 + (0 / arg2) / 100 <= stor2 * marketEggs / stor3 + (0 / arg2)
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require arg2
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (0 / arg2)) - (5 * stor2 * marketEggs / stor3 + (0 / arg2) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (0 / arg2)) - (5 * stor2 * marketEggs / stor3 + (0 / arg2) / 100)
            else:
                require stor3
                require stor3 * arg2 / stor3 == arg2
                require stor3 * arg2 >= 0
                require arg2
                require stor3 + (stor3 * arg2 / arg2) >= stor3
                require stor3 + (stor3 * arg2 / arg2)
                if not stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2):
                    require 0 <= stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2)
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require arg2
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2)
                else:
                    require stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2)
                    require 5 * stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2) / stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2) == 5
                    require 5 * stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2) / 100 <= stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2)
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require arg2
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2)) - (5 * stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2)) - (5 * stor2 * marketEggs / stor3 + (stor3 * arg2 / arg2) / 100)
        else:
            require stor2
            require (ext_call.return_data[0] * stor2) - (arg2 * stor2) / stor2 == ext_call.return_data[0] - arg2
            if not stor3:
                require arg2
                require stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) >= stor3
                require stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2)
                if not stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2):
                    require 0 <= stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2)
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require arg2
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2)
                else:
                    require stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2)
                    require 5 * stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) / stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) == 5
                    require 5 * stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) / 100 <= stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2)
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require arg2
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2)) - (5 * stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2)) - (5 * stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) / arg2) / 100)
            else:
                require stor3
                require stor3 * arg2 / stor3 == arg2
                require stor3 * arg2 >= 0
                require arg2
                require stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2) >= stor3
                require stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2)
                if not stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2):
                    require 0 <= stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2)
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require arg2
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2)) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] += stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2)
                else:
                    require stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2)
                    require 5 * stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2) / stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2) == 5
                    require 5 * stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2) / 100 <= stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2)
                    if not arg2:
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                    else:
                        require arg2
                        require 5 * arg2 / arg2 == 5
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * arg2 / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * arg2 / 100) - (5 * arg2 / 100 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2)) - (5 * stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2) / 100) >= claimedEggs[address(msg.sender)]
                    claimedEggs[address(msg.sender)] = claimedEggs[address(msg.sender)] + (stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2)) - (5 * stor2 * marketEggs / stor3 + ((ext_call.return_data[0] * stor2) - (arg2 * stor2) + (stor3 * arg2) / arg2) / 100)
    require uint8(stor4.field_0)
    if arg1 != msg.sender:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = arg1
    else:
        if not referrals[address(msg.sender)]:
            if referrals[address(msg.sender)] != msg.sender:
                referrals[address(msg.sender)] = 0
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1MINERS
            require myMiners[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1MINERS) >= myMiners[address(msg.sender)]
            myMiners[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1MINERS
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor9[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 10) >= claimedEggs[stor9[address(msg.sender)]]
            claimedEggs[stor9[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 10
            require marketEggs + (claimedEggs[address(msg.sender)] / 5) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 5
        else:
            require EGGS_TO_HATCH_1MINERS
            require EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1MINERS
            require myMiners[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS) >= myMiners[address(msg.sender)]
            myMiners[address(msg.sender)] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor9[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / 10) >= claimedEggs[stor9[address(msg.sender)]]
            claimedEggs[stor9[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / 10
            require marketEggs + (claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / 5) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) / 5
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1MINERS
            require myMiners[address(msg.sender)] + (claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1MINERS) >= myMiners[address(msg.sender)]
            myMiners[address(msg.sender)] += claimedEggs[address(msg.sender)] / EGGS_TO_HATCH_1MINERS
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor9[address(msg.sender)]] + (claimedEggs[address(msg.sender)] / 10) >= claimedEggs[stor9[address(msg.sender)]]
            claimedEggs[stor9[address(msg.sender)]] += claimedEggs[address(msg.sender)] / 10
            require marketEggs + (claimedEggs[address(msg.sender)] / 5) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] / 5
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require EGGS_TO_HATCH_1MINERS
            require myMiners[address(msg.sender)] + (claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS) >= myMiners[address(msg.sender)]
            myMiners[address(msg.sender)] += claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / EGGS_TO_HATCH_1MINERS
            claimedEggs[address(msg.sender)] = 0
            lastHatch[address(msg.sender)] = block.timestamp
            require claimedEggs[stor9[address(msg.sender)]] + (claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / 10) >= claimedEggs[stor9[address(msg.sender)]]
            claimedEggs[stor9[address(msg.sender)]] += claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / 10
            require marketEggs + (claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / 5) >= marketEggs
            marketEggs += claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / 5
}

function sellEggs() {
    require uint8(stor4.field_0)
    require lastHatch[address(msg.sender)] <= block.timestamp
    if EGGS_TO_HATCH_1MINERS < block.timestamp - lastHatch[address(msg.sender)]:
        if not EGGS_TO_HATCH_1MINERS:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) == 5
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100) - (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / stor3 + (0 / claimedEggs[address(msg.sender)])) - (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100)
                else:
                    require stor3
                    require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                    require stor3 * claimedEggs[address(msg.sender)] >= 0
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    else:
                        require 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 5
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) - (5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100)
            else:
                require stor2
                require stor2 * ext_call.return_data[0] / stor2 == ext_call.return_data[0]
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)])
                        if not stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])) - (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100)
                    else:
                        require stor3
                        require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                        require stor3 * claimedEggs[address(msg.sender)] >= 0
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        if not stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100)
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                        if not stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100)
                    else:
                        require stor3
                        require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                        require (stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        if not stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100)
        else:
            require EGGS_TO_HATCH_1MINERS
            require EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] / EGGS_TO_HATCH_1MINERS == myMiners[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        require 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) == 5
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100) - (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))) - (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100)
                else:
                    require stor3
                    require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                    require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) >= 0
                    require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) >= stor3
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                    if not 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                    else:
                        require 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        require 5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) == 5
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100) - (5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))) - (5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100)
            else:
                require stor2
                require stor2 * ext_call.return_data[0] / stor2 == ext_call.return_data[0]
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        if not stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))) - (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100)
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) >= 0
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) >= stor3
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        if not stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 <= stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100)
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        if not stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100)
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require (stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        if not stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100 <= stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)]))) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (EGGS_TO_HATCH_1MINERS * myMiners[address(msg.sender)])) / 100)
    else:
        if not block.timestamp - lastHatch[address(msg.sender)]:
            require claimedEggs[address(msg.sender)] >= claimedEggs[address(msg.sender)]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) == 5
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100) - (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / stor3 + (0 / claimedEggs[address(msg.sender)])) - (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100)
                else:
                    require stor3
                    require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                    require stor3 * claimedEggs[address(msg.sender)] >= 0
                    require claimedEggs[address(msg.sender)]
                    require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor3
                    require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    if not 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                    else:
                        require 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require 5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 5
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                        marketEggs += claimedEggs[address(msg.sender)]
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) - (5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (5 * 0 / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100)
            else:
                require stor2
                require stor2 * ext_call.return_data[0] / stor2 == ext_call.return_data[0]
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (0 / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)])
                        if not stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)])) - (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)]) / 100)
                    else:
                        require stor3
                        require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                        require stor3 * claimedEggs[address(msg.sender)] >= 0
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        if not stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)])) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor3 * claimedEggs[address(msg.sender)] / claimedEggs[address(msg.sender)]) / 100)
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                        if not stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)])) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)]) / 100)
                    else:
                        require stor3
                        require stor3 * claimedEggs[address(msg.sender)] / stor3 == claimedEggs[address(msg.sender)]
                        require (stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)]
                        require stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        if not stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] >= marketEggs
                            marketEggs += claimedEggs[address(msg.sender)]
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100 <= stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)])) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (stor3 * claimedEggs[address(msg.sender)]) / claimedEggs[address(msg.sender)]) / 100)
        else:
            require block.timestamp - lastHatch[address(msg.sender)]
            require (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) / block.timestamp - lastHatch[address(msg.sender)] == myMiners[address(msg.sender)]
            require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= claimedEggs[address(msg.sender)]
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor2:
                if not stor3:
                    require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) >= stor3
                    require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                    if not 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                    else:
                        require 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        require 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) == 5
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100) - (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 <= 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))) - (5 * 0 / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100)
                else:
                    require stor3
                    require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                    require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) >= 0
                    require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) >= stor3
                    require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                    if not 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])):
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                    else:
                        require 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        require 5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) == 5
                        claimedEggs[address(msg.sender)] = 0
                        lastHatch[address(msg.sender)] = block.timestamp
                        require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                        marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor4.field_0), 5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args ceoAddress2, (5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100) - (5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 <= 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))) - (5 * 0 / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100)
            else:
                require stor2
                require stor2 * ext_call.return_data[0] / stor2 == ext_call.return_data[0]
                if not stor2:
                    if not stor3:
                        require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) >= stor3
                        require stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        if not stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))) - (5 * stor2 * ext_call.return_data[0] / stor3 + (0 / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100)
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) >= 0
                        require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) >= stor3
                        require stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        if not stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 <= stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100)
                else:
                    require stor2
                    require stor2 * marketEggs / stor2 == marketEggs
                    if not stor3:
                        require stor2 * marketEggs >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) >= stor3
                        require stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        if not stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 <= stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))) - (5 * stor2 * ext_call.return_data[0] / stor3 + (stor2 * marketEggs / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100)
                    else:
                        require stor3
                        require (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / stor3 == claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require (stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) >= stor2 * marketEggs
                        require claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) >= stor3
                        require stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        if not stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])):
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0 <= stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                        else:
                            require stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) == 5
                            claimedEggs[address(msg.sender)] = 0
                            lastHatch[address(msg.sender)] = block.timestamp
                            require marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]) >= marketEggs
                            marketEggs = marketEggs + claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args ceoAddress2, (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 / 2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100 <= stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))
                            require ext_code.size(stor0)
                            call stor0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)]))) - (5 * stor2 * ext_call.return_data[0] / stor3 + ((stor2 * marketEggs) + (claimedEggs[address(msg.sender)] * stor3) + (block.timestamp * myMiners[address(msg.sender)] * stor3) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)] * stor3) / claimedEggs[address(msg.sender)] + (block.timestamp * myMiners[address(msg.sender)]) - (lastHatch[address(msg.sender)] * myMiners[address(msg.sender)])) / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
