contract main {




// =====================  Runtime code  =====================


#
#  - sub_25e0f6d9(?)
#  - sub_31172795(?)
#  - sub_3c8ab4be(?)
#  - sub_be469eae(?)
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
    return playerDetails[arg1][arg2].field_0, playerDetails[arg1][arg2].field_256
}

function contractBalance() {
    return contractBalance
}

function BetIDRec(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < betIDRec.length
    return betIDRec[arg1]
}

function sub_d6ca6c4c(?) {
    require calldata.size - 4 >= 64
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

function checkAllowance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        return 0
    return 1
}

function approveToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function restrictedCards(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == uint255(stor9[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor9[arg1].field_0:
            if stor9[arg1].field_0 == uint255(stor9[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9[arg1].field_0):
                if 31 < uint255(stor9[arg1].field_0) * 0.5:
                    mem[128] = stor9[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor9[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[arg1].field_0), data=mem[128 len ceil32(uint255(stor9[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor9[arg1].field_8
        else:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor9[arg1].field_0), data=mem[128 len ceil32(uint255(stor9[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor9[arg1].field_8
        mem[ceil32(uint255(stor9[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor9[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor9[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor9[arg1].field_0) * 0.5) > uint255(stor9[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor9[arg1].field_0) * 0.5) + (uint255(stor9[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9[arg1].field_0), data=mem[128 len ceil32(uint255(stor9[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor9[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor9[arg1].field_0) * 0.5)]), 
    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
        revert with 0, 34
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == uint255(stor9[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9[arg1].field_0):
            if 31 < uint255(stor9[arg1].field_0) * 0.5:
                mem[128] = stor9[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor9[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[arg1].field_0, data=mem[128 len ceil32(stor9[arg1].field_1)])
            mem[128] = 256 * stor9[arg1].field_8
    else:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 0, 34
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

function bets(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if stor5[arg1].field_1536:
        if stor5[arg1].field_1536 == uint255(stor5[arg1].field_1536) * 0.5 < 32:
            revert with 0, 34
        if stor5[arg1].field_1536:
            if stor5[arg1].field_1536 == uint255(stor5[arg1].field_1536) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5[arg1].field_1536):
                if 31 >= uint255(stor5[arg1].field_1536) * 0.5:
                    mem[128] = 256 * stor5[arg1].field_1544
                else:
                    mem[128] = stor5[arg1][6].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor5[arg1].field_1536) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s + 6].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor5[arg1].field_1536 == stor5[arg1].field_1537 < 32:
                revert with 0, 34
            if stor5[arg1].field_1537:
                if 31 >= stor5[arg1].field_1537:
                    mem[128] = 256 * stor5[arg1].field_1544
                else:
                    mem[128] = stor5[arg1][6].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1537 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s + 6].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor5[arg1].field_1792:
            if stor5[arg1].field_1792 == uint255(stor5[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if stor5[arg1].field_1792:
                if stor5[arg1].field_1792 == uint255(stor5[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor5[arg1].field_1792):
                    if ceil32(uint255(stor5[arg1].field_1536) * 0.5) > uint255(stor5[arg1].field_1536) * 0.5:
                        mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1536) * 0.5) + 480] = 0
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 480] = uint255(stor5[arg1].field_1792) * 0.5
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 512 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]
                    if ceil32(uint255(stor5[arg1].field_1792) * 0.5) > uint255(stor5[arg1].field_1792) * 0.5:
                        mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 512] = 0
                else:
                    if 31 >= uint255(stor5[arg1].field_1792) * 0.5:
                        mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160] = 256 * stor5[arg1].field_1800
                    else:
                        mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160] = stor5[arg1][7].field_0
                        idx = ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor5[arg1].field_1536) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor5[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor5[arg1].field_1536) * 0.5) > uint255(stor5[arg1].field_1536) * 0.5:
                        mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1536) * 0.5) + 480] = 0
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 480] = uint255(stor5[arg1].field_1792) * 0.5
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 512 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]
                    if ceil32(uint255(stor5[arg1].field_1792) * 0.5) > uint255(stor5[arg1].field_1792) * 0.5:
                        mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 512] = 0
            else:
                if stor5[arg1].field_1792 == stor5[arg1].field_1793 < 32:
                    revert with 0, 34
                if not stor5[arg1].field_1793:
                    if ceil32(uint255(stor5[arg1].field_1536) * 0.5) > uint255(stor5[arg1].field_1536) * 0.5:
                        mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1536) * 0.5) + 480] = 0
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 480] = uint255(stor5[arg1].field_1792) * 0.5
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 512 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]
                    if ceil32(uint255(stor5[arg1].field_1792) * 0.5) > uint255(stor5[arg1].field_1792) * 0.5:
                        mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 512] = 0
                else:
                    if 31 >= stor5[arg1].field_1793:
                        mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160] = 256 * stor5[arg1].field_1800
                    else:
                        mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160] = stor5[arg1][7].field_0
                        idx = ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor5[arg1].field_1536) * 0.5) + stor5[arg1].field_1793 + 128 > idx:
                            mem[idx + 32] = stor5[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor5[arg1].field_1536) * 0.5) > uint255(stor5[arg1].field_1536) * 0.5:
                        mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1536) * 0.5) + 480] = 0
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 480] = uint255(stor5[arg1].field_1792) * 0.5
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 512 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]
                    if ceil32(uint255(stor5[arg1].field_1792) * 0.5) > uint255(stor5[arg1].field_1792) * 0.5:
                        mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 512] = 0
            return bool(stor5[arg1].field_0), 
                   stor5[arg1].field_256,
                   stor5[arg1].field_512,
                   stor5[arg1].field_768,
                   stor5[arg1].field_1024,
                   stor5[arg1].field_1280,
                   Array(len=2 * Mask(256, -1, stor5[arg1].field_1536), data=mem[128 len ceil32(uint255(stor5[arg1].field_1536) * 0.5)], 2 * Mask(256, -1, stor5[arg1].field_1792), mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]),
                   ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 320,
                   stor5[arg1].field_2048
        if stor5[arg1].field_1792 == stor5[arg1].field_1793 < 32:
            revert with 0, 34
        if stor5[arg1].field_1792:
            if stor5[arg1].field_1792 == uint255(stor5[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor5[arg1].field_1792):
                if ceil32(uint255(stor5[arg1].field_1536) * 0.5) > uint255(stor5[arg1].field_1536) * 0.5:
                    mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + ceil32(stor5[arg1].field_1793) + (uint255(stor5[arg1].field_1536) * 0.5) + 480] = 0
                mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + 480] = stor5[arg1].field_1793
                mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + 512 len ceil32(stor5[arg1].field_1793)] = mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(stor5[arg1].field_1793)]
                if ceil32(stor5[arg1].field_1793) > stor5[arg1].field_1793:
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1793 + 512] = 0
            else:
                if 31 >= uint255(stor5[arg1].field_1792) * 0.5:
                    mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160] = 256 * stor5[arg1].field_1800
                else:
                    mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160] = stor5[arg1][7].field_0
                    idx = ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor5[arg1].field_1536) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor5[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor5[arg1].field_1536) * 0.5) > uint255(stor5[arg1].field_1536) * 0.5:
                    mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + ceil32(stor5[arg1].field_1793) + (uint255(stor5[arg1].field_1536) * 0.5) + 480] = 0
                mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + 480] = stor5[arg1].field_1793
                mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + 512 len ceil32(stor5[arg1].field_1793)] = mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(stor5[arg1].field_1793)]
                if ceil32(stor5[arg1].field_1793) > stor5[arg1].field_1793:
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1793 + 512] = 0
        else:
            if stor5[arg1].field_1792 == stor5[arg1].field_1793 < 32:
                revert with 0, 34
            if not stor5[arg1].field_1793:
                if ceil32(uint255(stor5[arg1].field_1536) * 0.5) > uint255(stor5[arg1].field_1536) * 0.5:
                    mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + ceil32(stor5[arg1].field_1793) + (uint255(stor5[arg1].field_1536) * 0.5) + 480] = 0
                mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + 480] = stor5[arg1].field_1793
                mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + 512 len ceil32(stor5[arg1].field_1793)] = mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(stor5[arg1].field_1793)]
                if ceil32(stor5[arg1].field_1793) > stor5[arg1].field_1793:
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1793 + 512] = 0
            else:
                if 31 >= stor5[arg1].field_1793:
                    mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160] = 256 * stor5[arg1].field_1800
                else:
                    mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160] = stor5[arg1][7].field_0
                    idx = ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor5[arg1].field_1536) * 0.5) + stor5[arg1].field_1793 + 128 > idx:
                        mem[idx + 32] = stor5[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor5[arg1].field_1536) * 0.5) > uint255(stor5[arg1].field_1536) * 0.5:
                    mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + ceil32(stor5[arg1].field_1793) + (uint255(stor5[arg1].field_1536) * 0.5) + 480] = 0
                mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + 480] = stor5[arg1].field_1793
                mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + 512 len ceil32(stor5[arg1].field_1793)] = mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(stor5[arg1].field_1793)]
                if ceil32(stor5[arg1].field_1793) > stor5[arg1].field_1793:
                    mem[(2 * ceil32(uint255(stor5[arg1].field_1536) * 0.5)) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1793 + 512] = 0
        return bool(stor5[arg1].field_0), 
               stor5[arg1].field_256,
               stor5[arg1].field_512,
               stor5[arg1].field_768,
               stor5[arg1].field_1024,
               stor5[arg1].field_1280,
               Array(len=2 * Mask(256, -1, stor5[arg1].field_1536), data=mem[128 len ceil32(uint255(stor5[arg1].field_1536) * 0.5)], stor5[arg1].field_1792, mem[ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 160 len ceil32(stor5[arg1].field_1793)]),
               ceil32(uint255(stor5[arg1].field_1536) * 0.5) + 320,
               stor5[arg1].field_2048
    if stor5[arg1].field_1536 == stor5[arg1].field_1537 < 32:
        revert with 0, 34
    if stor5[arg1].field_1536:
        if stor5[arg1].field_1536 == uint255(stor5[arg1].field_1536) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5[arg1].field_1536):
            if 31 >= uint255(stor5[arg1].field_1536) * 0.5:
                mem[128] = 256 * stor5[arg1].field_1544
            else:
                mem[128] = stor5[arg1][6].field_0
                idx = 128
                s = 0
                while (uint255(stor5[arg1].field_1536) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s + 6].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor5[arg1].field_1536 == stor5[arg1].field_1537 < 32:
            revert with 0, 34
        if stor5[arg1].field_1537:
            if 31 >= stor5[arg1].field_1537:
                mem[128] = 256 * stor5[arg1].field_1544
            else:
                mem[128] = stor5[arg1][6].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_1537 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s + 6].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor5[arg1].field_1792:
        if stor5[arg1].field_1792 == uint255(stor5[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if stor5[arg1].field_1792:
            if stor5[arg1].field_1792 == uint255(stor5[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor5[arg1].field_1792):
                if ceil32(stor5[arg1].field_1537) > stor5[arg1].field_1537:
                    mem[ceil32(stor5[arg1].field_1537) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + stor5[arg1].field_1537 + 480] = 0
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 480] = uint255(stor5[arg1].field_1792) * 0.5
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 512 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)] = mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]
                if ceil32(uint255(stor5[arg1].field_1792) * 0.5) > uint255(stor5[arg1].field_1792) * 0.5:
                    mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 512] = 0
            else:
                if 31 >= uint255(stor5[arg1].field_1792) * 0.5:
                    mem[ceil32(stor5[arg1].field_1537) + 160] = 256 * stor5[arg1].field_1800
                else:
                    mem[ceil32(stor5[arg1].field_1537) + 160] = stor5[arg1][7].field_0
                    idx = ceil32(stor5[arg1].field_1537) + 160
                    s = 0
                    while ceil32(stor5[arg1].field_1537) + (uint255(stor5[arg1].field_1792) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor5[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor5[arg1].field_1537) > stor5[arg1].field_1537:
                    mem[ceil32(stor5[arg1].field_1537) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + stor5[arg1].field_1537 + 480] = 0
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 480] = uint255(stor5[arg1].field_1792) * 0.5
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 512 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)] = mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]
                if ceil32(uint255(stor5[arg1].field_1792) * 0.5) > uint255(stor5[arg1].field_1792) * 0.5:
                    mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 512] = 0
        else:
            if stor5[arg1].field_1792 == stor5[arg1].field_1793 < 32:
                revert with 0, 34
            if not stor5[arg1].field_1793:
                if ceil32(stor5[arg1].field_1537) > stor5[arg1].field_1537:
                    mem[ceil32(stor5[arg1].field_1537) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + stor5[arg1].field_1537 + 480] = 0
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 480] = uint255(stor5[arg1].field_1792) * 0.5
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 512 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)] = mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]
                if ceil32(uint255(stor5[arg1].field_1792) * 0.5) > uint255(stor5[arg1].field_1792) * 0.5:
                    mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 512] = 0
            else:
                if 31 >= stor5[arg1].field_1793:
                    mem[ceil32(stor5[arg1].field_1537) + 160] = 256 * stor5[arg1].field_1800
                else:
                    mem[ceil32(stor5[arg1].field_1537) + 160] = stor5[arg1][7].field_0
                    idx = ceil32(stor5[arg1].field_1537) + 160
                    s = 0
                    while ceil32(stor5[arg1].field_1537) + stor5[arg1].field_1793 + 128 > idx:
                        mem[idx + 32] = stor5[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor5[arg1].field_1537) > stor5[arg1].field_1537:
                    mem[ceil32(stor5[arg1].field_1537) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + stor5[arg1].field_1537 + 480] = 0
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 480] = uint255(stor5[arg1].field_1792) * 0.5
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + 512 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)] = mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]
                if ceil32(uint255(stor5[arg1].field_1792) * 0.5) > uint255(stor5[arg1].field_1792) * 0.5:
                    mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(uint255(stor5[arg1].field_1792) * 0.5) + (uint255(stor5[arg1].field_1792) * 0.5) + 512] = 0
        return bool(stor5[arg1].field_0), 
               stor5[arg1].field_256,
               stor5[arg1].field_512,
               stor5[arg1].field_768,
               stor5[arg1].field_1024,
               stor5[arg1].field_1280,
               Array(len=stor5[arg1].field_1536, data=mem[128 len ceil32(stor5[arg1].field_1537)], 2 * Mask(256, -1, stor5[arg1].field_1792), mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(uint255(stor5[arg1].field_1792) * 0.5)]),
               ceil32(stor5[arg1].field_1537) + 320,
               stor5[arg1].field_2048
    if stor5[arg1].field_1792 == stor5[arg1].field_1793 < 32:
        revert with 0, 34
    if stor5[arg1].field_1792:
        if stor5[arg1].field_1792 == uint255(stor5[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor5[arg1].field_1792):
            if ceil32(stor5[arg1].field_1537) > stor5[arg1].field_1537:
                mem[ceil32(stor5[arg1].field_1537) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1537 + 480] = 0
            mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + 480] = stor5[arg1].field_1793
            mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + 512 len ceil32(stor5[arg1].field_1793)] = mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(stor5[arg1].field_1793)]
            if ceil32(stor5[arg1].field_1793) > stor5[arg1].field_1793:
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1793 + 512] = 0
        else:
            if 31 >= uint255(stor5[arg1].field_1792) * 0.5:
                mem[ceil32(stor5[arg1].field_1537) + 160] = 256 * stor5[arg1].field_1800
            else:
                mem[ceil32(stor5[arg1].field_1537) + 160] = stor5[arg1][7].field_0
                idx = ceil32(stor5[arg1].field_1537) + 160
                s = 0
                while ceil32(stor5[arg1].field_1537) + (uint255(stor5[arg1].field_1792) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor5[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor5[arg1].field_1537) > stor5[arg1].field_1537:
                mem[ceil32(stor5[arg1].field_1537) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1537 + 480] = 0
            mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + 480] = stor5[arg1].field_1793
            mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + 512 len ceil32(stor5[arg1].field_1793)] = mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(stor5[arg1].field_1793)]
            if ceil32(stor5[arg1].field_1793) > stor5[arg1].field_1793:
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1793 + 512] = 0
    else:
        if stor5[arg1].field_1792 == stor5[arg1].field_1793 < 32:
            revert with 0, 34
        if not stor5[arg1].field_1793:
            if ceil32(stor5[arg1].field_1537) > stor5[arg1].field_1537:
                mem[ceil32(stor5[arg1].field_1537) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1537 + 480] = 0
            mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + 480] = stor5[arg1].field_1793
            mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + 512 len ceil32(stor5[arg1].field_1793)] = mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(stor5[arg1].field_1793)]
            if ceil32(stor5[arg1].field_1793) > stor5[arg1].field_1793:
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1793 + 512] = 0
        else:
            if 31 >= stor5[arg1].field_1793:
                mem[ceil32(stor5[arg1].field_1537) + 160] = 256 * stor5[arg1].field_1800
            else:
                mem[ceil32(stor5[arg1].field_1537) + 160] = stor5[arg1][7].field_0
                idx = ceil32(stor5[arg1].field_1537) + 160
                s = 0
                while ceil32(stor5[arg1].field_1537) + stor5[arg1].field_1793 + 128 > idx:
                    mem[idx + 32] = stor5[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor5[arg1].field_1537) > stor5[arg1].field_1537:
                mem[ceil32(stor5[arg1].field_1537) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1537 + 480] = 0
            mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + 480] = stor5[arg1].field_1793
            mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + 512 len ceil32(stor5[arg1].field_1793)] = mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(stor5[arg1].field_1793)]
            if ceil32(stor5[arg1].field_1793) > stor5[arg1].field_1793:
                mem[(2 * ceil32(stor5[arg1].field_1537)) + ceil32(stor5[arg1].field_1793) + stor5[arg1].field_1793 + 512] = 0
    return bool(stor5[arg1].field_0), 
           stor5[arg1].field_256,
           stor5[arg1].field_512,
           stor5[arg1].field_768,
           stor5[arg1].field_1024,
           stor5[arg1].field_1280,
           Array(len=stor5[arg1].field_1536, data=mem[128 len ceil32(stor5[arg1].field_1537)], stor5[arg1].field_1792, mem[ceil32(stor5[arg1].field_1537) + 160 len ceil32(stor5[arg1].field_1793)]),
           ceil32(stor5[arg1].field_1537) + 320,
           stor5[arg1].field_2048
}



}
