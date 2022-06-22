contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    revert
}

function sub_821977b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    call stor0.0x1526fe27 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(stor0)
    call stor0.totalAllocPoint() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (ext_call.return_data[32] / ext_call.return_data[0])
}

function sub_bd7dd61f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    call stor0.0x1526fe27 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
         gas gas_remaining wei
        args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).totalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_f745034c(?) payable {
    require ext_code.size(stor3)
    call stor3.balanceOf(address arg1) with:
         gas gas_remaining wei
        args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.balanceOf(address arg1) with:
         gas gas_remaining wei
        args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.balanceOf(address arg1) with:
         gas gas_remaining wei
        args stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_54de171c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    call stor0.0x1526fe27 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(stor0)
    call stor0.totalAllocPoint() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(stor0)
    call stor0.0x5f9bf689 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
        revert with 'NH{q', 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] and ext_call.return_data[32] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0])
}

function sub_5fa46383(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    call stor0.0x1526fe27 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token0() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).token1() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(ext_call.return_data[0]) == stor1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        else:
                            return (2 * ext_call.return_data[0])
                else:
                    if ext_call.return_data[12 len 20] == stor1:
                        if address(ext_call.return_data[0]) == stor1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                else:
                                    return (2 * ext_call.return_data[0])
                        else:
                            if address(ext_call.return_data[0]) != stor2:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    else:
                                        return (2 * ext_call.return_data[0])
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    else:
                                        return (2 * ext_call.return_data[0])
                    else:
                        if address(ext_call.return_data[0]) == stor2:
                            if address(ext_call.return_data[0]) == stor1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    else:
                                        return (2 * ext_call.return_data[0])
                            else:
                                if address(ext_call.return_data[0]) != stor2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                                else:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                        else:
                            if ext_call.return_data[12 len 20] != stor2:
                                if address(ext_call.return_data[0]) == stor4:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                                else:
                                    if ext_call.return_data[12 len 20] != stor4:
                                        if address(ext_call.return_data[0]) == stor3:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                                        else:
                                            if ext_call.return_data[12 len 20] != stor3:
                                                return 0
                                            else:
                                                if address(ext_call.return_data[0]) != stor3:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            return (2 * ext_call.return_data[0])
                                                else:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            return (2 * ext_call.return_data[0])
                                    else:
                                        if address(ext_call.return_data[0]) != stor4:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                else:
                                                    return (2 * ext_call.return_data[0])
                            else:
                                if address(ext_call.return_data[0]) == stor1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        else:
                                            return (2 * ext_call.return_data[0])
                                else:
                                    if address(ext_call.return_data[0]) != stor2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            else:
                                                return (2 * ext_call.return_data[0])
                                    else:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            else:
                                                return (2 * ext_call.return_data[0])
}

function sub_6cf3ee27(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    call stor0.0x1526fe27 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
             gas gas_remaining wei
            args stor0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).totalSupply() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor0)
                call stor0.0x1526fe27 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 128
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    require ext_call.return_data[96] == ext_call.return_data[96]
                    require ext_code.size(stor0)
                    call stor0.totalAllocPoint() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        else:
                            require ext_code.size(stor0)
                            call stor0.0x5f9bf689 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
                                    revert with 'NH{q', 17
                                else:
                                    if 8760 * 24 * 3600 * ext_call.return_data[0] and ext_call.return_data[32] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    else:
                                        require ext_code.size(stor0)
                                        call stor0.0x1526fe27 with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 128
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            require ext_call.return_data[96] == ext_call.return_data[96]
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).token0() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).token1() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if address(ext_call.return_data[0]) == stor1:
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                return ext_call.return_data[0], 
                                                                       ext_call.return_data[0],
                                                                       8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                       2 * ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[12 len 20] == stor1:
                                                            if address(ext_call.return_data[0]) == stor1:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                     gas gas_remaining wei
                                                                    args address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                               2 * ext_call.return_data[0]
                                                            else:
                                                                if address(ext_call.return_data[0]) != stor2:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                        else:
                                                            if address(ext_call.return_data[0]) == stor2:
                                                                if address(ext_call.return_data[0]) == stor1:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                         gas gas_remaining wei
                                                                        args address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            return ext_call.return_data[0], 
                                                                                   ext_call.return_data[0],
                                                                                   8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                   2 * ext_call.return_data[0]
                                                                else:
                                                                    if address(ext_call.return_data[0]) != stor2:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                            else:
                                                                if ext_call.return_data[12 len 20] != stor2:
                                                                    if address(ext_call.return_data[0]) == stor4:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                                    else:
                                                                        if ext_call.return_data[12 len 20] != stor4:
                                                                            if address(ext_call.return_data[0]) == stor3:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                            else:
                                                                                if ext_call.return_data[12 len 20] != stor3:
                                                                                    return ext_call.return_data[0], 
                                                                                           ext_call.return_data[0],
                                                                                           8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                           0
                                                                                else:
                                                                                    if address(ext_call.return_data[0]) != stor3:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args address(ext_call.return_data[0])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                return ext_call.return_data[0], 
                                                                                                       ext_call.return_data[0],
                                                                                                       8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                                       2 * ext_call.return_data[0]
                                                                        else:
                                                                            if address(ext_call.return_data[0]) != stor4:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args address(ext_call.return_data[0])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        return ext_call.return_data[0], 
                                                                                               ext_call.return_data[0],
                                                                                               8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                               2 * ext_call.return_data[0]
                                                                else:
                                                                    if address(ext_call.return_data[0]) == stor1:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                             gas gas_remaining wei
                                                                            args address(ext_call.return_data[0])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0],
                                                                                       8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                       2 * ext_call.return_data[0]
                                                                    else:
                                                                        if address(ext_call.return_data[0]) != stor2:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    return ext_call.return_data[0], 
                                                                                           ext_call.return_data[0],
                                                                                           8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                           2 * ext_call.return_data[0]
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).balanceOf(address arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args address(ext_call.return_data[0])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    return ext_call.return_data[0], 
                                                                                           ext_call.return_data[0],
                                                                                           8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0],
                                                                                           2 * ext_call.return_data[0]
}



}
