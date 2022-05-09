contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c8ab4be(?)
#  - sub_8856b48d(?)
#
const balanceOf = eth.balance(this.address)


address _gubAddyAddress;
uint256 contractBalance;
uint256 numberOfBets;
array of uint256 betIDRec;
address stor4;
mapping of struct stor5;
array of struct sub_d6ca6c4c;
array of struct winners;
mapping of struct playerDetails;
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
    return address(playerDetails[arg1][arg2].field_0), playerDetails[arg1][arg2].field_256
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
           address(sub_d6ca6c4c[arg1][arg2].field_768)
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
    return winners[arg1][arg2].field_0, address(winners[arg1][arg2].field_256)
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
    if bool(stor5[arg1].field_2304):
        if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
            revert with 'NH{q', 34
        if bool(stor5[arg1].field_2304):
            if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
                revert with 'NH{q', 34
            if uint255(stor5[arg1].field_2305):
                if 31 >= uint255(stor5[arg1].field_2305):
                    mem[128] = 256 * Mask(248, 0, stor5[arg1].field_2312)
                else:
                    mem[128] = stor5[arg1][9].field_0
                    idx = 128
                    s = 0
                    while uint255(stor5[arg1].field_2305) + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
                revert with 'NH{q', 34
            if stor5[arg1].field_2305 % 128:
                if 31 >= stor5[arg1].field_2305 % 128:
                    mem[128] = 256 * Mask(248, 0, stor5[arg1].field_2312)
                else:
                    mem[128] = stor5[arg1][9].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_2305 % 128 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s + 9].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return bool(uint8(stor5[arg1].field_0)), 
               stor5[arg1].field_256,
               stor5[arg1].field_512,
               stor5[arg1].field_768,
               stor5[arg1].field_1024,
               stor5[arg1].field_1280,
               stor5[arg1].field_1536,
               stor5[arg1].field_1792,
               stor5[arg1].field_2048,
               Array(len=2 * Mask(256, -1, uint255(stor5[arg1].field_2305)), data=mem[128 len ceil32(uint255(stor5[arg1].field_2305))])
    if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor5[arg1].field_2304):
        if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
            revert with 'NH{q', 34
        if uint255(stor5[arg1].field_2305):
            if 31 >= uint255(stor5[arg1].field_2305):
                mem[128] = 256 * Mask(248, 0, stor5[arg1].field_2312)
            else:
                mem[128] = stor5[arg1][9].field_0
                idx = 128
                s = 0
                while uint255(stor5[arg1].field_2305) + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s + 9].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
            revert with 'NH{q', 34
        if stor5[arg1].field_2305 % 128:
            if 31 >= stor5[arg1].field_2305 % 128:
                mem[128] = 256 * Mask(248, 0, stor5[arg1].field_2312)
            else:
                mem[128] = stor5[arg1][9].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_2305 % 128 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s + 9].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(uint8(stor5[arg1].field_0)), 
           stor5[arg1].field_256,
           stor5[arg1].field_512,
           stor5[arg1].field_768,
           stor5[arg1].field_1024,
           stor5[arg1].field_1280,
           stor5[arg1].field_1536,
           stor5[arg1].field_1792,
           stor5[arg1].field_2048,
           Array(len=stor5[arg1].field_2304 % 128, data=mem[128 len ceil32(stor5[arg1].field_2305 % 128)])
}

function sub_f46d5fcf(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    if address(playerDetails[arg1][arg2].field_0) != msg.sender:
        revert with 0, 'Sender not Authorized'
    if arg3 != playerDetails[arg1][arg2].field_256:
        revert with 0, 'Oops you have the wrong secret'
    if stor5[arg1].field_768 >= 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call refund on an active bet'
    if address(arg4) == stor4:
        if var148003 < 1:
            revert with 'NH{q', 17
        if var152002 > var152001:
        if var154001 >= sub_d6ca6c4c[arg1].field_0:
            revert with 'NH{q', 50
        if stor[(4 * var156001) + sha3(var156002)] != arg2:
            if var164001 == -1:
                revert with 'NH{q', 17
            # nil
        else:
            if not var158001:
                if var128003 < 1:
                    revert with 'NH{q', 17
                if var132002 <= var132001:
                    # nil
                else:
                    contractBalance = eth.balance(this.address)
                    emit 0x3c314cec: arg2, 1, arg1
                    uint8(stor5[arg1].field_0) = 0
                    stor5[arg1].field_256 = 0
                    stor5[arg1].field_512 = 0
                    stor5[arg1].field_768 = 0
                    stor5[arg1].field_1024 = 0
                    stor5[arg1].field_1280 = 0
                    stor5[arg1].field_1536 = 0
                    stor5[arg1].field_1792 = 0
                    stor5[arg1].field_2048 = 0
                    if bool(stor5[arg1].field_2304):
                        if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
                            revert with 'NH{q', 34
                        stor5[arg1].field_2304 = 0
                        if 31 >= uint255(stor5[arg1].field_2305):
                            sub_d6ca6c4c[arg1].field_0 = 0
                        # nil
                    else:
                        if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
                            revert with 'NH{q', 34
                        stor5[arg1].field_2304 = 0
                        if 31 >= stor5[arg1].field_2305 % 128:
                            sub_d6ca6c4c[arg1].field_0 = 0
                        # nil
            else:
                if var161001:
                    if var131003 < 1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    if var161002 >= sub_d6ca6c4c[arg1].field_0:
                        revert with 'NH{q', 50
                    if stor5[arg1].field_1280 < sub_d6ca6c4c[arg1][var161002].field_256:
                        revert with 'NH{q', 17
                    stor5[arg1].field_1280 -= sub_d6ca6c4c[arg1][var161002].field_256
                    if var161002 >= sub_d6ca6c4c[arg1].field_0:
                        revert with 'NH{q', 50
                    if var161002 >= sub_d6ca6c4c[arg1].field_0:
                        revert with 'NH{q', 50
                    if address(arg4) == stor4:
                        call address(sub_d6ca6c4c[arg1][var161002].field_768) with:
                           value sub_d6ca6c4c[arg1][var161002].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor5[arg1].field_768 < 1:
                            revert with 'NH{q', 17
                        stor5[arg1].field_768--
                        contractBalance = eth.balance(this.address)
                        emit 0x3c314cec: arg2, 1, arg1
                        if var161002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var161002].field_0 = 0
                        sub_d6ca6c4c[arg1][var161002].field_256 = 0
                        sub_d6ca6c4c[arg1][var161002].field_512 = 0
                        address(sub_d6ca6c4c[arg1][var161002].field_768) = 0
                        address(playerDetails[arg1][arg2].field_0) = 0
                        playerDetails[arg1][arg2].field_256 = 0
                        if sub_d6ca6c4c[arg1].field_0 < 1:
                            revert with 'NH{q', 17
                        if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if var161002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var161002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                        sub_d6ca6c4c[arg1][var161002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                        sub_d6ca6c4c[arg1][var161002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                        address(sub_d6ca6c4c[arg1][var161002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                        if not sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 49
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                        address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                        sub_d6ca6c4c[arg1].field_0--
                        if var134001 == -1:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        require ext_code.size(address(arg4))
                        call address(arg4).transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), address(sub_d6ca6c4c[arg1][var161002].field_768), sub_d6ca6c4c[arg1][var161002].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor5[arg1].field_768 < 1:
                            revert with 'NH{q', 17
                        stor5[arg1].field_768--
                        contractBalance = eth.balance(this.address)
                        emit 0x3c314cec: arg2, 1, arg1
                        if var161002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var161002].field_0 = 0
                        sub_d6ca6c4c[arg1][var161002].field_256 = 0
                        sub_d6ca6c4c[arg1][var161002].field_512 = 0
                        address(sub_d6ca6c4c[arg1][var161002].field_768) = 0
                        address(playerDetails[arg1][arg2].field_0) = 0
                        playerDetails[arg1][arg2].field_256 = 0
                        if sub_d6ca6c4c[arg1].field_0 < 1:
                            revert with 'NH{q', 17
                        if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if var161002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var161002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                        sub_d6ca6c4c[arg1][var161002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                        sub_d6ca6c4c[arg1][var161002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                        address(sub_d6ca6c4c[arg1][var161002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                        if not sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 49
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                        address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                        sub_d6ca6c4c[arg1].field_0--
                        if var167001 == -1:
                            revert with 'NH{q', 17
                        # nil
    else:
        require ext_code.size(address(arg4))
        staticcall address(arg4).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg4))
        staticcall address(arg4).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if var200003 < 1:
                revert with 'NH{q', 17
            if var204002 > var204001:
            if var206001 >= sub_d6ca6c4c[arg1].field_0:
                revert with 'NH{q', 50
            if stor[(4 * var208001) + sha3(var208002)] != arg2:
                if var216001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                if not var210001:
                    if var180003 < 1:
                        revert with 'NH{q', 17
                    if var184002 <= var184001:
                        # nil
                    else:
                        contractBalance = eth.balance(this.address)
                        emit 0x3c314cec: arg2, 1, arg1
                        uint8(stor5[arg1].field_0) = 0
                        stor5[arg1].field_256 = 0
                        stor5[arg1].field_512 = 0
                        stor5[arg1].field_768 = 0
                        stor5[arg1].field_1024 = 0
                        stor5[arg1].field_1280 = 0
                        stor5[arg1].field_1536 = 0
                        stor5[arg1].field_1792 = 0
                        stor5[arg1].field_2048 = 0
                        if bool(stor5[arg1].field_2304):
                            if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
                                revert with 'NH{q', 34
                            stor5[arg1].field_2304 = 0
                            if 31 >= uint255(stor5[arg1].field_2305):
                                sub_d6ca6c4c[arg1].field_0 = 0
                            # nil
                        else:
                            if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
                                revert with 'NH{q', 34
                            stor5[arg1].field_2304 = 0
                            if 31 >= stor5[arg1].field_2305 % 128:
                                sub_d6ca6c4c[arg1].field_0 = 0
                            # nil
                else:
                    if var213001:
                        if var183003 < 1:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if var213002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if stor5[arg1].field_1280 < sub_d6ca6c4c[arg1][var213002].field_256:
                            revert with 'NH{q', 17
                        stor5[arg1].field_1280 -= sub_d6ca6c4c[arg1][var213002].field_256
                        if var213002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if var213002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if address(arg4) == stor4:
                            call address(sub_d6ca6c4c[arg1][var213002].field_768) with:
                               value sub_d6ca6c4c[arg1][var213002].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor5[arg1].field_768 < 1:
                                revert with 'NH{q', 17
                            stor5[arg1].field_768--
                            contractBalance = eth.balance(this.address)
                            emit 0x3c314cec: arg2, 1, arg1
                            if var213002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var213002].field_0 = 0
                            sub_d6ca6c4c[arg1][var213002].field_256 = 0
                            sub_d6ca6c4c[arg1][var213002].field_512 = 0
                            address(sub_d6ca6c4c[arg1][var213002].field_768) = 0
                            address(playerDetails[arg1][arg2].field_0) = 0
                            playerDetails[arg1][arg2].field_256 = 0
                            if sub_d6ca6c4c[arg1].field_0 < 1:
                                revert with 'NH{q', 17
                            if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var213002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var213002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                            sub_d6ca6c4c[arg1][var213002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                            sub_d6ca6c4c[arg1][var213002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                            address(sub_d6ca6c4c[arg1][var213002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                            if not sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 49
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                            address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                            sub_d6ca6c4c[arg1].field_0--
                            if var186001 == -1:
                                revert with 'NH{q', 17
                            # nil
                        else:
                            require ext_code.size(address(arg4))
                            call address(arg4).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), address(sub_d6ca6c4c[arg1][var213002].field_768), sub_d6ca6c4c[arg1][var213002].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if stor5[arg1].field_768 < 1:
                                revert with 'NH{q', 17
                            stor5[arg1].field_768--
                            contractBalance = eth.balance(this.address)
                            emit 0x3c314cec: arg2, 1, arg1
                            if var213002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var213002].field_0 = 0
                            sub_d6ca6c4c[arg1][var213002].field_256 = 0
                            sub_d6ca6c4c[arg1][var213002].field_512 = 0
                            address(sub_d6ca6c4c[arg1][var213002].field_768) = 0
                            address(playerDetails[arg1][arg2].field_0) = 0
                            playerDetails[arg1][arg2].field_256 = 0
                            if sub_d6ca6c4c[arg1].field_0 < 1:
                                revert with 'NH{q', 17
                            if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var213002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var213002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                            sub_d6ca6c4c[arg1][var213002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                            sub_d6ca6c4c[arg1][var213002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                            address(sub_d6ca6c4c[arg1][var213002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                            if not sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 49
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                            address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                            sub_d6ca6c4c[arg1].field_0--
                            if var219001 == -1:
                                revert with 'NH{q', 17
                            # nil
        else:
            require ext_code.size(address(arg4))
            staticcall address(arg4).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(arg4))
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if var247003 < 1:
                revert with 'NH{q', 17
            if var251002 > var251001:
            if var253001 >= sub_d6ca6c4c[arg1].field_0:
                revert with 'NH{q', 50
            if stor[(4 * var255001) + sha3(var255002)] != arg2:
                if var263001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                if not var257001:
                    if var227003 < 1:
                        revert with 'NH{q', 17
                    if var231002 <= var231001:
                        # nil
                    else:
                        contractBalance = eth.balance(this.address)
                        emit 0x3c314cec: arg2, 1, arg1
                        uint8(stor5[arg1].field_0) = 0
                        stor5[arg1].field_256 = 0
                        stor5[arg1].field_512 = 0
                        stor5[arg1].field_768 = 0
                        stor5[arg1].field_1024 = 0
                        stor5[arg1].field_1280 = 0
                        stor5[arg1].field_1536 = 0
                        stor5[arg1].field_1792 = 0
                        stor5[arg1].field_2048 = 0
                        if bool(stor5[arg1].field_2304):
                            if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
                                revert with 'NH{q', 34
                            stor5[arg1].field_2304 = 0
                            if 31 >= uint255(stor5[arg1].field_2305):
                                sub_d6ca6c4c[arg1].field_0 = 0
                            # nil
                        else:
                            if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
                                revert with 'NH{q', 34
                            stor5[arg1].field_2304 = 0
                            if 31 >= stor5[arg1].field_2305 % 128:
                                sub_d6ca6c4c[arg1].field_0 = 0
                            # nil
                else:
                    if var260001:
                        if var230003 < 1:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if var260002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if stor5[arg1].field_1280 < sub_d6ca6c4c[arg1][var260002].field_256:
                            revert with 'NH{q', 17
                        stor5[arg1].field_1280 -= sub_d6ca6c4c[arg1][var260002].field_256
                        if var260002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if var260002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if address(arg4) == stor4:
                            call address(sub_d6ca6c4c[arg1][var260002].field_768) with:
                               value sub_d6ca6c4c[arg1][var260002].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor5[arg1].field_768 < 1:
                                revert with 'NH{q', 17
                            stor5[arg1].field_768--
                            contractBalance = eth.balance(this.address)
                            emit 0x3c314cec: arg2, 1, arg1
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_0 = 0
                            sub_d6ca6c4c[arg1][var260002].field_256 = 0
                            sub_d6ca6c4c[arg1][var260002].field_512 = 0
                            address(sub_d6ca6c4c[arg1][var260002].field_768) = 0
                            address(playerDetails[arg1][arg2].field_0) = 0
                            playerDetails[arg1][arg2].field_256 = 0
                            if sub_d6ca6c4c[arg1].field_0 < 1:
                                revert with 'NH{q', 17
                            if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                            sub_d6ca6c4c[arg1][var260002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                            sub_d6ca6c4c[arg1][var260002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                            address(sub_d6ca6c4c[arg1][var260002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                            if not sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 49
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                            address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                            sub_d6ca6c4c[arg1].field_0--
                            if var233001 == -1:
                                revert with 'NH{q', 17
                            # nil
                        else:
                            require ext_code.size(address(arg4))
                            call address(arg4).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), address(sub_d6ca6c4c[arg1][var260002].field_768), sub_d6ca6c4c[arg1][var260002].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if stor5[arg1].field_768 < 1:
                                revert with 'NH{q', 17
                            stor5[arg1].field_768--
                            contractBalance = eth.balance(this.address)
                            emit 0x3c314cec: arg2, 1, arg1
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_0 = 0
                            sub_d6ca6c4c[arg1][var260002].field_256 = 0
                            sub_d6ca6c4c[arg1][var260002].field_512 = 0
                            address(sub_d6ca6c4c[arg1][var260002].field_768) = 0
                            address(playerDetails[arg1][arg2].field_0) = 0
                            playerDetails[arg1][arg2].field_256 = 0
                            if sub_d6ca6c4c[arg1].field_0 < 1:
                                revert with 'NH{q', 17
                            if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                            sub_d6ca6c4c[arg1][var260002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                            sub_d6ca6c4c[arg1][var260002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                            address(sub_d6ca6c4c[arg1][var260002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                            if not sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 49
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                            address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                            sub_d6ca6c4c[arg1].field_0--
                            if var266001 == -1:
                                revert with 'NH{q', 17
                            # nil
}

function sub_25e0f6d9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if _gubAddyAddress != msg.sender:
        revert with 0, 'Sender not Authorized'
    if address(arg3) == stor4:
        if var195003 < 1:
            revert with 'NH{q', 17
        if var199002 > var199001:
        if var201001 >= sub_d6ca6c4c[arg1].field_0:
            revert with 'NH{q', 50
        if stor[(4 * var203001) + sha3(var203002)] != arg2:
            if var211001 == -1:
                revert with 'NH{q', 17
            # nil
        else:
            if not var205001:
                if var179003 < 1:
                    revert with 'NH{q', 17
                if var183002 <= var183001:
                    # nil
                else:
                    contractBalance = eth.balance(this.address)
                    emit 0x820f57ee: 1, arg1, arg2
                    uint8(stor5[arg1].field_0) = 0
                    stor5[arg1].field_256 = 0
                    stor5[arg1].field_512 = 0
                    stor5[arg1].field_768 = 0
                    stor5[arg1].field_1024 = 0
                    stor5[arg1].field_1280 = 0
                    stor5[arg1].field_1536 = 0
                    stor5[arg1].field_1792 = 0
                    stor5[arg1].field_2048 = 0
                    if bool(stor5[arg1].field_2304):
                        if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
                            revert with 'NH{q', 34
                        stor5[arg1].field_2304 = 0
                        if 31 >= uint255(stor5[arg1].field_2305):
                            sub_d6ca6c4c[arg1].field_0 = 0
                        # nil
                    else:
                        if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
                            revert with 'NH{q', 34
                        stor5[arg1].field_2304 = 0
                        if 31 >= stor5[arg1].field_2305 % 128:
                            sub_d6ca6c4c[arg1].field_0 = 0
                        # nil
            else:
                if var208001:
                    if var182003 < 1:
                        revert with 'NH{q', 17
                    # nil
                else:
                    if var208002 >= sub_d6ca6c4c[arg1].field_0:
                        revert with 'NH{q', 50
                    if stor5[arg1].field_1280 < sub_d6ca6c4c[arg1][var208002].field_256:
                        revert with 'NH{q', 17
                    stor5[arg1].field_1280 -= sub_d6ca6c4c[arg1][var208002].field_256
                    if var208002 >= sub_d6ca6c4c[arg1].field_0:
                        revert with 'NH{q', 50
                    if sub_d6ca6c4c[arg1][var208002].field_256 and 2 > -1 / sub_d6ca6c4c[arg1][var208002].field_256:
                        revert with 'NH{q', 17
                    if address(arg3) == stor4:
                        call _gubAddyAddress with:
                           value 2 * sub_d6ca6c4c[arg1][var208002].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if sub_d6ca6c4c[arg1][var208002].field_256 < 2 * sub_d6ca6c4c[arg1][var208002].field_256 / 100:
                            revert with 'NH{q', 17
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var208002].field_256 -= 2 * sub_d6ca6c4c[arg1][var208002].field_256 / 100
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        call address(sub_d6ca6c4c[arg1][var208002].field_768) with:
                           value sub_d6ca6c4c[arg1][var208002].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor5[arg1].field_768 < 1:
                            revert with 'NH{q', 17
                        stor5[arg1].field_768--
                        contractBalance = eth.balance(this.address)
                        emit 0x820f57ee: 1, arg1, arg2
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var208002].field_0 = 0
                        sub_d6ca6c4c[arg1][var208002].field_256 = 0
                        sub_d6ca6c4c[arg1][var208002].field_512 = 0
                        address(sub_d6ca6c4c[arg1][var208002].field_768) = 0
                        if sub_d6ca6c4c[arg1].field_0 < 1:
                            revert with 'NH{q', 17
                        if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var208002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                        sub_d6ca6c4c[arg1][var208002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                        sub_d6ca6c4c[arg1][var208002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                        address(sub_d6ca6c4c[arg1][var208002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                        if not sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 49
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                        address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                        sub_d6ca6c4c[arg1].field_0--
                        if var148001 == -1:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        require ext_code.size(address(arg3))
                        call address(arg3).transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), _gubAddyAddress, 2 * sub_d6ca6c4c[arg1][var208002].field_256 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if sub_d6ca6c4c[arg1][var208002].field_256 < 2 * sub_d6ca6c4c[arg1][var208002].field_256 / 100:
                            revert with 'NH{q', 17
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var208002].field_256 -= 2 * sub_d6ca6c4c[arg1][var208002].field_256 / 100
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        require ext_code.size(address(arg3))
                        call address(arg3).transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), address(sub_d6ca6c4c[arg1][var208002].field_768), sub_d6ca6c4c[arg1][var208002].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor5[arg1].field_768 < 1:
                            revert with 'NH{q', 17
                        stor5[arg1].field_768--
                        contractBalance = eth.balance(this.address)
                        emit 0x820f57ee: 1, arg1, arg2
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var208002].field_0 = 0
                        sub_d6ca6c4c[arg1][var208002].field_256 = 0
                        sub_d6ca6c4c[arg1][var208002].field_512 = 0
                        address(sub_d6ca6c4c[arg1][var208002].field_768) = 0
                        if sub_d6ca6c4c[arg1].field_0 < 1:
                            revert with 'NH{q', 17
                        if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if var208002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        sub_d6ca6c4c[arg1][var208002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                        sub_d6ca6c4c[arg1][var208002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                        sub_d6ca6c4c[arg1][var208002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                        address(sub_d6ca6c4c[arg1][var208002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                        if not sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 49
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                        sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                        address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                        sub_d6ca6c4c[arg1].field_0--
                        if var214001 == -1:
                            revert with 'NH{q', 17
                        # nil
    else:
        require ext_code.size(address(arg3))
        staticcall address(arg3).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg3))
        staticcall address(arg3).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if var247003 < 1:
                revert with 'NH{q', 17
            if var251002 > var251001:
            if var253001 >= sub_d6ca6c4c[arg1].field_0:
                revert with 'NH{q', 50
            if stor[(4 * var255001) + sha3(var255002)] != arg2:
                if var263001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                if not var257001:
                    if var231003 < 1:
                        revert with 'NH{q', 17
                    if var235002 <= var235001:
                        # nil
                    else:
                        contractBalance = eth.balance(this.address)
                        emit 0x820f57ee: 1, arg1, arg2
                        uint8(stor5[arg1].field_0) = 0
                        stor5[arg1].field_256 = 0
                        stor5[arg1].field_512 = 0
                        stor5[arg1].field_768 = 0
                        stor5[arg1].field_1024 = 0
                        stor5[arg1].field_1280 = 0
                        stor5[arg1].field_1536 = 0
                        stor5[arg1].field_1792 = 0
                        stor5[arg1].field_2048 = 0
                        if bool(stor5[arg1].field_2304):
                            if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
                                revert with 'NH{q', 34
                            stor5[arg1].field_2304 = 0
                            if 31 >= uint255(stor5[arg1].field_2305):
                                sub_d6ca6c4c[arg1].field_0 = 0
                            # nil
                        else:
                            if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
                                revert with 'NH{q', 34
                            stor5[arg1].field_2304 = 0
                            if 31 >= stor5[arg1].field_2305 % 128:
                                sub_d6ca6c4c[arg1].field_0 = 0
                            # nil
                else:
                    if var260001:
                        if var234003 < 1:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if var260002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if stor5[arg1].field_1280 < sub_d6ca6c4c[arg1][var260002].field_256:
                            revert with 'NH{q', 17
                        stor5[arg1].field_1280 -= sub_d6ca6c4c[arg1][var260002].field_256
                        if var260002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if sub_d6ca6c4c[arg1][var260002].field_256 and 2 > -1 / sub_d6ca6c4c[arg1][var260002].field_256:
                            revert with 'NH{q', 17
                        if address(arg3) == stor4:
                            call _gubAddyAddress with:
                               value 2 * sub_d6ca6c4c[arg1][var260002].field_256 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if sub_d6ca6c4c[arg1][var260002].field_256 < 2 * sub_d6ca6c4c[arg1][var260002].field_256 / 100:
                                revert with 'NH{q', 17
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_256 -= 2 * sub_d6ca6c4c[arg1][var260002].field_256 / 100
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            call address(sub_d6ca6c4c[arg1][var260002].field_768) with:
                               value sub_d6ca6c4c[arg1][var260002].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor5[arg1].field_768 < 1:
                                revert with 'NH{q', 17
                            stor5[arg1].field_768--
                            contractBalance = eth.balance(this.address)
                            emit 0x820f57ee: 1, arg1, arg2
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_0 = 0
                            sub_d6ca6c4c[arg1][var260002].field_256 = 0
                            sub_d6ca6c4c[arg1][var260002].field_512 = 0
                            address(sub_d6ca6c4c[arg1][var260002].field_768) = 0
                            if sub_d6ca6c4c[arg1].field_0 < 1:
                                revert with 'NH{q', 17
                            if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                            sub_d6ca6c4c[arg1][var260002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                            sub_d6ca6c4c[arg1][var260002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                            address(sub_d6ca6c4c[arg1][var260002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                            if not sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 49
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                            address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                            sub_d6ca6c4c[arg1].field_0--
                            if var200001 == -1:
                                revert with 'NH{q', 17
                            # nil
                        else:
                            require ext_code.size(address(arg3))
                            call address(arg3).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), _gubAddyAddress, 2 * sub_d6ca6c4c[arg1][var260002].field_256 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if sub_d6ca6c4c[arg1][var260002].field_256 < 2 * sub_d6ca6c4c[arg1][var260002].field_256 / 100:
                                revert with 'NH{q', 17
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_256 -= 2 * sub_d6ca6c4c[arg1][var260002].field_256 / 100
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            require ext_code.size(address(arg3))
                            call address(arg3).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), address(sub_d6ca6c4c[arg1][var260002].field_768), sub_d6ca6c4c[arg1][var260002].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if stor5[arg1].field_768 < 1:
                                revert with 'NH{q', 17
                            stor5[arg1].field_768--
                            contractBalance = eth.balance(this.address)
                            emit 0x820f57ee: 1, arg1, arg2
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_0 = 0
                            sub_d6ca6c4c[arg1][var260002].field_256 = 0
                            sub_d6ca6c4c[arg1][var260002].field_512 = 0
                            address(sub_d6ca6c4c[arg1][var260002].field_768) = 0
                            if sub_d6ca6c4c[arg1].field_0 < 1:
                                revert with 'NH{q', 17
                            if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var260002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var260002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                            sub_d6ca6c4c[arg1][var260002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                            sub_d6ca6c4c[arg1][var260002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                            address(sub_d6ca6c4c[arg1][var260002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                            if not sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 49
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                            address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                            sub_d6ca6c4c[arg1].field_0--
                            if var266001 == -1:
                                revert with 'NH{q', 17
                            # nil
        else:
            require ext_code.size(address(arg3))
            staticcall address(arg3).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if var294003 < 1:
                revert with 'NH{q', 17
            if var298002 > var298001:
            if var300001 >= sub_d6ca6c4c[arg1].field_0:
                revert with 'NH{q', 50
            if stor[(4 * var302001) + sha3(var302002)] != arg2:
                if var310001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                if not var304001:
                    if var278003 < 1:
                        revert with 'NH{q', 17
                    if var282002 <= var282001:
                        # nil
                    else:
                        contractBalance = eth.balance(this.address)
                        emit 0x820f57ee: 1, arg1, arg2
                        uint8(stor5[arg1].field_0) = 0
                        stor5[arg1].field_256 = 0
                        stor5[arg1].field_512 = 0
                        stor5[arg1].field_768 = 0
                        stor5[arg1].field_1024 = 0
                        stor5[arg1].field_1280 = 0
                        stor5[arg1].field_1536 = 0
                        stor5[arg1].field_1792 = 0
                        stor5[arg1].field_2048 = 0
                        if bool(stor5[arg1].field_2304):
                            if bool(stor5[arg1].field_2304) == uint255(stor5[arg1].field_2305) < 32:
                                revert with 'NH{q', 34
                            stor5[arg1].field_2304 = 0
                            if 31 >= uint255(stor5[arg1].field_2305):
                                sub_d6ca6c4c[arg1].field_0 = 0
                            # nil
                        else:
                            if bool(stor5[arg1].field_2304) == stor5[arg1].field_2305 % 128 < 32:
                                revert with 'NH{q', 34
                            stor5[arg1].field_2304 = 0
                            if 31 >= stor5[arg1].field_2305 % 128:
                                sub_d6ca6c4c[arg1].field_0 = 0
                            # nil
                else:
                    if var307001:
                        if var281003 < 1:
                            revert with 'NH{q', 17
                        # nil
                    else:
                        if var307002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if stor5[arg1].field_1280 < sub_d6ca6c4c[arg1][var307002].field_256:
                            revert with 'NH{q', 17
                        stor5[arg1].field_1280 -= sub_d6ca6c4c[arg1][var307002].field_256
                        if var307002 >= sub_d6ca6c4c[arg1].field_0:
                            revert with 'NH{q', 50
                        if sub_d6ca6c4c[arg1][var307002].field_256 and 2 > -1 / sub_d6ca6c4c[arg1][var307002].field_256:
                            revert with 'NH{q', 17
                        if address(arg3) == stor4:
                            call _gubAddyAddress with:
                               value 2 * sub_d6ca6c4c[arg1][var307002].field_256 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if sub_d6ca6c4c[arg1][var307002].field_256 < 2 * sub_d6ca6c4c[arg1][var307002].field_256 / 100:
                                revert with 'NH{q', 17
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var307002].field_256 -= 2 * sub_d6ca6c4c[arg1][var307002].field_256 / 100
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            call address(sub_d6ca6c4c[arg1][var307002].field_768) with:
                               value sub_d6ca6c4c[arg1][var307002].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor5[arg1].field_768 < 1:
                                revert with 'NH{q', 17
                            stor5[arg1].field_768--
                            contractBalance = eth.balance(this.address)
                            emit 0x820f57ee: 1, arg1, arg2
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var307002].field_0 = 0
                            sub_d6ca6c4c[arg1][var307002].field_256 = 0
                            sub_d6ca6c4c[arg1][var307002].field_512 = 0
                            address(sub_d6ca6c4c[arg1][var307002].field_768) = 0
                            if sub_d6ca6c4c[arg1].field_0 < 1:
                                revert with 'NH{q', 17
                            if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var307002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                            sub_d6ca6c4c[arg1][var307002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                            sub_d6ca6c4c[arg1][var307002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                            address(sub_d6ca6c4c[arg1][var307002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                            if not sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 49
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                            address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                            sub_d6ca6c4c[arg1].field_0--
                            if var247001 == -1:
                                revert with 'NH{q', 17
                            # nil
                        else:
                            require ext_code.size(address(arg3))
                            call address(arg3).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), _gubAddyAddress, 2 * sub_d6ca6c4c[arg1][var307002].field_256 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if sub_d6ca6c4c[arg1][var307002].field_256 < 2 * sub_d6ca6c4c[arg1][var307002].field_256 / 100:
                                revert with 'NH{q', 17
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var307002].field_256 -= 2 * sub_d6ca6c4c[arg1][var307002].field_256 / 100
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            require ext_code.size(address(arg3))
                            call address(arg3).transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), address(sub_d6ca6c4c[arg1][var307002].field_768), sub_d6ca6c4c[arg1][var307002].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if stor5[arg1].field_768 < 1:
                                revert with 'NH{q', 17
                            stor5[arg1].field_768--
                            contractBalance = eth.balance(this.address)
                            emit 0x820f57ee: 1, arg1, arg2
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var307002].field_0 = 0
                            sub_d6ca6c4c[arg1][var307002].field_256 = 0
                            sub_d6ca6c4c[arg1][var307002].field_512 = 0
                            address(sub_d6ca6c4c[arg1][var307002].field_768) = 0
                            if sub_d6ca6c4c[arg1].field_0 < 1:
                                revert with 'NH{q', 17
                            if sub_d6ca6c4c[arg1].field_0 - 1 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            if var307002 >= sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 50
                            sub_d6ca6c4c[arg1][var307002].field_0 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0
                            sub_d6ca6c4c[arg1][var307002].field_256 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256
                            sub_d6ca6c4c[arg1][var307002].field_512 = sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512
                            address(sub_d6ca6c4c[arg1][var307002].field_768) = address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768)
                            if not sub_d6ca6c4c[arg1].field_0:
                                revert with 'NH{q', 49
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_0 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_256 = 0
                            sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_512 = 0
                            address(sub_d6ca6c4c[arg1][sub_d6ca6c4c[arg1].field_0 - 1].field_768) = 0
                            sub_d6ca6c4c[arg1].field_0--
                            if var313001 == -1:
                                revert with 'NH{q', 17
                            # nil
}



}
