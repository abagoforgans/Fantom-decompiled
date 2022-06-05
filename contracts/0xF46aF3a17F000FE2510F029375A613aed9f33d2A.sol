contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
array of struct stor2;
array of struct stor3;
array of struct stor4;
uint8 decimals;
uint256 totalSupply;
uint256 nextPunkIndexToAssign;
uint256 remaining;
uint256 stor9;
mapping of address punkIndexTo;
mapping of uint256 balanceOf;
mapping of struct punksOfferedForSale;
mapping of struct punkBids;
mapping of uint256 pendingWithdrawals;

function punksOfferedForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(punksOfferedForSale[arg1].field_0), 
           punksOfferedForSale[arg1].field_256,
           punksOfferedForSale[arg1].field_512,
           punksOfferedForSale[arg1].field_768,
           punksOfferedForSale[arg1].field_1024
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function nextPunkIndexToAssign() {
    return nextPunkIndexToAssign
}

function punkIndexToAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return punkIndexTo[arg1]
}

function punkBids(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(punkBids[arg1].field_0), punkBids[arg1].field_256, punkBids[arg1].field_512, punkBids[arg1].field_768
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function punksRemainingToAssign() {
    return remaining
}

function getRemaining() {
    return remaining
}

function pendingWithdrawals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pendingWithdrawals[arg1]
}

function _fallback() payable {
    revert
}

function withdraw() {
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function punkNoLongerForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require punkIndexTo[arg1] == msg.sender
    require arg1 < 10000
    punksOfferedForSale[arg1].field_0 = 0
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = msg.sender
    punksOfferedForSale[arg1].field_768 = 0
    punksOfferedForSale[arg1].field_1024 = 0
    punksOfferedForSale[arg1].field_1280 = 0
    emit PunkNoLongerForSale(arg1);
}

function offerPunkForSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require punkIndexTo[arg1] == msg.sender
    require arg1 < 10000
    punksOfferedForSale[arg1].field_0 = 1
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = msg.sender
    punksOfferedForSale[arg1].field_768 = arg2
    punksOfferedForSale[arg1].field_1024 = 0
    punksOfferedForSale[arg1].field_1280 = 0
    emit PunkOffered(arg2, arg1, 0);
}

function offerPunkForSaleToAddress(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require punkIndexTo[arg1] == msg.sender
    require arg1 < 10000
    punksOfferedForSale[arg1].field_0 = 1
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = msg.sender
    punksOfferedForSale[arg1].field_768 = arg2
    punksOfferedForSale[arg1].field_1024 = arg3
    emit PunkOffered(arg2, arg1, arg3);
}

function withdrawBidForPunk(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 10000
    require punkIndexTo[arg1]
    require punkIndexTo[arg1] != msg.sender
    require punkBids[arg1].field_512 == msg.sender
    emit PunkBidWithdrawn(punkBids[arg1].field_768, arg1, msg.sender);
    punkBids[arg1].field_0 = 0
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = 0
    punkBids[arg1].field_768 = 0
    punkBids[arg1].field_768 = 0
    call msg.sender with:
       value punkBids[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function enterBidForPunk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 10000
    require punkIndexTo[arg1]
    require punkIndexTo[arg1] != msg.sender
    require msg.value
    require msg.value > punkBids[arg1].field_768
    if punkBids[arg1].field_768 > 0:
        if pendingWithdrawals[stor13[arg1].field_512] > -punkBids[arg1].field_768 - 1:
            revert with 'NH{q', 17
        pendingWithdrawals[stor13[arg1].field_512] += punkBids[arg1].field_768
    punkBids[arg1].field_0 = 1
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = msg.sender
    punkBids[arg1].field_768 = msg.value
    emit PunkBidEntered(msg.value, arg1, msg.sender);
}

function getPunk() payable {
    require remaining
    require not punkIndexTo[stor7]
    require nextPunkIndexToAssign < 10000
    require msg.value == stor9
    punkIndexTo[stor7] = msg.sender
    if balanceOf[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    if not remaining:
        revert with 'NH{q', 17
    remaining--
    if nextPunkIndexToAssign > -2:
        revert with 'NH{q', 17
    nextPunkIndexToAssign++
    emit Assign(nextPunkIndexToAssign, msg.sender);
    emit Transfer(1, this.address, msg.sender);
    emit PunkTransfer(nextPunkIndexToAssign, this.address, msg.sender);
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferPunk(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require punkIndexTo[arg2] == msg.sender
    require arg2 < 10000
    if punksOfferedForSale[arg2].field_0:
        require punkIndexTo[arg2] == msg.sender
        require arg2 < 10000
        punksOfferedForSale[arg2].field_0 = 0
        punksOfferedForSale[arg2].field_256 = arg2
        punksOfferedForSale[arg2].field_512 = msg.sender
        punksOfferedForSale[arg2].field_768 = 0
        punksOfferedForSale[arg2].field_1024 = 0
        punksOfferedForSale[arg2].field_1280 = 0
        emit PunkNoLongerForSale(arg2);
    punkIndexTo[arg2] = arg1
    if not balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]--
    if balanceOf[address(arg1)] == -1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    emit Transfer(1, msg.sender, arg1);
    emit PunkTransfer(arg2, msg.sender, arg1);
    if punkBids[arg2].field_512 == arg1:
        if pendingWithdrawals[address(arg1)] > -punkBids[arg2].field_768 - 1:
            revert with 'NH{q', 17
        pendingWithdrawals[address(arg1)] += punkBids[arg2].field_768
        punkBids[arg2].field_0 = 0
        punkBids[arg2].field_256 = arg2
        punkBids[arg2].field_512 = 0
        punkBids[arg2].field_768 = 0
        punkBids[arg2].field_768 = 0
}

function acceptBidForPunk(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 10000
    require punkIndexTo[arg1] == msg.sender
    require punkBids[arg1].field_768
    require punkBids[arg1].field_768 >= arg2
    punkIndexTo[arg1] = punkBids[arg1].field_512
    if not balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]--
    if balanceOf[stor13[arg1].field_512] == -1:
        revert with 'NH{q', 17
    balanceOf[stor13[arg1].field_512]++
    emit Transfer(1, msg.sender, punkBids[arg1].field_512);
    emit PunkTransfer(arg1, msg.sender, punkBids[arg1].field_512);
    punksOfferedForSale[arg1].field_0 = 0
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = punkBids[arg1].field_512
    punksOfferedForSale[arg1].field_768 = 0
    punksOfferedForSale[arg1].field_1024 = 0
    punksOfferedForSale[arg1].field_1280 = 0
    punkBids[arg1].field_0 = 0
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = 0
    punkBids[arg1].field_768 = 0
    punkBids[arg1].field_768 = 0
    if pendingWithdrawals[address(msg.sender)] > -punkBids[arg1].field_768 - 1:
        revert with 'NH{q', 17
    pendingWithdrawals[address(msg.sender)] += punkBids[arg1].field_768
    emit PunkBought(punkBids[arg1].field_768, arg1, msg.sender, punkBids[arg1].field_512);
}

function buyPunk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 10000
    require punksOfferedForSale[arg1].field_0
    if punksOfferedForSale[arg1].field_1024:
        require punksOfferedForSale[arg1].field_1024 == msg.sender
    require msg.value >= punksOfferedForSale[arg1].field_768
    require punksOfferedForSale[arg1].field_512 == punkIndexTo[arg1]
    punkIndexTo[arg1] = msg.sender
    if not balanceOf[stor12[arg1].field_512]:
        revert with 'NH{q', 17
    balanceOf[stor12[arg1].field_512]--
    if balanceOf[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    emit Transfer(1, punksOfferedForSale[arg1].field_512, msg.sender);
    emit PunkTransfer(arg1, punksOfferedForSale[arg1].field_512, msg.sender);
    require punkIndexTo[arg1] == msg.sender
    require arg1 < 10000
    punksOfferedForSale[arg1].field_0 = 0
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = msg.sender
    punksOfferedForSale[arg1].field_768 = 0
    punksOfferedForSale[arg1].field_1024 = 0
    punksOfferedForSale[arg1].field_1280 = 0
    emit PunkNoLongerForSale(arg1);
    if pendingWithdrawals[stor12[arg1].field_512] > -msg.value - 1:
        revert with 'NH{q', 17
    pendingWithdrawals[stor12[arg1].field_512] += msg.value
    emit PunkBought(msg.value, arg1, punksOfferedForSale[arg1].field_512, msg.sender);
    if punkBids[arg1].field_512 == msg.sender:
        if pendingWithdrawals[address(msg.sender)] > -punkBids[arg1].field_768 - 1:
            revert with 'NH{q', 17
        pendingWithdrawals[address(msg.sender)] += punkBids[arg1].field_768
        punkBids[arg1].field_0 = 0
        punkBids[arg1].field_256 = arg1
        punkBids[arg1].field_512 = 0
        punkBids[arg1].field_768 = 0
        punkBids[arg1].field_768 = 0
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function standard() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function imageHash() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}



}
