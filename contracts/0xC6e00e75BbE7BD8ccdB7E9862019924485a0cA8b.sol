contract main {




// =====================  Runtime code  =====================


#
#  - sub_25e0f6d9(?)
#  - sub_3c8ab4be(?)
#  - sub_6b9a5692(?)
#  - sub_f46d5fcf(?)
#
const balanceOf = eth.balance(this.address)


address _gubAddyAddress;
uint256 contractBalance;
uint256 numberOfBets;
array of uint256 betIDRec;
mapping of struct stor5;
array of struct sub_d6ca6c4c;
array of struct winners;
mapping of struct playerDetails;
mapping of struct stor9;
mapping of uint256 tokenBalance;

function numberOfBets() {
    return numberOfBets
}

function _gubAddy() {
    return _gubAddyAddress
}

function playerDetails(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return playerDetails[arg1][arg2].field_0, playerDetails[arg1][arg2].field_256
}

function contractBalance() {
    return contractBalance
}

function BetIDRec(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < betIDRec.length
    return betIDRec[arg1]
}

function sub_d6ca6c4c(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_d6ca6c4c[arg1].field_0
    return sub_d6ca6c4c[arg1][arg2].field_0, 
           sub_d6ca6c4c[arg1][arg2].field_256,
           sub_d6ca6c4c[arg1][arg2].field_512,
           sub_d6ca6c4c[arg1][arg2].field_768
}

function tokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenBalance[arg1]
}

function winners(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < winners[arg1].field_0
    return winners[arg1][arg2].field_0, winners[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _gubAddyAddress != msg.sender:
        revert with 0, 'Sender not Authorized'
    require arg1
    _gubAddyAddress = arg1
}

function approveToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function checkAllowance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        return 0
    return 1
}

function bets(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[arg1].field_2560:
        if stor5[arg1].field_2560 == stor5[arg1].field_2561 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_2560:
            if stor5[arg1].field_2560 == stor5[arg1].field_2561 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_2561:
                if 31 >= stor5[arg1].field_2561:
                    mem[128] = 256 * stor5[arg1].field_2568
                else:
                    mem[128] = stor5[arg1][10].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_2561 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s + 10].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor5[arg1].field_2560 == stor5[arg1].field_2561 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_2561:
                if 31 >= stor5[arg1].field_2561:
                    mem[128] = 256 * stor5[arg1].field_2568
                else:
                    mem[128] = stor5[arg1][10].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_2561 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s + 10].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return bool(stor5[arg1].field_0), 
               stor5[arg1].field_256,
               stor5[arg1].field_512,
               stor5[arg1].field_768,
               stor5[arg1].field_1024,
               stor5[arg1].field_1280,
               stor5[arg1].field_1536,
               stor5[arg1].field_1792,
               stor5[arg1].field_2048,
               stor5[arg1].field_2304,
               Array(len=2 * Mask(256, -1, stor5[arg1].field_2561), data=mem[128 len ceil32(stor5[arg1].field_2561)]),
               stor5[arg1].field_2816
    if stor5[arg1].field_2560 == stor5[arg1].field_2561 < 32:
        revert with 'NH{q', 34
    if stor5[arg1].field_2560:
        if stor5[arg1].field_2560 == stor5[arg1].field_2561 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_2561:
            if 31 >= stor5[arg1].field_2561:
                mem[128] = 256 * stor5[arg1].field_2568
            else:
                mem[128] = stor5[arg1][10].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_2561 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s + 10].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor5[arg1].field_2560 == stor5[arg1].field_2561 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_2561:
            if 31 >= stor5[arg1].field_2561:
                mem[128] = 256 * stor5[arg1].field_2568
            else:
                mem[128] = stor5[arg1][10].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_2561 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s + 10].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(stor5[arg1].field_0), 
           stor5[arg1].field_256,
           stor5[arg1].field_512,
           stor5[arg1].field_768,
           stor5[arg1].field_1024,
           stor5[arg1].field_1280,
           stor5[arg1].field_1536,
           stor5[arg1].field_1792,
           stor5[arg1].field_2048,
           stor5[arg1].field_2304,
           Array(len=stor5[arg1].field_2560, data=mem[128 len ceil32(stor5[arg1].field_2561)]),
           stor5[arg1].field_2816
}

function restrictedCards(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_0:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_1:
                if 31 < stor9[arg1].field_1:
                    mem[128] = stor9[arg1].field_0
                    idx = 128
                    s = 0
                    while stor9[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[arg1].field_1), data=mem[128 len ceil32(stor9[arg1].field_1)])
                mem[128] = 256 * stor9[arg1].field_8
        else:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_1:
                if 31 < stor9[arg1].field_1:
                    mem[128] = stor9[arg1].field_0
                    idx = 128
                    s = 0
                    while stor9[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[arg1].field_1), data=mem[128 len ceil32(stor9[arg1].field_1)])
                mem[128] = 256 * stor9[arg1].field_8
        mem[ceil32(stor9[arg1].field_1) + 192 len ceil32(stor9[arg1].field_1)] = mem[128 len ceil32(stor9[arg1].field_1)]
        if ceil32(stor9[arg1].field_1) > stor9[arg1].field_1:
            mem[ceil32(stor9[arg1].field_1) + stor9[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9[arg1].field_1), data=mem[128 len ceil32(stor9[arg1].field_1)], mem[(2 * ceil32(stor9[arg1].field_1)) + 192 len 2 * ceil32(stor9[arg1].field_1)]), 
    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_1:
            if 31 < stor9[arg1].field_1:
                mem[128] = stor9[arg1].field_0
                idx = 128
                s = 0
                while stor9[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[arg1].field_0, data=mem[128 len ceil32(stor9[arg1].field_1)])
            mem[128] = 256 * stor9[arg1].field_8
    else:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_1:
            if 31 < stor9[arg1].field_1:
                mem[128] = stor9[arg1].field_0
                idx = 128
                s = 0
                while stor9[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[arg1].field_0, data=mem[128 len ceil32(stor9[arg1].field_1)])
            mem[128] = 256 * stor9[arg1].field_8
    mem[ceil32(stor9[arg1].field_1) + 192 len ceil32(stor9[arg1].field_1)] = mem[128 len ceil32(stor9[arg1].field_1)]
    if ceil32(stor9[arg1].field_1) > stor9[arg1].field_1:
        mem[ceil32(stor9[arg1].field_1) + stor9[arg1].field_1 + 192] = 0
    return Array(len=stor9[arg1].field_0, data=mem[128 len ceil32(stor9[arg1].field_1)], mem[(2 * ceil32(stor9[arg1].field_1)) + 192 len 2 * ceil32(stor9[arg1].field_1)]), 
}



}
