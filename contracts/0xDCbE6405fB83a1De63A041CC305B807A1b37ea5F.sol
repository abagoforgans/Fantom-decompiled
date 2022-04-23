contract main {




// =====================  Runtime code  =====================


#
#  - sub_92f48137(?)
#  - sub_dbd19fce(?)
#
const balanceOf = eth.balance(this.address)


address _gubAddyAddress;
uint256 contractBalance;
uint256 numberOfBets;
array of uint256 betIDRec;
mapping of struct bets;
array of struct sub_d6ca6c4c;
mapping of struct stor7;

function numberOfBets() {
    return numberOfBets
}

function _gubAddy() {
    return _gubAddyAddress
}

function contractBalance() {
    return contractBalance
}

function BetIDRec(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < betIDRec.length
    return betIDRec[arg1]
}

function bets(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(uint8(bets[arg1].field_0)), 
           uint256(bets[arg1].field_256),
           uint256(bets[arg1].field_512),
           uint256(bets[arg1].field_768),
           uint256(bets[arg1].field_1024),
           uint256(bets[arg1].field_1280)
}

function sub_d6ca6c4c(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_d6ca6c4c[arg1].field_0)
    return uint256(sub_d6ca6c4c[arg1][arg2].field_0), 
           uint256(sub_d6ca6c4c[arg1][arg2].field_256),
           uint256(sub_d6ca6c4c[arg1][arg2].field_512),
           address(sub_d6ca6c4c[arg1][arg2].field_768)
}

function winners(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(winners[arg1].field_0)
    return uint256(winners[arg1][arg2].field_0), address(winners[arg1][arg2].field_256)
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

function sub_a8033986(?) payable {
    require calldata.size - 4 >= 128
    if msg.sender == _gubAddyAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Funds cannot be sent from originating wallet'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must submit a valid GU Playerid'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must submit a valid GU Playerid'
    require msg.value > 0
    if not uint256(sub_d6ca6c4c[arg1].field_0):
        if uint8(bets[arg1].field_0):
            if not uint256(bets[arg1].field_768):
                revert with 0, 18
            require msg.value >= uint256(bets[arg1].field_1280) / uint256(bets[arg1].field_768)
        else:
            betIDRec.length++
            betIDRec[betIDRec.length] = arg1
            if numberOfBets == -1:
                revert with 0, 17
            numberOfBets++
        uint8(bets[arg1].field_0) = 1
        if 1 > !uint256(sub_d6ca6c4c[arg1].field_0):
            revert with 0, 17
        if uint256(bets[arg1].field_1280) > !msg.value:
            revert with 0, 17
        uint8(bets[arg1].field_0) = 1
        uint256(bets[arg1].field_768) = uint256(sub_d6ca6c4c[arg1].field_0) + 1
        uint256(bets[arg1].field_1280) += msg.value
        uint256(sub_d6ca6c4c[arg1].field_0)++
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_0) = arg2
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_256) = msg.value
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_512) = arg3
        address(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_768) = msg.sender
        address(stor7[arg1][arg2].field_0) = msg.sender
        uint256(stor7[arg1][arg2].field_256) = arg4
        emit 0x82a5830e: msg.value, uint256(bets[arg1].field_768), 1, arg1, arg2
        contractBalance = eth.balance(this.address)
    if var25001 < 1:
        revert with 0, 17
    if var29002 > var29001:
        if uint8(bets[arg1].field_0):
            if not uint256(bets[arg1].field_768):
                revert with 0, 18
            require msg.value >= uint256(bets[arg1].field_1280) / uint256(bets[arg1].field_768)
        else:
            betIDRec.length++
            betIDRec[betIDRec.length] = arg1
            if numberOfBets == -1:
                revert with 0, 17
            numberOfBets++
        uint8(bets[arg1].field_0) = 1
        if 1 > !uint256(sub_d6ca6c4c[arg1].field_0):
            revert with 0, 17
        if uint256(bets[arg1].field_1280) > !msg.value:
            revert with 0, 17
        uint8(bets[arg1].field_0) = 1
        uint256(bets[arg1].field_768) = uint256(sub_d6ca6c4c[arg1].field_0) + 1
        uint256(bets[arg1].field_1280) += msg.value
        uint256(sub_d6ca6c4c[arg1].field_0)++
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_0) = arg2
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_256) = msg.value
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_512) = arg3
        address(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_768) = msg.sender
        address(stor7[arg1][arg2].field_0) = msg.sender
        uint256(stor7[arg1][arg2].field_256) = arg4
        emit 0x82a5830e: msg.value, uint256(bets[arg1].field_768), 1, arg1, arg2
        contractBalance = eth.balance(this.address)
    if var31001 >= uint256(sub_d6ca6c4c[arg1].field_0):
        revert with 0, 50
    if arg2 == uint256(stor[(4 * var33001) + sha3(var33002)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only send one wager per bet.'
    if var35001 >= uint256(sub_d6ca6c4c[arg1].field_0):
        revert with 0, 50
    if msg.sender == address(stor[(4 * var37001) + sha3(var37002) + 3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only send one wager per bet.'
    if var41001 == -1:
        revert with 0, 17
    if var49001 < 1:
        revert with 0, 17
    if var53002 <= var53001:
        if var55001 >= uint256(sub_d6ca6c4c[arg1].field_0):
            revert with 0, 50
        if arg2 == uint256(stor[(4 * var57001) + sha3(var57002)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only send one wager per bet.'
        if var59001 >= uint256(sub_d6ca6c4c[arg1].field_0):
            revert with 0, 50
        # nil
    else:
        if uint8(bets[arg1].field_0):
            if not uint256(bets[arg1].field_768):
                revert with 0, 18
            require msg.value >= uint256(bets[arg1].field_1280) / uint256(bets[arg1].field_768)
        else:
            betIDRec.length++
            betIDRec[betIDRec.length] = arg1
            if numberOfBets == -1:
                revert with 0, 17
            numberOfBets++
        uint8(bets[arg1].field_0) = 1
        if 1 > !uint256(sub_d6ca6c4c[arg1].field_0):
            revert with 0, 17
        if uint256(bets[arg1].field_1280) > !msg.value:
            revert with 0, 17
        uint8(bets[arg1].field_0) = 1
        uint256(bets[arg1].field_768) = uint256(sub_d6ca6c4c[arg1].field_0) + 1
        uint256(bets[arg1].field_1280) += msg.value
        uint256(sub_d6ca6c4c[arg1].field_0)++
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_0) = arg2
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_256) = msg.value
        uint256(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_512) = arg3
        address(sub_d6ca6c4c[arg1][uint256(sub_d6ca6c4c[arg1].field_0)].field_768) = msg.sender
        address(stor7[arg1][arg2].field_0) = msg.sender
        uint256(stor7[arg1][arg2].field_256) = arg4
        emit 0x82a5830e: msg.value, uint256(bets[arg1].field_768), 1, arg1, arg2
        contractBalance = eth.balance(this.address)
}

function sub_b7d5bc54(?) payable {
    require calldata.size - 4 >= 128
    if address(stor7[arg1][arg2].field_0) != msg.sender:
        revert with 0, 'You must be involved in this bet'
    if arg4 != uint256(stor7[arg1][arg2].field_256):
        revert with 0, 'Oops you have the wrong secret'
    if var23001 < 1:
        revert with 0, 17
    if var27002 <= var27001:
        if var29001 >= uint256(sub_d6ca6c4c[arg1].field_0):
            revert with 0, 50
        if uint256(stor[(4 * var31001) + sha3(var31002) + 2]) == arg2:
            mem[64] = 160
            if var33001 < uint256(sub_d6ca6c4c[arg1].field_0):
                mem[96] = uint256(sub_d6ca6c4c[arg1][var33001].field_0)
                mem[0] = arg1
                mem[32] = 5
                s = var33001
                s = 0
                s = 96
                t = 96
                u = 0
                idx = var33001
                while idx < uint256(sub_d6ca6c4c[arg1].field_0):
                    mem[s + 32] = address(sub_d6ca6c4c[arg1][idx].field_768)
                    uint256(winners[arg1][u].field_0)++
                    mem[0] = u + sha3(arg1, 6)
                    uint256(stor[(2 * uint256(winners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'winners', 6)))].field_0) = mem[t]
                    address(stor[(2 * uint256(winners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'winners', 6)))].field_256) = mem[t + 44 len 20]
                    if var37001 == -1:
                        revert with 0, 17
                    if var45001 < 1:
                        revert with 0, 17
                    if var49002 <= var49001:
                        if var51001 >= uint256(sub_d6ca6c4c[arg1].field_0):
                            revert with 0, 50
                        if uint256(stor[(4 * var53001) + sha3(var53002) + 2]) != arg2:
                            # nil
                        else:
                            _3815 = mem[64]
                            mem[64] = mem[64] + 64
                            if var53004 >= uint256(sub_d6ca6c4c[arg1].field_0):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 5)
                            mem[_3815] = uint256(sub_d6ca6c4c[arg1][var53004].field_0)
                            mem[0] = arg1
                            mem[32] = 5
                            s = var53004
                            s = sha3(arg1, 5)
                            s = _3815
                            t = _3815
                            u = sha3(arg1, 6)
                            idx = var53004
                            continue 
                    else:
                        uint256(bets[arg1].field_1024) = uint256(winners[arg1].field_0)
                        if uint256(bets[arg1].field_1280) and 0 > -1 / uint256(bets[arg1].field_1280):
                            revert with 0, 17
                        uint256(bets[arg1].field_256) = 0
                        if uint256(bets[arg1].field_1280) < uint256(bets[arg1].field_256):
                            revert with 0, 17
                        uint256(bets[arg1].field_1280) -= uint256(bets[arg1].field_256)
                        if not uint256(bets[arg1].field_1024):
                            revert with 0, 18
                        uint256(bets[arg1].field_512) = uint256(bets[arg1].field_1280) - uint256(bets[arg1].field_256) / uint256(bets[arg1].field_1024)
                        call _gubAddyAddress with:
                           value uint256(bets[arg1].field_256) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var77001 < 1:
                            revert with 0, 17
                        # nil
            revert with 0, 50
        if var35001 == -1:
            revert with 0, 17
        if var43001 < 1:
            revert with 0, 17
        if var47002 <= var47001:
            if var49001 >= uint256(sub_d6ca6c4c[arg1].field_0):
                revert with 0, 50
            if uint256(stor[(4 * var51001) + sha3(var51002) + 2]) != arg2:
                if var55001 == -1:
                    revert with 0, 17
                # nil
            else:
                mem[64] = 160
                if var53001 >= uint256(sub_d6ca6c4c[arg1].field_0):
                    revert with 0, 50
                mem[0] = var55002
                mem[var55003] = uint256(stor[(4 * var55001) + sha3(var55002)])
                mem[32] = 5
                if var55006 >= uint256(sub_d6ca6c4c[arg1].field_0):
                    revert with 0, 50
                mem[var55003 + 32] = address(sub_d6ca6c4c[arg1][var55006].field_768)
                uint256(stor[var55005])++
                mem[0] = var55005
                uint256(stor[(2 * uint256(stor[var55005])) + sha3(var55005)]) = mem[var55004]
                address(stor[(2 * uint256(stor[var55005])) + sha3(var55005) + 1]) = mem[var55004 + 44 len 20]
                # nil
        else:
            uint256(bets[arg1].field_1024) = uint256(winners[arg1].field_0)
            if uint256(bets[arg1].field_1280) and 0 > -1 / uint256(bets[arg1].field_1280):
                revert with 0, 17
            uint256(bets[arg1].field_256) = 0
            if uint256(bets[arg1].field_1280) < uint256(bets[arg1].field_256):
                revert with 0, 17
            uint256(bets[arg1].field_1280) -= uint256(bets[arg1].field_256)
            if not uint256(bets[arg1].field_1024):
                revert with 0, 18
            uint256(bets[arg1].field_512) = uint256(bets[arg1].field_1280) - uint256(bets[arg1].field_256) / uint256(bets[arg1].field_1024)
            call _gubAddyAddress with:
               value uint256(bets[arg1].field_256) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var72001 < 1:
                revert with 0, 17
            if var76002 <= var76001:
                if var78001 >= uint256(winners[arg1].field_0):
                    revert with 0, 50
                # nil
            else:
                emit 0xdaddc2d0: uint256(bets[arg1].field_1280), 1, arg1, arg2, arg3
                uint8(bets[arg1].field_0) = 0
                uint256(bets[arg1].field_256) = 0
                uint256(bets[arg1].field_512) = 0
                uint256(bets[arg1].field_768) = 0
                uint256(bets[arg1].field_1024) = 0
                uint256(bets[arg1].field_1280) = 0
                uint256(sub_d6ca6c4c[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(sub_d6ca6c4c[arg1].field_0) > idx:
                    uint256(sub_d6ca6c4c[arg1][idx].field_0) = 0
                    uint256(sub_d6ca6c4c[arg1][idx].field_256) = 0
                    uint256(sub_d6ca6c4c[arg1][idx].field_512) = 0
                    address(sub_d6ca6c4c[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                uint256(winners[arg1].field_0) = 0
                # nil
    else:
        uint256(bets[arg1].field_1024) = uint256(winners[arg1].field_0)
        if uint256(bets[arg1].field_1280) and 0 > -1 / uint256(bets[arg1].field_1280):
            revert with 0, 17
        uint256(bets[arg1].field_256) = 0
        if uint256(bets[arg1].field_1280) < uint256(bets[arg1].field_256):
            revert with 0, 17
        uint256(bets[arg1].field_1280) -= uint256(bets[arg1].field_256)
        if not uint256(bets[arg1].field_1024):
            revert with 0, 18
        uint256(bets[arg1].field_512) = uint256(bets[arg1].field_1280) - uint256(bets[arg1].field_256) / uint256(bets[arg1].field_1024)
        call _gubAddyAddress with:
           value uint256(bets[arg1].field_256) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var52001 < 1:
            revert with 0, 17
        if var56002 <= var56001:
            if var58001 >= uint256(winners[arg1].field_0):
                revert with 0, 50
            call address(stor[(2 * var60001) + sha3(var60002) + 1]) with:
               value uint256(bets[arg1].field_512) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var64001 == -1:
                revert with 0, 17
            if var72001 < 1:
                revert with 0, 17
            if var76002 <= var76001:
                if var78001 >= uint256(winners[arg1].field_0):
                    revert with 0, 50
                # nil
            else:
                emit 0xdaddc2d0: uint256(bets[arg1].field_1280), 1, arg1, arg2, arg3
                uint8(bets[arg1].field_0) = 0
                uint256(bets[arg1].field_256) = 0
                uint256(bets[arg1].field_512) = 0
                uint256(bets[arg1].field_768) = 0
                uint256(bets[arg1].field_1024) = 0
                uint256(bets[arg1].field_1280) = 0
                uint256(sub_d6ca6c4c[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(sub_d6ca6c4c[arg1].field_0) > idx:
                    uint256(sub_d6ca6c4c[arg1][idx].field_0) = 0
                    uint256(sub_d6ca6c4c[arg1][idx].field_256) = 0
                    uint256(sub_d6ca6c4c[arg1][idx].field_512) = 0
                    address(sub_d6ca6c4c[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                uint256(winners[arg1].field_0) = 0
                # nil
        else:
            emit 0xdaddc2d0: uint256(bets[arg1].field_1280), 1, arg1, arg2, arg3
            uint8(bets[arg1].field_0) = 0
            uint256(bets[arg1].field_256) = 0
            uint256(bets[arg1].field_512) = 0
            uint256(bets[arg1].field_768) = 0
            uint256(bets[arg1].field_1024) = 0
            uint256(bets[arg1].field_1280) = 0
            uint256(sub_d6ca6c4c[arg1].field_0) = 0
            idx = 0
            while 4 * uint256(sub_d6ca6c4c[arg1].field_0) > idx:
                uint256(sub_d6ca6c4c[arg1][idx].field_0) = 0
                uint256(sub_d6ca6c4c[arg1][idx].field_256) = 0
                uint256(sub_d6ca6c4c[arg1][idx].field_512) = 0
                address(sub_d6ca6c4c[arg1][idx].field_768) = 0
                idx = idx + 4
                continue 
            uint256(winners[arg1].field_0) = 0
            idx = 0
            while 2 * uint256(winners[arg1].field_0) > idx:
                uint256(winners[arg1][idx].field_0) = 0
                address(winners[arg1][idx].field_256) = 0
                idx = idx + 2
                continue 
            address(stor7[arg1][arg2].field_0) = 0
            uint256(stor7[arg1][arg2].field_256) = 0
            address(stor7[arg1][arg3].field_0) = 0
            uint256(stor7[arg1][arg3].field_256) = 0
            if betIDRec.length > 1:
                if betIDRec.length < 1:
                    revert with 0, 17
                if var90002 > betIDRec.length - 1:
                    contractBalance = eth.balance(this.address)
                    if not numberOfBets:
                        revert with 0, 17
                    numberOfBets--
                if var92001 >= betIDRec.length:
                    revert with 0, 50
                if arg1 != betIDRec[var94001]:
                    if var98001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if var96001 >= betIDRec.length:
                        revert with 0, 50
                    betIDRec[var98001] = 0
                    if betIDRec.length < 1:
                        revert with 0, 17
                    # nil
            else:
                if 0 >= betIDRec.length:
                    revert with 0, 50
                if arg1 == betIDRec:
                    if 0 >= betIDRec.length:
                        revert with 0, 50
                    betIDRec = 0
                    if not betIDRec.length:
                        revert with 0, 49
                    betIDRec[betIDRec.length] = 0
                    betIDRec.length--
                contractBalance = eth.balance(this.address)
                if not numberOfBets:
                    revert with 0, 17
                numberOfBets--
}



}
