contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d5c7add0(?) payable {
    require calldata.size - 4 >= 160
    if arg3 == 0xffffffffffffffffffffffffffffffffffffffff:
        if arg1 < arg2:
            require ext_code.size(address(sha3(0, arg4, sha3(arg1, arg2), arg5)))
            staticcall address(sha3(0, arg4, sha3(arg1, arg2), arg5)).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg1 == arg1:
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[18 len 14]
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] <= 3:
                        if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                            return 0 / ext_call.return_data[18 len 14], 0
                        return 0 / ext_call.return_data[18 len 14], 1
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / 2) + 1
                    t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]
                    while s < t:
                        require s
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / s) + s / 2
                        t = s
                        continue 
                    return 0 / ext_call.return_data[18 len 14], t
                if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[18 len 14]
                if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] <= 3:
                    if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                        return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14], 0
                    return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14], 1
                s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / 2) + 1
                t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]
                while s < t:
                    require s
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / s) + s / 2
                    t = s
                    continue 
                return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14], t
        else:
            require ext_code.size(address(sha3(0, arg4, sha3(arg2, arg1), arg5)))
            staticcall address(sha3(0, arg4, sha3(arg2, arg1), arg5)).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg2 == arg1:
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[18 len 14]
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] <= 3:
                        if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                            return 0 / ext_call.return_data[18 len 14], 0
                        return 0 / ext_call.return_data[18 len 14], 1
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / 2) + 1
                    t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]
                    while s < t:
                        require s
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / s) + s / 2
                        t = s
                        continue 
                    return 0 / ext_call.return_data[18 len 14], t
                if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[18 len 14]
                if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] <= 3:
                    if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                        return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14], 0
                    return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14], 1
                s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / 2) + 1
                t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]
                while s < t:
                    require s
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / s) + s / 2
                    t = s
                    continue 
                return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14], t
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[50 len 14]
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] <= 3:
                if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]:
                    return 0 / ext_call.return_data[50 len 14], 0
                return 0 / ext_call.return_data[50 len 14], 1
            s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / 2) + 1
            t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]
            while s < t:
                require s
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / s) + s / 2
                t = s
                continue 
            return 0 / ext_call.return_data[50 len 14], t
        if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[50 len 14]
        if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != ext_call.return_data[18 len 14]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
        if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] <= 3:
            if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]:
                return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14], 0
            return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14], 1
        s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / 2) + 1
        t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]
        while s < t:
            require s
            s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / s) + s / 2
            t = s
            continue 
        return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14], t
    if arg1 < arg3:
        require ext_code.size(address(sha3(0, arg4, sha3(arg1, arg3), arg5)))
        staticcall address(sha3(0, arg4, sha3(arg1, arg3), arg5)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg1:
            if arg3 < arg2:
                require ext_code.size(address(sha3(0, arg4, sha3(arg3, arg2), arg5)))
                staticcall address(sha3(0, arg4, sha3(arg3, arg2), arg5)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg3:
                    if Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[18 len 14]:
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[18 len 14]
                            if not 0 / ext_call.return_data[18 len 14]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[18 len 14]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                                if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                    if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                        return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                                    return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                                s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                                t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                                while s < t:
                                    require s
                                    s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                    t = s
                                    continue 
                                return 0 / Mask(112, 0, ext_call.return_data[0]), t
                            if 10^18 * 0 / ext_call.return_data[18 len 14] / 0 / ext_call.return_data[18 len 14] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                    return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 0
                                return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 1
                            s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                            t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                            while s < t:
                                require s
                                s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                t = s
                                continue 
                            return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), t
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[18 len 14]
                        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                    return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                                return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                            s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                            t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                            while s < t:
                                require s
                                s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                t = s
                                continue 
                            return 0 / Mask(112, 0, ext_call.return_data[0]), t
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[0])
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                                       0
                            return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                                   1
                        s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                        t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                        while s < t:
                            require s
                            s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                            t = s
                            continue 
                        return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                               t
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.return_data[50 len 14]:
                            if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 0 / Mask(112, 0, ext_call.return_data[32])
                            if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                                if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                                    return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                                return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                            s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                            t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                            while s < t:
                                require s
                                s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                                t = s
                                continue 
                            return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), t
                        if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / Mask(112, 0, ext_call.return_data[32])
                        if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                                return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                            return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), t
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0
                            return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), t
                    if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                                   0
                        return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                               1
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                           t
            else:
                require ext_code.size(address(sha3(0, arg4, sha3(arg2, arg3), arg5)))
                staticcall address(sha3(0, arg4, sha3(arg2, arg3), arg5)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 == arg3:
                    if Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[18 len 14]:
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[18 len 14]
                            if not 0 / ext_call.return_data[18 len 14]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[18 len 14]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                                if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                    if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                        return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                                    return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                                s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                                t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                                while s < t:
                                    require s
                                    s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                    t = s
                                    continue 
                                return 0 / Mask(112, 0, ext_call.return_data[0]), t
                            if 10^18 * 0 / ext_call.return_data[18 len 14] / 0 / ext_call.return_data[18 len 14] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                    return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 0
                                return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 1
                            s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                            t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                            while s < t:
                                require s
                                s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                t = s
                                continue 
                            return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), t
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[18 len 14]
                        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                    return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                                return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                            s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                            t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                            while s < t:
                                require s
                                s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                t = s
                                continue 
                            return 0 / Mask(112, 0, ext_call.return_data[0]), t
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[0])
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                                       0
                            return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                                   1
                        s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                        t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                        while s < t:
                            require s
                            s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                            t = s
                            continue 
                        return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                               t
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.return_data[50 len 14]:
                            if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 0 / Mask(112, 0, ext_call.return_data[32])
                            if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                                if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                                    return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                                return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                            s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                            t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                            while s < t:
                                require s
                                s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                                t = s
                                continue 
                            return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), t
                        if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / Mask(112, 0, ext_call.return_data[32])
                        if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                                return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                            return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), t
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0
                            return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), t
                    if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                                   0
                        return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                               1
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                           t
            if Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[50 len 14]:
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[50 len 14]
                    if not 0 / ext_call.return_data[50 len 14]:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[0])
                        if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                            if not 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                            return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                        s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                        t = 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])
                        while s < t:
                            require s
                            s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                            t = s
                            continue 
                        return 0 / Mask(112, 0, ext_call.return_data[0]), t
                    if 10^18 * 0 / ext_call.return_data[50 len 14] / 0 / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[0])
                    if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                        if not 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 0
                        return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 1
                    s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                    t = 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])
                    while s < t:
                        require s
                        s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                        t = s
                        continue 
                    return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), t
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[50 len 14]
                if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[0])
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                        return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                    s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                    t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])
                    while s < t:
                        require s
                        s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                        t = s
                        continue 
                    return 0 / Mask(112, 0, ext_call.return_data[0]), t
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                    if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                        return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                               0
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                           1
                s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])
                while s < t:
                    require s
                    s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                    t = s
                    continue 
                return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                       t
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[32])
                if not ext_call.return_data[18 len 14]:
                    if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / Mask(112, 0, ext_call.return_data[32])
                    if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                        return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                    s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), t
                if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / Mask(112, 0, ext_call.return_data[32])
                if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                    if not ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                    return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                t = ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                while s < t:
                    require s
                    s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                    t = s
                    continue 
                return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), t
            if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require Mask(112, 0, ext_call.return_data[32])
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                    if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0
                    return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 1
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                while s < t:
                    require s
                    s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                    t = s
                    continue 
                return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), t
            if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                           0
                return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                       1
            s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
            t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            while s < t:
                require s
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                t = s
                continue 
            return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                   t
    else:
        require ext_code.size(address(sha3(0, arg4, sha3(arg3, arg1), arg5)))
        staticcall address(sha3(0, arg4, sha3(arg3, arg1), arg5)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg3 == arg1:
            if arg3 < arg2:
                require ext_code.size(address(sha3(0, arg4, sha3(arg3, arg2), arg5)))
                staticcall address(sha3(0, arg4, sha3(arg3, arg2), arg5)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg3:
                    if Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[18 len 14]:
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[18 len 14]
                            if not 0 / ext_call.return_data[18 len 14]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[18 len 14]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                                if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                    if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                        return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                                    return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                                s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                                t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                                while s < t:
                                    require s
                                    s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                    t = s
                                    continue 
                                return 0 / Mask(112, 0, ext_call.return_data[0]), t
                            if 10^18 * 0 / ext_call.return_data[18 len 14] / 0 / ext_call.return_data[18 len 14] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                    return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 0
                                return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 1
                            s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                            t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                            while s < t:
                                require s
                                s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                t = s
                                continue 
                            return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), t
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[18 len 14]
                        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                    return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                                return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                            s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                            t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                            while s < t:
                                require s
                                s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                t = s
                                continue 
                            return 0 / Mask(112, 0, ext_call.return_data[0]), t
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[0])
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                                       0
                            return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                                   1
                        s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                        t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                        while s < t:
                            require s
                            s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                            t = s
                            continue 
                        return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                               t
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.return_data[50 len 14]:
                            if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 0 / Mask(112, 0, ext_call.return_data[32])
                            if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                                if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                                    return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                                return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                            s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                            t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                            while s < t:
                                require s
                                s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                                t = s
                                continue 
                            return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), t
                        if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / Mask(112, 0, ext_call.return_data[32])
                        if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                                return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                            return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), t
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0
                            return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), t
                    if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                                   0
                        return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                               1
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                           t
            else:
                require ext_code.size(address(sha3(0, arg4, sha3(arg2, arg3), arg5)))
                staticcall address(sha3(0, arg4, sha3(arg2, arg3), arg5)).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 == arg3:
                    if Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[18 len 14]:
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[18 len 14]
                            if not 0 / ext_call.return_data[18 len 14]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[18 len 14]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                                if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                    if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                        return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                                    return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                                s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                                t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                                while s < t:
                                    require s
                                    s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                    t = s
                                    continue 
                                return 0 / Mask(112, 0, ext_call.return_data[0]), t
                            if 10^18 * 0 / ext_call.return_data[18 len 14] / 0 / ext_call.return_data[18 len 14] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                    return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 0
                                return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 1
                            s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                            t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                            while s < t:
                                require s
                                s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                t = s
                                continue 
                            return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), t
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[18 len 14]
                        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                                if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                    return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                                return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                            s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                            t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                            while s < t:
                                require s
                                s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                                t = s
                                continue 
                            return 0 / Mask(112, 0, ext_call.return_data[0]), t
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[0])
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                                       0
                            return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                                   1
                        s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                        t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0])
                        while s < t:
                            require s
                            s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                            t = s
                            continue 
                        return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                               t
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[32])
                        if not ext_call.return_data[50 len 14]:
                            if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 0 / Mask(112, 0, ext_call.return_data[32])
                            if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                            if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                                if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                                    return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                                return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                            s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                            t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                            while s < t:
                                require s
                                s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                                t = s
                                continue 
                            return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), t
                        if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / Mask(112, 0, ext_call.return_data[32])
                        if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                                return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                            return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), t
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0
                            return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), t
                    if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                                   0
                        return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                               1
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                           t
            if Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[50 len 14]:
                if not ext_call.return_data[18 len 14]:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[50 len 14]
                    if not 0 / ext_call.return_data[50 len 14]:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[0])
                        if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[50 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                            if not 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                                return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                            return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                        s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                        t = 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])
                        while s < t:
                            require s
                            s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                            t = s
                            continue 
                        return 0 / Mask(112, 0, ext_call.return_data[0]), t
                    if 10^18 * 0 / ext_call.return_data[50 len 14] / 0 / ext_call.return_data[50 len 14] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[0])
                    if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                        if not 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 0
                        return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 1
                    s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                    t = 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])
                    while s < t:
                        require s
                        s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                        t = s
                        continue 
                    return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), t
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[50 len 14]
                if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[0])
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            return 0 / Mask(112, 0, ext_call.return_data[0]), 0
                        return 0 / Mask(112, 0, ext_call.return_data[0]), 1
                    s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                    t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])
                    while s < t:
                        require s
                        s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                        t = s
                        continue 
                    return 0 / Mask(112, 0, ext_call.return_data[0]), t
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) <= 3:
                    if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                        return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                               0
                    return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                           1
                s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                t = Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])
                while s < t:
                    require s
                    s = (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                    t = s
                    continue 
                return 10^18 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]), 
                       t
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[32])
                if not ext_call.return_data[18 len 14]:
                    if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / Mask(112, 0, ext_call.return_data[32])
                    if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                        return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                    s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 0 / 0 / Mask(112, 0, ext_call.return_data[32]), t
                if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if 0 / Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / Mask(112, 0, ext_call.return_data[32])
                if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) <= 3:
                    if not ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 0
                    return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), 1
                s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                t = ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32])
                while s < t:
                    require s
                    s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                    t = s
                    continue 
                return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[32]), t
            if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require Mask(112, 0, ext_call.return_data[32])
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                    if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0
                    return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 1
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                while s < t:
                    require s
                    s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                    t = s
                    continue 
                return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), t
            if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 3:
                if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                           0
                return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                       1
            s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 2) + 1
            t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            while s < t:
                require s
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                t = s
                continue 
            return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                   t
    if arg3 < arg2:
        require ext_code.size(address(sha3(0, arg4, sha3(arg3, arg2), arg5)))
        staticcall address(sha3(0, arg4, sha3(arg3, arg2), arg5)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg3 == arg3:
            if Mask(112, 0, ext_call.return_data[0]) <= ext_call.return_data[18 len 14]:
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[18 len 14]
                    if not 0 / ext_call.return_data[18 len 14]:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[32])
                        if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[18 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
                                return 0 / Mask(112, 0, ext_call.return_data[32]), 0
                            return 0 / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 0 / Mask(112, 0, ext_call.return_data[32]), t
                    if 10^18 * 0 / ext_call.return_data[18 len 14] / 0 / ext_call.return_data[18 len 14] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
                            return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 0
                        return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 1
                    s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), t
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[18 len 14]
                if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[32])
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
                            return 0 / Mask(112, 0, ext_call.return_data[32]), 0
                        return 0 / Mask(112, 0, ext_call.return_data[32]), 1
                    s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 0 / Mask(112, 0, ext_call.return_data[32]), t
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                    if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
                        return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 
                               0
                    return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 
                           1
                s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                t = Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])
                while s < t:
                    require s
                    s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                    t = s
                    continue 
                return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 
                       t
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[0])
                if not ext_call.return_data[50 len 14]:
                    if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / Mask(112, 0, ext_call.return_data[0])
                    if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) <= 3:
                        if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), 0
                        return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), 1
                    s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                    t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0])
                    while s < t:
                        require s
                        s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                        t = s
                        continue 
                    return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), t
                if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / Mask(112, 0, ext_call.return_data[0])
                if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) <= 3:
                    if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]):
                        return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), 0
                    return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), 1
                s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0])
                while s < t:
                    require s
                    s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                    t = s
                    continue 
                return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), t
            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require Mask(112, 0, ext_call.return_data[0])
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 3:
                    if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0
                    return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 1
                s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                while s < t:
                    require s
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                    t = s
                    continue 
                return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), t
            if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 3:
                if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
                           0
                return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
                       1
            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
            t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            while s < t:
                require s
                s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                t = s
                continue 
            return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
                   t
    else:
        require ext_code.size(address(sha3(0, arg4, sha3(arg2, arg3), arg5)))
        staticcall address(sha3(0, arg4, sha3(arg2, arg3), arg5)).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg3:
            if Mask(112, 0, ext_call.return_data[0]) <= ext_call.return_data[18 len 14]:
                if not ext_call.return_data[50 len 14]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[18 len 14]
                    if not 0 / ext_call.return_data[18 len 14]:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require Mask(112, 0, ext_call.return_data[32])
                        if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[18 len 14]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                        if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                            if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
                                return 0 / Mask(112, 0, ext_call.return_data[32]), 0
                            return 0 / Mask(112, 0, ext_call.return_data[32]), 1
                        s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                        t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])
                        while s < t:
                            require s
                            s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                            t = s
                            continue 
                        return 0 / Mask(112, 0, ext_call.return_data[32]), t
                    if 10^18 * 0 / ext_call.return_data[18 len 14] / 0 / ext_call.return_data[18 len 14] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
                            return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 0
                        return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 1
                    s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 10^18 * 0 / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), t
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[18 len 14]
                if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require Mask(112, 0, ext_call.return_data[32])
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                        if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
                            return 0 / Mask(112, 0, ext_call.return_data[32]), 0
                        return 0 / Mask(112, 0, ext_call.return_data[32]), 1
                    s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                    t = Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])
                    while s < t:
                        require s
                        s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                        t = s
                        continue 
                    return 0 / Mask(112, 0, ext_call.return_data[32]), t
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[32])
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                    if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
                        return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 
                               0
                    return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 
                           1
                s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                t = Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])
                while s < t:
                    require s
                    s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                    t = s
                    continue 
                return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / Mask(112, 0, ext_call.return_data[32]), 
                       t
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[0])
                if not ext_call.return_data[50 len 14]:
                    if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / Mask(112, 0, ext_call.return_data[0])
                    if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                    if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) <= 3:
                        if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]):
                            return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), 0
                        return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), 1
                    s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                    t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0])
                    while s < t:
                        require s
                        s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                        t = s
                        continue 
                    return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), t
                if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / Mask(112, 0, ext_call.return_data[0])
                if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) <= 3:
                    if not ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]):
                        return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), 0
                    return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), 1
                s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                t = ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0])
                while s < t:
                    require s
                    s = (ext_call.return_data[50 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                    t = s
                    continue 
                return 10^18 * ext_call.return_data[50 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), t
            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require Mask(112, 0, ext_call.return_data[0])
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 3:
                    if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0
                    return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 1
                s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
                t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                while s < t:
                    require s
                    s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                    t = s
                    continue 
                return 0 / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), t
            if 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 3:
                if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
                           0
                return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
                       1
            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
            t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            while s < t:
                require s
                s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                t = s
                continue 
            return 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
                   t
    if Mask(112, 0, ext_call.return_data[0]) <= ext_call.return_data[50 len 14]:
        if not ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[50 len 14]
            if not 0 / ext_call.return_data[50 len 14]:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require Mask(112, 0, ext_call.return_data[32])
                if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                    if not 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]):
                        return 0 / Mask(112, 0, ext_call.return_data[32]), 0
                    return 0 / Mask(112, 0, ext_call.return_data[32]), 1
                s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
                t = 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32])
                while s < t:
                    require s
                    s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                    t = s
                    continue 
                return 0 / Mask(112, 0, ext_call.return_data[32]), t
            if 10^18 * 0 / ext_call.return_data[50 len 14] / 0 / ext_call.return_data[50 len 14] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require Mask(112, 0, ext_call.return_data[32])
            if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                if not 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]):
                    return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]), 0
                return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]), 1
            s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
            t = 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32])
            while s < t:
                require s
                s = (0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                t = s
                continue 
            return 10^18 * 0 / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]), t
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[50 len 14]
        if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require Mask(112, 0, ext_call.return_data[32])
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
                if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]):
                    return 0 / Mask(112, 0, ext_call.return_data[32]), 0
                return 0 / Mask(112, 0, ext_call.return_data[32]), 1
            s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
            t = Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32])
            while s < t:
                require s
                s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                t = s
                continue 
            return 0 / Mask(112, 0, ext_call.return_data[32]), t
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(112, 0, ext_call.return_data[32])
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) <= 3:
            if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]):
                return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]), 
                       0
            return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]), 
                   1
        s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
        t = Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32])
        while s < t:
            require s
            s = (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
            t = s
            continue 
        return 10^18 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / Mask(112, 0, ext_call.return_data[32]), 
               t
    if not Mask(112, 0, ext_call.return_data[32]):
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(112, 0, ext_call.return_data[0])
        if not ext_call.return_data[18 len 14]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / Mask(112, 0, ext_call.return_data[0])
            if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
            if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) <= 3:
                if not ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]):
                    return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), 0
                return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), 1
            s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
            t = ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0])
            while s < t:
                require s
                s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                t = s
                continue 
            return 0 / 0 / Mask(112, 0, ext_call.return_data[0]), t
        if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
        if 0 / Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / Mask(112, 0, ext_call.return_data[0])
        if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
        if ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) <= 3:
            if not ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]):
                return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), 0
            return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), 1
        s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
        t = ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0])
        while s < t:
            require s
            s = (ext_call.return_data[18 len 14] * 0 / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
            t = s
            continue 
        return 10^18 * ext_call.return_data[18 len 14] / 0 / Mask(112, 0, ext_call.return_data[0]), t
    if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[50 len 14]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require Mask(112, 0, ext_call.return_data[0])
    if not ext_call.return_data[18 len 14]:
        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
        if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
        if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 3:
            if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0
            return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 1
        s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
        t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
        while s < t:
            require s
            s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
            t = s
            continue 
        return 0 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), t
    if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
    if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
    if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
    if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 3:
        if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
                   0
        return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
               1
    s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 2) + 1
    t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
    while s < t:
        require s
        s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
        t = s
        continue 
    return 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 
           t
}



}
