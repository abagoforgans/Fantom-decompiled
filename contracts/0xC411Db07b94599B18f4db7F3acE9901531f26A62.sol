contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6dc323c6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        else:
            if arg2 < 1000 * ext_call.return_data[0]:
                if arg3 < 1000:
                    if arg2:
                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 96
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[32]:
                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (arg2 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 64
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                        return 0
                                    else:
                                        if arg1 == ext_call.return_data[32]:
                                            return 0
                                        else:
                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                return ext_call.return_data[32]
                            else:
                                if ext_call.return_data[64]:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (arg2 / 1000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 64
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                            return 0
                                        else:
                                            if arg1 == ext_call.return_data[32]:
                                                return 0
                                            else:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    return ext_call.return_data[32]
                                else:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (arg2 / 1000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 64
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            return ext_call.return_data[32]
                    else:
                        if arg3:
                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[32]:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (arg2 / 1000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 64
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                            return 0
                                        else:
                                            if arg1 == ext_call.return_data[32]:
                                                return 0
                                            else:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    return ext_call.return_data[32]
                                else:
                                    if ext_call.return_data[64]:
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (arg2 / 1000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                                return 0
                                            else:
                                                if arg1 == ext_call.return_data[32]:
                                                    return 0
                                                else:
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        return ext_call.return_data[32]
                                    else:
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (arg2 / 1000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                return ext_call.return_data[32]
                        else:
                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[32]:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (arg2 / 1000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 64
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                            return 0
                                        else:
                                            if arg1 == ext_call.return_data[32]:
                                                return 0
                                            else:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    return ext_call.return_data[32]
                                else:
                                    if ext_call.return_data[64]:
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (arg2 / 1000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                                return 0
                                            else:
                                                if arg1 == ext_call.return_data[32]:
                                                    return 0
                                                else:
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        return ext_call.return_data[32]
                                    else:
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (arg2 / 1000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                return ext_call.return_data[32]
                else:
                    if arg2:
                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 96
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[32]:
                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (arg2 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 64
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                        return 0
                                    else:
                                        if arg1 == ext_call.return_data[32]:
                                            return 0
                                        else:
                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                return ext_call.return_data[32]
                            else:
                                if ext_call.return_data[64]:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (arg2 / 1000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 64
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                            return 0
                                        else:
                                            if arg1 == ext_call.return_data[32]:
                                                return 0
                                            else:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    return ext_call.return_data[32]
                                else:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (arg2 / 1000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 64
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            return ext_call.return_data[32]
                    else:
                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 96
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[32]:
                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (arg2 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 64
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                        return 0
                                    else:
                                        if arg1 == ext_call.return_data[32]:
                                            return 0
                                        else:
                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                return ext_call.return_data[32]
                            else:
                                if ext_call.return_data[64]:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (arg2 / 1000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 64
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        if ext_call.return_data[32] / 1000 == arg2 / 1000:
                                            return 0
                                        else:
                                            if arg1 == ext_call.return_data[32]:
                                                return 0
                                            else:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    return ext_call.return_data[32]
                                else:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args (arg2 / 1000)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 64
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            return ext_call.return_data[32]
            else:
                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    else:
                        if 1000 * ext_call.return_data[0] < 1:
                            revert with 'NH{q', 17
                        else:
                            if arg3 < 1000:
                                if (1000 * ext_call.return_data[0]) - 1:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        if ext_call.return_data[32]:
                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                    return 0
                                                else:
                                                    if arg1 == ext_call.return_data[32]:
                                                        return 0
                                                    else:
                                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args ext_call.return_data[32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 64
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                                            return ext_call.return_data[32]
                                        else:
                                            if ext_call.return_data[64]:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                        return 0
                                                    else:
                                                        if arg1 == ext_call.return_data[32]:
                                                            return 0
                                                        else:
                                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                return ext_call.return_data[32]
                                            else:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        return ext_call.return_data[32]
                                else:
                                    if arg3:
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            if ext_call.return_data[32]:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                        return 0
                                                    else:
                                                        if arg1 == ext_call.return_data[32]:
                                                            return 0
                                                        else:
                                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                return ext_call.return_data[32]
                                            else:
                                                if ext_call.return_data[64]:
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                            return 0
                                                        else:
                                                            if arg1 == ext_call.return_data[32]:
                                                                return 0
                                                            else:
                                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 64
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                                    return ext_call.return_data[32]
                                                else:
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args ext_call.return_data[32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 64
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                                            return ext_call.return_data[32]
                                    else:
                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            if ext_call.return_data[32]:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                        return 0
                                                    else:
                                                        if arg1 == ext_call.return_data[32]:
                                                            return 0
                                                        else:
                                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                return ext_call.return_data[32]
                                            else:
                                                if ext_call.return_data[64]:
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                            return 0
                                                        else:
                                                            if arg1 == ext_call.return_data[32]:
                                                                return 0
                                                            else:
                                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 64
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                                    return ext_call.return_data[32]
                                                else:
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args ext_call.return_data[32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 64
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                                            return ext_call.return_data[32]
                            else:
                                if (1000 * ext_call.return_data[0]) - 1:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        if ext_call.return_data[32]:
                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                    return 0
                                                else:
                                                    if arg1 == ext_call.return_data[32]:
                                                        return 0
                                                    else:
                                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args ext_call.return_data[32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 64
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                                            return ext_call.return_data[32]
                                        else:
                                            if ext_call.return_data[64]:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                        return 0
                                                    else:
                                                        if arg1 == ext_call.return_data[32]:
                                                            return 0
                                                        else:
                                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                return ext_call.return_data[32]
                                            else:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        return ext_call.return_data[32]
                                else:
                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummonerCoordinates(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        if ext_call.return_data[32]:
                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                    return 0
                                                else:
                                                    if arg1 == ext_call.return_data[32]:
                                                        return 0
                                                    else:
                                                        require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                        staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args ext_call.return_data[32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 64
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                                            return ext_call.return_data[32]
                                        else:
                                            if ext_call.return_data[64]:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    if ext_call.return_data[32] / 1000 == (1000 * ext_call.return_data[0]) - 1 / 1000:
                                                        return 0
                                                    else:
                                                        if arg1 == ext_call.return_data[32]:
                                                            return 0
                                                        else:
                                                            require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                            staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                return ext_call.return_data[32]
                                            else:
                                                require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getSummoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ((1000 * ext_call.return_data[0]) - 1 / 1000)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                    require ext_code.size(0x411409ff5c149499062ab86e158ab2945ef366e3)
                                                    staticcall 0x411409ff5c149499062ab86e158ab2945ef366e3.getLandFee(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        return ext_call.return_data[32]
}



}
