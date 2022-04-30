contract main {




// =====================  Runtime code  =====================


#
#  - sub_92f48137(?)
#  - sub_dbd19fce(?)
#  - sub_f684cd3c(?)
#
const balanceOf = eth.balance(this.address)


address _gubAddyAddress;
uint256 contractBalance;
uint256 numberOfBets;
array of uint256 betIDRec;
mapping of struct stor4;
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

function bets(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor4[arg1].field_2304):
        if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
            revert with 0, 34
        if bool(stor4[arg1].field_2304):
            if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
                revert with 0, 34
            if uint255(stor4[arg1].field_2305):
                if 31 >= uint255(stor4[arg1].field_2305):
                    mem[128] = 256 * Mask(248, 0, stor4[arg1].field_2312)
                else:
                    mem[128] = uint256(stor4[arg1][9].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor4[arg1].field_2305) + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1][s + 9].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
                revert with 0, 34
            if stor4[arg1].field_2305 % 128:
                if 31 >= stor4[arg1].field_2305 % 128:
                    mem[128] = 256 * Mask(248, 0, stor4[arg1].field_2312)
                else:
                    mem[128] = uint256(stor4[arg1][9].field_0)
                    idx = 128
                    s = 0
                    while stor4[arg1].field_2305 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor4[arg1][s + 9].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return bool(uint8(stor4[arg1].field_0)), 
               uint256(stor4[arg1].field_256),
               uint256(stor4[arg1].field_512),
               uint256(stor4[arg1].field_768),
               uint256(stor4[arg1].field_1024),
               uint256(stor4[arg1].field_1280),
               uint256(stor4[arg1].field_1536),
               uint256(stor4[arg1].field_1792),
               uint256(stor4[arg1].field_2048),
               Array(len=2 * Mask(256, -1, uint255(stor4[arg1].field_2305)), data=mem[128 len ceil32(uint255(stor4[arg1].field_2305))])
    if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1].field_2304):
        if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
            revert with 0, 34
        if uint255(stor4[arg1].field_2305):
            if 31 >= uint255(stor4[arg1].field_2305):
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_2312)
            else:
                mem[128] = uint256(stor4[arg1][9].field_0)
                idx = 128
                s = 0
                while uint255(stor4[arg1].field_2305) + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1][s + 9].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
            revert with 0, 34
        if stor4[arg1].field_2305 % 128:
            if 31 >= stor4[arg1].field_2305 % 128:
                mem[128] = 256 * Mask(248, 0, stor4[arg1].field_2312)
            else:
                mem[128] = uint256(stor4[arg1][9].field_0)
                idx = 128
                s = 0
                while stor4[arg1].field_2305 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor4[arg1][s + 9].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(uint8(stor4[arg1].field_0)), 
           uint256(stor4[arg1].field_256),
           uint256(stor4[arg1].field_512),
           uint256(stor4[arg1].field_768),
           uint256(stor4[arg1].field_1024),
           uint256(stor4[arg1].field_1280),
           uint256(stor4[arg1].field_1536),
           uint256(stor4[arg1].field_1792),
           uint256(stor4[arg1].field_2048),
           Array(len=stor4[arg1].field_2304 % 128, data=mem[128 len ceil32(stor4[arg1].field_2305 % 128)])
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
                            _9619 = mem[64]
                            mem[64] = mem[64] + 64
                            if var53004 >= uint256(sub_d6ca6c4c[arg1].field_0):
                                revert with 0, 50
                            mem[0] = sha3(arg1, 5)
                            mem[_9619] = uint256(sub_d6ca6c4c[arg1][var53004].field_0)
                            mem[0] = arg1
                            mem[32] = 5
                            s = var53004
                            s = sha3(arg1, 5)
                            s = _9619
                            t = _9619
                            u = sha3(arg1, 6)
                            idx = var53004
                            continue 
                    else:
                        uint256(stor4[arg1].field_1024) = uint256(winners[arg1].field_0)
                        if 750 * 10^18 >= uint256(stor4[arg1].field_1280):
                            if uint256(stor4[arg1].field_1280) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                                revert with 0, 17
                            uint256(stor4[arg1].field_256) = 6 * uint256(stor4[arg1].field_1280) / 100
                            if uint256(stor4[arg1].field_1280) < uint256(stor4[arg1].field_256):
                                revert with 0, 17
                            uint256(stor4[arg1].field_1280) -= uint256(stor4[arg1].field_256)
                            if not uint256(stor4[arg1].field_1024):
                                revert with 0, 18
                            uint256(stor4[arg1].field_512) = uint256(stor4[arg1].field_1280) - uint256(stor4[arg1].field_256) / uint256(stor4[arg1].field_1024)
                            call _gubAddyAddress with:
                               value uint256(stor4[arg1].field_256) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var69001 < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if uint256(stor4[arg1].field_1280) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            uint256(stor4[arg1].field_256) = 4 * uint256(stor4[arg1].field_1280) / 100
                            if uint256(stor4[arg1].field_1280) < uint256(stor4[arg1].field_256):
                                revert with 0, 17
                            uint256(stor4[arg1].field_1280) -= uint256(stor4[arg1].field_256)
                            if not uint256(stor4[arg1].field_1024):
                                revert with 0, 18
                            uint256(stor4[arg1].field_512) = uint256(stor4[arg1].field_1280) - uint256(stor4[arg1].field_256) / uint256(stor4[arg1].field_1024)
                            call _gubAddyAddress with:
                               value uint256(stor4[arg1].field_256) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var69001 < 1:
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
            uint256(stor4[arg1].field_1024) = uint256(winners[arg1].field_0)
            if 750 * 10^18 >= uint256(stor4[arg1].field_1280):
                if uint256(stor4[arg1].field_1280) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                    revert with 0, 17
                uint256(stor4[arg1].field_256) = 6 * uint256(stor4[arg1].field_1280) / 100
                if uint256(stor4[arg1].field_1280) < uint256(stor4[arg1].field_256):
                    revert with 0, 17
                uint256(stor4[arg1].field_1280) -= uint256(stor4[arg1].field_256)
                if not uint256(stor4[arg1].field_1024):
                    revert with 0, 18
                uint256(stor4[arg1].field_512) = uint256(stor4[arg1].field_1280) - uint256(stor4[arg1].field_256) / uint256(stor4[arg1].field_1024)
                call _gubAddyAddress with:
                   value uint256(stor4[arg1].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var64001 < 1:
                    revert with 0, 17
                if var68002 <= var68001:
                    if var70001 >= uint256(winners[arg1].field_0):
                        revert with 0, 50
                    # nil
                else:
                    emit 0xdaddc2d0: uint256(stor4[arg1].field_1280), 1, arg1, arg2, arg3
                    uint8(stor4[arg1].field_0) = 0
                    uint256(stor4[arg1].field_256) = 0
                    uint256(stor4[arg1].field_512) = 0
                    uint256(stor4[arg1].field_768) = 0
                    uint256(stor4[arg1].field_1024) = 0
                    uint256(stor4[arg1].field_1280) = 0
                    uint256(stor4[arg1].field_1536) = 0
                    uint256(stor4[arg1].field_1792) = 0
                    uint256(stor4[arg1].field_2048) = 0
                    if bool(stor4[arg1].field_2304):
                        if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
                            revert with 0, 34
                        uint256(stor4[arg1].field_2304) = 0
                        if 31 < uint255(stor4[arg1].field_2305):
                            idx = 0
                            while uint255(stor4[arg1].field_2305) + 31 / 32 > idx:
                                uint256(stor4[arg1][idx + 9].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_d6ca6c4c[arg1].field_0) = 0
                        else:
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
                        if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[arg1].field_2304) = 0
                        if 31 < stor4[arg1].field_2305 % 128:
                            idx = 0
                            while stor4[arg1].field_2305 % 128 + 31 / 32 > idx:
                                uint256(stor4[arg1][idx + 9].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_d6ca6c4c[arg1].field_0) = 0
                        else:
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
                if uint256(stor4[arg1].field_1280) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                uint256(stor4[arg1].field_256) = 4 * uint256(stor4[arg1].field_1280) / 100
                if uint256(stor4[arg1].field_1280) < uint256(stor4[arg1].field_256):
                    revert with 0, 17
                uint256(stor4[arg1].field_1280) -= uint256(stor4[arg1].field_256)
                if not uint256(stor4[arg1].field_1024):
                    revert with 0, 18
                uint256(stor4[arg1].field_512) = uint256(stor4[arg1].field_1280) - uint256(stor4[arg1].field_256) / uint256(stor4[arg1].field_1024)
                call _gubAddyAddress with:
                   value uint256(stor4[arg1].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var64001 < 1:
                    revert with 0, 17
                if var68002 <= var68001:
                    if var70001 >= uint256(winners[arg1].field_0):
                        revert with 0, 50
                    # nil
                else:
                    emit 0xdaddc2d0: uint256(stor4[arg1].field_1280), 1, arg1, arg2, arg3
                    uint8(stor4[arg1].field_0) = 0
                    uint256(stor4[arg1].field_256) = 0
                    uint256(stor4[arg1].field_512) = 0
                    uint256(stor4[arg1].field_768) = 0
                    uint256(stor4[arg1].field_1024) = 0
                    uint256(stor4[arg1].field_1280) = 0
                    uint256(stor4[arg1].field_1536) = 0
                    uint256(stor4[arg1].field_1792) = 0
                    uint256(stor4[arg1].field_2048) = 0
                    if bool(stor4[arg1].field_2304):
                        if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
                            revert with 0, 34
                        uint256(stor4[arg1].field_2304) = 0
                        if 31 < uint255(stor4[arg1].field_2305):
                            idx = 0
                            while uint255(stor4[arg1].field_2305) + 31 / 32 > idx:
                                uint256(stor4[arg1][idx + 9].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_d6ca6c4c[arg1].field_0) = 0
                        else:
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
                        if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[arg1].field_2304) = 0
                        if 31 < stor4[arg1].field_2305 % 128:
                            idx = 0
                            while stor4[arg1].field_2305 % 128 + 31 / 32 > idx:
                                uint256(stor4[arg1][idx + 9].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_d6ca6c4c[arg1].field_0) = 0
                        else:
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
        uint256(stor4[arg1].field_1024) = uint256(winners[arg1].field_0)
        if 750 * 10^18 >= uint256(stor4[arg1].field_1280):
            if uint256(stor4[arg1].field_1280) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                revert with 0, 17
            uint256(stor4[arg1].field_256) = 6 * uint256(stor4[arg1].field_1280) / 100
            if uint256(stor4[arg1].field_1280) < uint256(stor4[arg1].field_256):
                revert with 0, 17
            uint256(stor4[arg1].field_1280) -= uint256(stor4[arg1].field_256)
            if not uint256(stor4[arg1].field_1024):
                revert with 0, 18
            uint256(stor4[arg1].field_512) = uint256(stor4[arg1].field_1280) - uint256(stor4[arg1].field_256) / uint256(stor4[arg1].field_1024)
            call _gubAddyAddress with:
               value uint256(stor4[arg1].field_256) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var44001 < 1:
                revert with 0, 17
            if var48002 <= var48001:
                if var50001 >= uint256(winners[arg1].field_0):
                    revert with 0, 50
                call address(stor[(2 * var52001) + sha3(var52002) + 1]) with:
                   value uint256(stor4[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var56001 == -1:
                    revert with 0, 17
                if var64001 < 1:
                    revert with 0, 17
                if var68002 <= var68001:
                    if var70001 >= uint256(winners[arg1].field_0):
                        revert with 0, 50
                    # nil
                else:
                    emit 0xdaddc2d0: uint256(stor4[arg1].field_1280), 1, arg1, arg2, arg3
                    uint8(stor4[arg1].field_0) = 0
                    uint256(stor4[arg1].field_256) = 0
                    uint256(stor4[arg1].field_512) = 0
                    uint256(stor4[arg1].field_768) = 0
                    uint256(stor4[arg1].field_1024) = 0
                    uint256(stor4[arg1].field_1280) = 0
                    uint256(stor4[arg1].field_1536) = 0
                    uint256(stor4[arg1].field_1792) = 0
                    uint256(stor4[arg1].field_2048) = 0
                    if bool(stor4[arg1].field_2304):
                        if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
                            revert with 0, 34
                        uint256(stor4[arg1].field_2304) = 0
                        if 31 < uint255(stor4[arg1].field_2305):
                            idx = 0
                            while uint255(stor4[arg1].field_2305) + 31 / 32 > idx:
                                uint256(stor4[arg1][idx + 9].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_d6ca6c4c[arg1].field_0) = 0
                        else:
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
                        if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[arg1].field_2304) = 0
                        if 31 < stor4[arg1].field_2305 % 128:
                            idx = 0
                            while stor4[arg1].field_2305 % 128 + 31 / 32 > idx:
                                uint256(stor4[arg1][idx + 9].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_d6ca6c4c[arg1].field_0) = 0
                        else:
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
                emit 0xdaddc2d0: uint256(stor4[arg1].field_1280), 1, arg1, arg2, arg3
                uint8(stor4[arg1].field_0) = 0
                uint256(stor4[arg1].field_256) = 0
                uint256(stor4[arg1].field_512) = 0
                uint256(stor4[arg1].field_768) = 0
                uint256(stor4[arg1].field_1024) = 0
                uint256(stor4[arg1].field_1280) = 0
                uint256(stor4[arg1].field_1536) = 0
                uint256(stor4[arg1].field_1792) = 0
                uint256(stor4[arg1].field_2048) = 0
                if bool(stor4[arg1].field_2304):
                    if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
                        revert with 0, 34
                    uint256(stor4[arg1].field_2304) = 0
                    if 31 >= uint255(stor4[arg1].field_2305):
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
                    else:
                        idx = 0
                        while uint255(stor4[arg1].field_2305) + 31 / 32 > idx:
                            uint256(stor4[arg1][idx + 9].field_0) = 0
                            idx = idx + 1
                            continue 
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
                            if var94002 > betIDRec.length - 1:
                                contractBalance = eth.balance(this.address)
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
                            if var96001 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 != betIDRec[var98001]:
                                if var102001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                if var100001 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec[var102001] = 0
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
                else:
                    if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
                        revert with 0, 34
                    uint256(stor4[arg1].field_2304) = 0
                    if 31 >= stor4[arg1].field_2305 % 128:
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
                            if var91002 > betIDRec.length - 1:
                                contractBalance = eth.balance(this.address)
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
                            if var93001 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 != betIDRec[var95001]:
                                if var99001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                if var97001 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec[var99001] = 0
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
                    else:
                        idx = 0
                        while stor4[arg1].field_2305 % 128 + 31 / 32 > idx:
                            uint256(stor4[arg1][idx + 9].field_0) = 0
                            idx = idx + 1
                            continue 
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
                            if var95002 > betIDRec.length - 1:
                                contractBalance = eth.balance(this.address)
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
                            if var97001 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 != betIDRec[var99001]:
                                if var103001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                if var101001 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec[var103001] = 0
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
        else:
            if uint256(stor4[arg1].field_1280) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            uint256(stor4[arg1].field_256) = 4 * uint256(stor4[arg1].field_1280) / 100
            if uint256(stor4[arg1].field_1280) < uint256(stor4[arg1].field_256):
                revert with 0, 17
            uint256(stor4[arg1].field_1280) -= uint256(stor4[arg1].field_256)
            if not uint256(stor4[arg1].field_1024):
                revert with 0, 18
            uint256(stor4[arg1].field_512) = uint256(stor4[arg1].field_1280) - uint256(stor4[arg1].field_256) / uint256(stor4[arg1].field_1024)
            call _gubAddyAddress with:
               value uint256(stor4[arg1].field_256) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var44001 < 1:
                revert with 0, 17
            if var48002 <= var48001:
                if var50001 >= uint256(winners[arg1].field_0):
                    revert with 0, 50
                call address(stor[(2 * var52001) + sha3(var52002) + 1]) with:
                   value uint256(stor4[arg1].field_512) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var56001 == -1:
                    revert with 0, 17
                if var64001 < 1:
                    revert with 0, 17
                if var68002 <= var68001:
                    if var70001 >= uint256(winners[arg1].field_0):
                        revert with 0, 50
                    # nil
                else:
                    emit 0xdaddc2d0: uint256(stor4[arg1].field_1280), 1, arg1, arg2, arg3
                    uint8(stor4[arg1].field_0) = 0
                    uint256(stor4[arg1].field_256) = 0
                    uint256(stor4[arg1].field_512) = 0
                    uint256(stor4[arg1].field_768) = 0
                    uint256(stor4[arg1].field_1024) = 0
                    uint256(stor4[arg1].field_1280) = 0
                    uint256(stor4[arg1].field_1536) = 0
                    uint256(stor4[arg1].field_1792) = 0
                    uint256(stor4[arg1].field_2048) = 0
                    if bool(stor4[arg1].field_2304):
                        if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
                            revert with 0, 34
                        uint256(stor4[arg1].field_2304) = 0
                        if 31 < uint255(stor4[arg1].field_2305):
                            idx = 0
                            while uint255(stor4[arg1].field_2305) + 31 / 32 > idx:
                                uint256(stor4[arg1][idx + 9].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_d6ca6c4c[arg1].field_0) = 0
                        else:
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
                        if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
                            revert with 0, 34
                        uint256(stor4[arg1].field_2304) = 0
                        if 31 < stor4[arg1].field_2305 % 128:
                            idx = 0
                            while stor4[arg1].field_2305 % 128 + 31 / 32 > idx:
                                uint256(stor4[arg1][idx + 9].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_d6ca6c4c[arg1].field_0) = 0
                        else:
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
                emit 0xdaddc2d0: uint256(stor4[arg1].field_1280), 1, arg1, arg2, arg3
                uint8(stor4[arg1].field_0) = 0
                uint256(stor4[arg1].field_256) = 0
                uint256(stor4[arg1].field_512) = 0
                uint256(stor4[arg1].field_768) = 0
                uint256(stor4[arg1].field_1024) = 0
                uint256(stor4[arg1].field_1280) = 0
                uint256(stor4[arg1].field_1536) = 0
                uint256(stor4[arg1].field_1792) = 0
                uint256(stor4[arg1].field_2048) = 0
                if bool(stor4[arg1].field_2304):
                    if bool(stor4[arg1].field_2304) == uint255(stor4[arg1].field_2305) < 32:
                        revert with 0, 34
                    uint256(stor4[arg1].field_2304) = 0
                    if 31 >= uint255(stor4[arg1].field_2305):
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
                    else:
                        idx = 0
                        while uint255(stor4[arg1].field_2305) + 31 / 32 > idx:
                            uint256(stor4[arg1][idx + 9].field_0) = 0
                            idx = idx + 1
                            continue 
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
                            if var94002 > betIDRec.length - 1:
                                contractBalance = eth.balance(this.address)
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
                            if var96001 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 != betIDRec[var98001]:
                                if var102001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                if var100001 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec[var102001] = 0
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
                else:
                    if bool(stor4[arg1].field_2304) == stor4[arg1].field_2305 % 128 < 32:
                        revert with 0, 34
                    uint256(stor4[arg1].field_2304) = 0
                    if 31 >= stor4[arg1].field_2305 % 128:
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
                            if var91002 > betIDRec.length - 1:
                                contractBalance = eth.balance(this.address)
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
                            if var93001 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 != betIDRec[var95001]:
                                if var99001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                if var97001 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec[var99001] = 0
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
                    else:
                        idx = 0
                        while stor4[arg1].field_2305 % 128 + 31 / 32 > idx:
                            uint256(stor4[arg1][idx + 9].field_0) = 0
                            idx = idx + 1
                            continue 
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
                            if var95002 > betIDRec.length - 1:
                                contractBalance = eth.balance(this.address)
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
                            if var97001 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 != betIDRec[var99001]:
                                if var103001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                if var101001 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec[var103001] = 0
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
