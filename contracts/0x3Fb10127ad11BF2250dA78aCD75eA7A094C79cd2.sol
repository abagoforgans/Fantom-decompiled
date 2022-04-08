contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getOffersAmountToBuyAll(address arg1, address arg2, uint256 arg3, address arg4) {
    require ext_code.size(arg1)
    call arg1.getBestOffer(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x8a72ea6a with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[96 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    s = mem[96]
    t = arg3
    u = ext_call.return_data[0]
    v = 0
    while t > s:
        require t - s <= t
        if t - s <= 0:
            s = s
            t = t - s
            u = u
            v = v + 1
            continue 
        require ext_code.size(arg1)
        call arg1.0x943911bc with:
             gas gas_remaining wei
            args u
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x8a72ea6a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[96 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        s = ext_call.return_data[0]
        t = t - s
        u = ext_call.return_data[0]
        v = v + 1
        continue 
    if t == s:
        return v + 1, t < s
    return v, t < s
}

function getOffersAmountToSellAll(address arg1, address arg2, uint256 arg3, address arg4) {
    require ext_code.size(arg1)
    call arg1.getBestOffer(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg4), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x8a72ea6a with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[96 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    s = mem[160]
    t = arg3
    u = ext_call.return_data[0]
    v = 0
    while t > s:
        require t - s <= t
        if t - s <= 0:
            s = s
            t = t - s
            u = u
            v = v + 1
            continue 
        require ext_code.size(arg1)
        call arg1.0x943911bc with:
             gas gas_remaining wei
            args u
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x8a72ea6a with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[96 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        s = ext_call.return_data[64]
        t = t - s
        u = ext_call.return_data[0]
        v = v + 1
        continue 
    if t == s:
        return v + 1, t < s
    return v, t < s
}

function getOffers(address arg1, uint256 arg2) {
    mem[96 len 3200] = code.data[4417 len 3200]
    mem[3296 len 3200] = code.data[4417 len 3200]
    mem[6496 len 3200] = code.data[4417 len 3200]
    mem[9696 len 3200] = code.data[4417 len 3200]
    mem[64] = 16096
    mem[12896 len 3200] = code.data[4417 len 3200]
    mem[16096] = 0x8a72ea6a00000000000000000000000000000000000000000000000000000000
    mem[16100] = var29007
    require ext_code.size(arg1)
    call arg1.mem[var31004 len 4] with:
         gas gas_remaining wei
        args mem[var31004 + 4 len var31005 - 4]
    mem[var31006 len 192] = ext_call.return_data[0 len 192]
    if ext_call.success:
        require return_data.size >= 192
        require var35003 < 100
        require var37007 < 100
        require var39008 < 100
        require var41009 < 100
        mem[(32 * var43001) + 12896] = var43006
        mem[var43003] = address(var43007)
        mem[var43004] = var43008
        mem[var43005] = var43009
        require var43010 < 100
        if not mem[(32 * var45001) + 9708 len 20]:
            return code.data[4417 len 3200], 
                   code.data[4417 len 3200],
                   code.data[4417 len 3200],
                   code.data[4417 len 3200],
                   code.data[4417 len 3200]
        require var47001 < 100
        mem[(32 * var49001) + 96] = var49003
        mem[16096] = 0x943911bc00000000000000000000000000000000000000000000000000000000
        mem[16100] = var49010
        require ext_code.size(arg1)
        call arg1.mem[var51004 len 4] with:
             gas gas_remaining wei
            args mem[var51004 + 4 len var51005 - 4]
        mem[var51006] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            _279 = mem[var55002]
            if var55003 + 1 >= 100:
                return code.data[4417 len 3200], 
                       code.data[4417 len 3200],
                       code.data[4417 len 3200],
                       code.data[4417 len 3200],
                       code.data[4417 len 3200]
            require ext_code.size(arg1)
            call arg1.0x8a72ea6a with:
                 gas gas_remaining wei
                args mem[var55002]
            mem[16096 len 192] = ext_call.return_data[0 len 192]
            s = var55003 + 1
            t = _279
            while ext_call.success:
                require return_data.size >= 192
                _307 = mem[16096]
                _309 = mem[16160]
                _311 = mem[16224]
                require s < 100
                mem[(32 * s) + 12896] = mem[16280 len 8]
                mem[(32 * s) + 9696] = address(_311)
                mem[(32 * s) + 6496] = _309
                mem[(32 * s) + 3296] = _307
                if not address(_311):
                    idx = 0
                    while idx < 3200:
                        mem[idx + 16096] = mem[idx + 96]
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args t
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 3200:
                        mem[idx + 19296] = mem[idx + 3296]
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args t
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 3200:
                        mem[idx + 22496] = mem[idx + 6496]
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args t
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 3200:
                        mem[idx + 25696] = mem[idx + 9696]
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args t
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        idx = idx + 32
                        continue 
                    # nil
                else:
                    require s < 100
                    mem[(32 * s) + 96] = t
                    require ext_code.size(arg1)
                    call arg1.0x943911bc with:
                         gas gas_remaining wei
                        args t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if s + 1 < 100:
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        s = s + 1
                        t = ext_call.return_data[0]
                        continue 
                    idx = 0
                    while idx < 3200:
                        mem[idx + 16096] = mem[idx + 96]
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args t
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 3200:
                        mem[idx + 19296] = mem[idx + 3296]
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args t
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 3200:
                        mem[idx + 22496] = mem[idx + 6496]
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args t
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 3200:
                        mem[idx + 25696] = mem[idx + 9696]
                        require ext_code.size(arg1)
                        call arg1.0x8a72ea6a with:
                             gas gas_remaining wei
                            args t
                        mem[16096 len 192] = ext_call.return_data[0 len 192]
                        idx = idx + 32
                        continue 
                    # nil
    revert with ext_call.return_data[0 len return_data.size]
}

function getOffers(address arg1, address arg2, address arg3) {
    mem[96 len 3200] = code.data[4417 len 3200]
    mem[3296 len 3200] = code.data[4417 len 3200]
    mem[6496 len 3200] = code.data[4417 len 3200]
    mem[9696 len 3200] = code.data[4417 len 3200]
    mem[12896 len 3200] = code.data[4417 len 3200]
    require ext_code.size(arg1)
    call arg1.getBestOffer(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if ext_call.success:
        require return_data.size >= 32
        mem[16096 len 3200] = code.data[4417 len 3200]
        mem[19296 len 3200] = code.data[4417 len 3200]
        mem[22496 len 3200] = code.data[4417 len 3200]
        mem[25696 len 3200] = code.data[4417 len 3200]
        mem[64] = 32096
        mem[28896 len 3200] = code.data[4417 len 3200]
        mem[32096] = 0x8a72ea6a00000000000000000000000000000000000000000000000000000000
        mem[32100] = var43007
        require ext_code.size(arg1)
        call arg1.mem[var45004 len 4] with:
             gas gas_remaining wei
            args mem[var45004 + 4 len var45005 - 4]
        mem[var45006 len 192] = ext_call.return_data[0 len 192]
        if ext_call.success:
            require return_data.size >= 192
            require var49003 < 100
            require var51007 < 100
            require var53008 < 100
            require var55009 < 100
            mem[(32 * var57001) + 28896] = var57006
            mem[var57003] = address(var57007)
            mem[var57004] = var57008
            mem[var57005] = var57009
            require var57010 < 100
            if not mem[(32 * var59001) + 25708 len 20]:
                return code.data[4417 len 3200], 
                       code.data[4417 len 3200],
                       code.data[4417 len 3200],
                       code.data[4417 len 3200],
                       code.data[4417 len 3200]
            require var61001 < 100
            mem[(32 * var63001) + 16096] = var63003
            mem[32096] = 0x943911bc00000000000000000000000000000000000000000000000000000000
            mem[32100] = var63010
            require ext_code.size(arg1)
            call arg1.mem[var65004 len 4] with:
                 gas gas_remaining wei
                args mem[var65004 + 4 len var65005 - 4]
            mem[var65006] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                _288 = mem[var69002]
                if var69003 + 1 >= 100:
                    return code.data[4417 len 3200], 
                           code.data[4417 len 3200],
                           code.data[4417 len 3200],
                           code.data[4417 len 3200],
                           code.data[4417 len 3200]
                require ext_code.size(arg1)
                call arg1.0x8a72ea6a with:
                     gas gas_remaining wei
                    args mem[var69002]
                mem[32096 len 192] = ext_call.return_data[0 len 192]
                s = var69003 + 1
                t = _288
                while ext_call.success:
                    require return_data.size >= 192
                    _316 = mem[32096]
                    _318 = mem[32160]
                    _320 = mem[32224]
                    require s < 100
                    mem[(32 * s) + 28896] = mem[32280 len 8]
                    mem[(32 * s) + 25696] = address(_320)
                    mem[(32 * s) + 22496] = _318
                    mem[(32 * s) + 19296] = _316
                    if not address(_320):
                        idx = 0
                        while idx < 3200:
                            mem[idx + 32096] = mem[idx + 16096]
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args t
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < 3200:
                            mem[idx + 35296] = mem[idx + 19296]
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args t
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < 3200:
                            mem[idx + 38496] = mem[idx + 22496]
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args t
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < 3200:
                            mem[idx + 41696] = mem[idx + 25696]
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args t
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            idx = idx + 32
                            continue 
                        # nil
                    else:
                        require s < 100
                        mem[(32 * s) + 16096] = t
                        require ext_code.size(arg1)
                        call arg1.0x943911bc with:
                             gas gas_remaining wei
                            args t
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if s + 1 < 100:
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            s = s + 1
                            t = ext_call.return_data[0]
                            continue 
                        idx = 0
                        while idx < 3200:
                            mem[idx + 32096] = mem[idx + 16096]
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args t
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < 3200:
                            mem[idx + 35296] = mem[idx + 19296]
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args t
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < 3200:
                            mem[idx + 38496] = mem[idx + 22496]
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args t
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            idx = idx + 32
                            continue 
                        idx = 0
                        while idx < 3200:
                            mem[idx + 41696] = mem[idx + 25696]
                            require ext_code.size(arg1)
                            call arg1.0x8a72ea6a with:
                                 gas gas_remaining wei
                                args t
                            mem[32096 len 192] = ext_call.return_data[0 len 192]
                            idx = idx + 32
                            continue 
                        # nil
    revert with ext_call.return_data[0 len return_data.size]
}



}
