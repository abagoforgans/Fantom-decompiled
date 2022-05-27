contract main {




// =====================  Runtime code  =====================


#
#  - ticketDatas(uint256[] arg1)
#
address lotteryAddress;
address lotteryNFTAddress;

function lottery() payable {
    return lotteryAddress
}

function lotteryNFT() payable {
    return lotteryNFTAddress
}

function _fallback() payable {
    revert
}

function setPath(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    lotteryAddress = arg1
    lotteryNFTAddress = arg2
}

function historyDatas(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            _994 = mem[64]
            mem[64] = mem[64] + 128
            mem[_994 len 128] = call.data[calldata.size len 128]
            require idx < mem[96]
            require ext_code.size(lotteryAddress)
            staticcall lotteryAddress.getHistoryNumbers(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1045 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require _1045 + 31 < _1045 + return_data.size
            _1092 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require 128 <= return_data.size
            s = 0
            t = _1045
            u = _1092
            while s < 4:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _1325 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            mem[_1325 + 32 len 128] = call.data[calldata.size len 128]
            require mem[_1325]
            mem[_1325 + 32] = mem[_1092 + 31 len 1]
            require 1 < mem[_1325]
            mem[_1325 + 64] = mem[_1092 + 63 len 1]
            require 2 < mem[_1325]
            mem[_1325 + 96] = mem[_1092 + 95 len 1]
            require 3 < mem[_1325]
            mem[_1325 + 128] = mem[_1092 + 127 len 1]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _1325
            idx = idx + 1
            continue 
        _987 = mem[96]
        require mem[96] <= test266151307()
        _993 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _987) + 32
        if not _987:
            _1310 = mem[96]
            s = 0
            while s < _1310:
                require s < mem[96]
                _1320 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 128]
                require ext_code.size(lotteryAddress)
                staticcall lotteryAddress.getDrawTime(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1320
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require s < mem[_993]
                mem[(32 * s) + _993 + 32] = mem[_1352]
                _1310 = mem[96]
                s = s + 1
                continue 
            _1313 = mem[96]
            require mem[96] <= test266151307()
            _1319 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _1313) + 32
            if not _1313:
                _1636 = mem[96]
                s = 0
                while s < _1636:
                    require ext_code.size(lotteryAddress)
                    staticcall lotteryAddress.issueIndex() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require s < mem[96]
                    if mem[(32 * s) + 128] > mem[_1660] - 1:
                        _1712 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 160
                        require 0 < mem[_1712]
                        mem[_1712 + 32] = 0
                        require 1 < mem[_1712]
                        mem[_1712 + 64] = 0
                        require 2 < mem[_1712]
                        mem[_1712 + 96] = 0
                        require 3 < mem[_1712]
                        mem[_1712 + 128] = 0
                        require s < mem[_1319]
                        mem[(32 * s) + _1319 + 32] = _1712
                    else:
                        _1729 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1729 len 128] = call.data[calldata.size len 128]
                        require s < mem[96]
                        require ext_code.size(lotteryAddress)
                        staticcall lotteryAddress.getHistoryAmounts(uint256 arg1) with:
                                gas gas_remaining wei
                               args mem[(32 * s) + 128]
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require _1847 + 31 < _1847 + return_data.size
                        _1903 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        require 128 <= return_data.size
                        idx = 0
                        t = _1847
                        u = _1903
                        while idx < 4:
                            mem[u] = mem[t]
                            _1636 = mem[96]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _1950 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 160
                        mem[_1950 + 32 len 128] = call.data[calldata.size len 128]
                        require mem[_1950]
                        mem[_1950 + 32] = mem[_1903]
                        require 1 < mem[_1950]
                        mem[_1950 + 64] = mem[_1903 + 32]
                        require 2 < mem[_1950]
                        mem[_1950 + 96] = mem[_1903 + 64]
                        require 3 < mem[_1950]
                        mem[_1950 + 128] = mem[_1903 + 96]
                        require s < mem[_1319]
                        mem[(32 * s) + _1319 + 32] = _1950
                    _1636 = mem[96]
                    s = s + 1
                    continue 
                _1649 = mem[64]
                mem[mem[64]] = 96
                _1666 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
                idx = 0
                t = (32 * arg1.length) + 160
                u = mem[64] + (32 * _1666) + 128
                v = mem[64] + 128
                while idx < _1666:
                    mem[v] = u + -_1649 - 128
                    _1935 = mem[t]
                    _1936 = mem[mem[t]]
                    mem[u] = mem[mem[t]]
                    s = 0
                    w = u + 32
                    x = _1935 + 32
                    while s < _1936:
                        mem[w] = mem[x + 31 len 1]
                        s = s + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    t = t + 32
                    u = u + (32 * _1936) + 32
                    v = v + 32
                    continue 
                mem[_1649 + 32] = u - _1649
                _1949 = mem[_1319]
                mem[u] = mem[_1319]
                idx = 0
                t = _1319 + 32
                v = u + (32 * _1949) + 32
                w = u + 32
                while idx < _1949:
                    mem[w] = v + -u - 32
                    _2173 = mem[t]
                    _2174 = mem[mem[t]]
                    mem[v] = mem[mem[t]]
                    u = 0
                    s = v + 32
                    x = _2173 + 32
                    while u < _2174:
                        mem[s] = mem[x]
                        u = u + 1
                        s = s + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    t = t + 32
                    v = v + (32 * _2174) + 32
                    w = w + 32
                    continue 
                mem[_1649 + 64] = v - _1649
                _2195 = mem[_993]
                mem[v] = mem[_993]
                mem[v + 32 len 32 * _2195] = mem[_993 + 32 len 32 * _2195]
                var46001 = _2195
                return memory
                  from mem[64]
                   len v + (32 * _2195) + -mem[64] + 32
            mem[_1319 + 32] = 96
            s = _1319 + 32
            idx = _1313
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1931 = mem[96]
            idx = 0
            while idx < _1931:
                require ext_code.size(lotteryAddress)
                staticcall lotteryAddress.issueIndex() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1964 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[96]
                if mem[(32 * idx) + 128] > mem[_1964] - 1:
                    _2032 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    require 0 < mem[_2032]
                    mem[_2032 + 32] = 0
                    require 1 < mem[_2032]
                    mem[_2032 + 64] = 0
                    require 2 < mem[_2032]
                    mem[_2032 + 96] = 0
                    require 3 < mem[_2032]
                    mem[_2032 + 128] = 0
                    require idx < mem[_1319]
                    mem[(32 * idx) + _1319 + 32] = _2032
                else:
                    _2048 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2048 len 128] = call.data[calldata.size len 128]
                    require idx < mem[96]
                    require ext_code.size(lotteryAddress)
                    staticcall lotteryAddress.getHistoryAmounts(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 128]
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require _2145 + 31 < _2145 + return_data.size
                    _2159 = mem[64]
                    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                    mem[64] = mem[64] + 128
                    require 128 <= return_data.size
                    s = 0
                    t = _2145
                    u = _2159
                    while s < 4:
                        mem[u] = mem[t]
                        _1931 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _2197 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    mem[_2197 + 32 len 128] = call.data[calldata.size len 128]
                    require mem[_2197]
                    mem[_2197 + 32] = mem[_2159]
                    require 1 < mem[_2197]
                    mem[_2197 + 64] = mem[_2159 + 32]
                    require 2 < mem[_2197]
                    mem[_2197 + 96] = mem[_2159 + 64]
                    require 3 < mem[_2197]
                    mem[_2197 + 128] = mem[_2159 + 96]
                    require idx < mem[_1319]
                    mem[(32 * idx) + _1319 + 32] = _2197
                _1931 = mem[96]
                idx = idx + 1
                continue 
            _1953 = mem[64]
            mem[mem[64]] = 96
            _1977 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            s = 0
            t = (32 * arg1.length) + 160
            u = mem[64] + (32 * _1977) + 128
            v = mem[64] + 128
            while s < _1977:
                mem[v] = u + -_1953 - 128
                _2176 = mem[t]
                _2177 = mem[mem[t]]
                mem[u] = mem[mem[t]]
                idx = 0
                w = u + 32
                x = _2176 + 32
                while idx < _2177:
                    mem[w] = mem[x + 31 len 1]
                    idx = idx + 1
                    w = w + 32
                    x = x + 32
                    continue 
                s = s + 1
                t = t + 32
                u = u + (32 * _2177) + 32
                v = v + 32
                continue 
            mem[_1953 + 32] = u - _1953
            _2196 = mem[_1319]
            mem[u] = mem[_1319]
            s = 0
            t = _1319 + 32
            v = u + (32 * _2196) + 32
            w = u + 32
            while s < _2196:
                mem[w] = v + -u - 32
                _2337 = mem[t]
                _2338 = mem[mem[t]]
                mem[v] = mem[mem[t]]
                u = 0
                x = v + 32
                y = _2337 + 32
                while u < _2338:
                    mem[x] = mem[y]
                    u = u + 1
                    x = x + 32
                    y = y + 32
                    continue 
                s = s + 1
                t = t + 32
                v = v + (32 * _2338) + 32
                w = w + 32
                continue 
            mem[_1953 + 64] = v - _1953
            _2357 = mem[_993]
            mem[v] = mem[_993]
            mem[v + 32 len 32 * _2357] = mem[_993 + 32 len 32 * _2357]
            var50001 = _2357
            return memory
              from mem[64]
               len v + (32 * _2357) + -mem[64] + 32
        mem[_993 + 32 len 32 * _987] = call.data[calldata.size len 32 * _987]
        _1311 = mem[96]
        s = 0
        while s < _1311:
            require s < mem[96]
            _1323 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 128]
            require ext_code.size(lotteryAddress)
            staticcall lotteryAddress.getDrawTime(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1323
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1354 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require s < mem[_993]
            mem[(32 * s) + _993 + 32] = mem[_1354]
            _1311 = mem[96]
            s = s + 1
            continue 
        _1315 = mem[96]
        require mem[96] <= test266151307()
        _1322 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _1315) + 32
        if not _1315:
            _1637 = mem[96]
            s = 0
            while s < _1637:
                require ext_code.size(lotteryAddress)
                staticcall lotteryAddress.issueIndex() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require s < mem[96]
                if mem[(32 * s) + 128] > mem[_1662] - 1:
                    _1716 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    require 0 < mem[_1716]
                    mem[_1716 + 32] = 0
                    require 1 < mem[_1716]
                    mem[_1716 + 64] = 0
                    require 2 < mem[_1716]
                    mem[_1716 + 96] = 0
                    require 3 < mem[_1716]
                    mem[_1716 + 128] = 0
                    require s < mem[_1322]
                    mem[(32 * s) + _1322 + 32] = _1716
                else:
                    _1736 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1736 len 128] = call.data[calldata.size len 128]
                    require s < mem[96]
                    require ext_code.size(lotteryAddress)
                    staticcall lotteryAddress.getHistoryAmounts(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * s) + 128]
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require _1850 + 31 < _1850 + return_data.size
                    _1904 = mem[64]
                    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                    mem[64] = mem[64] + 128
                    require 128 <= return_data.size
                    idx = 0
                    t = _1850
                    u = _1904
                    while idx < 4:
                        mem[u] = mem[t]
                        _1637 = mem[96]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _1955 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    mem[_1955 + 32 len 128] = call.data[calldata.size len 128]
                    require mem[_1955]
                    mem[_1955 + 32] = mem[_1904]
                    require 1 < mem[_1955]
                    mem[_1955 + 64] = mem[_1904 + 32]
                    require 2 < mem[_1955]
                    mem[_1955 + 96] = mem[_1904 + 64]
                    require 3 < mem[_1955]
                    mem[_1955 + 128] = mem[_1904 + 96]
                    require s < mem[_1322]
                    mem[(32 * s) + _1322 + 32] = _1955
                _1637 = mem[96]
                s = s + 1
                continue 
            _1650 = mem[64]
            mem[mem[64]] = 96
            _1669 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            t = 0
            u = (32 * arg1.length) + 160
            v = mem[64] + (32 * _1669) + 128
            w = mem[64] + 128
            while t < _1669:
                mem[w] = v + -_1650 - 128
                _1940 = mem[u]
                _1941 = mem[mem[u]]
                mem[v] = mem[mem[u]]
                idx = 0
                s = v + 32
                x = _1940 + 32
                while idx < _1941:
                    mem[s] = mem[x + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    x = x + 32
                    continue 
                t = t + 1
                u = u + 32
                v = v + (32 * _1941) + 32
                w = w + 32
                continue 
            mem[_1650 + 32] = v - _1650
            _1954 = mem[_1322]
            mem[v] = mem[_1322]
            t = 0
            u = _1322 + 32
            w = v + (32 * _1954) + 32
            x = v + 32
            while t < _1954:
                mem[x] = w + -v - 32
                _2179 = mem[u]
                _2180 = mem[mem[u]]
                mem[w] = mem[mem[u]]
                idx = 0
                s = w + 32
                v = _2179 + 32
                while idx < _2180:
                    mem[s] = mem[v]
                    idx = idx + 1
                    s = s + 32
                    v = v + 32
                    continue 
                t = t + 1
                u = u + 32
                w = w + (32 * _2180) + 32
                x = x + 32
                continue 
            mem[_1650 + 64] = w - _1650
            _2200 = mem[_993]
            mem[w] = mem[_993]
            mem[w + 32 len 32 * _2200] = mem[_993 + 32 len 32 * _2200]
            var47001 = _2200
            return memory
              from mem[64]
               len w + (32 * _2200) + -mem[64] + 32
        mem[_1322 + 32] = 96
        t = _1322 + 32
        s = _1315
        while s - 1:
            mem[t + 32] = 96
            t = t + 32
            s = s - 1
            continue 
        _1932 = mem[96]
        s = 0
        while s < _1932:
            require ext_code.size(lotteryAddress)
            staticcall lotteryAddress.issueIndex() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1968 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require s < mem[96]
            if mem[(32 * s) + 128] > mem[_1968] - 1:
                _2035 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_2035]
                mem[_2035 + 32] = 0
                require 1 < mem[_2035]
                mem[_2035 + 64] = 0
                require 2 < mem[_2035]
                mem[_2035 + 96] = 0
                require 3 < mem[_2035]
                mem[_2035 + 128] = 0
                require s < mem[_1322]
                mem[(32 * s) + _1322 + 32] = _2035
            else:
                _2053 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2053 len 128] = call.data[calldata.size len 128]
                require s < mem[96]
                require ext_code.size(lotteryAddress)
                staticcall lotteryAddress.getHistoryAmounts(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * s) + 128]
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2146 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require _2146 + 31 < _2146 + return_data.size
                _2160 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require 128 <= return_data.size
                idx = 0
                t = _2146
                u = _2160
                while idx < 4:
                    mem[u] = mem[t]
                    _1932 = mem[96]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _2202 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                mem[_2202 + 32 len 128] = call.data[calldata.size len 128]
                require mem[_2202]
                mem[_2202 + 32] = mem[_2160]
                require 1 < mem[_2202]
                mem[_2202 + 64] = mem[_2160 + 32]
                require 2 < mem[_2202]
                mem[_2202 + 96] = mem[_2160 + 64]
                require 3 < mem[_2202]
                mem[_2202 + 128] = mem[_2160 + 96]
                require s < mem[_1322]
                mem[(32 * s) + _1322 + 32] = _2202
            _1932 = mem[96]
            s = s + 1
            continue 
        _1958 = mem[64]
        mem[mem[64]] = 96
        _1982 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        t = 0
        u = (32 * arg1.length) + 160
        v = mem[64] + (32 * _1982) + 128
        w = mem[64] + 128
        while t < _1982:
            mem[w] = v + -_1958 - 128
            _2182 = mem[u]
            _2183 = mem[mem[u]]
            mem[v] = mem[mem[u]]
            idx = 0
            s = v + 32
            x = _2182 + 32
            while idx < _2183:
                mem[s] = mem[x + 31 len 1]
                idx = idx + 1
                s = s + 32
                x = x + 32
                continue 
            t = t + 1
            u = u + 32
            v = v + (32 * _2183) + 32
            w = w + 32
            continue 
        mem[_1958 + 32] = v - _1958
        _2201 = mem[_1322]
        mem[v] = mem[_1322]
        idx = 0
        t = _1322 + 32
        u = v + (32 * _2201) + 32
        w = v + 32
        while idx < _2201:
            mem[w] = u + -v - 32
            _2342 = mem[t]
            _2343 = mem[mem[t]]
            mem[u] = mem[mem[t]]
            v = 0
            s = u + 32
            x = _2342 + 32
            while v < _2343:
                mem[s] = mem[x]
                v = v + 1
                s = s + 32
                x = x + 32
                continue 
            idx = idx + 1
            t = t + 32
            u = u + (32 * _2343) + 32
            w = w + 32
            continue 
        mem[_1958 + 64] = u - _1958
        _2358 = mem[_993]
        mem[u] = mem[_993]
        mem[u + 32 len 32 * _2358] = mem[_993 + 32 len 32 * _2358]
        var51001 = _2358
        return memory
          from mem[64]
           len u + (32 * _2358) + -mem[64] + 32
    mem[(32 * arg1.length) + 160] = 96
    s = (32 * arg1.length) + 160
    idx = arg1.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _1312 = mem[96]
    idx = 0
    while idx < _1312:
        _1329 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1329 len 128] = call.data[calldata.size len 128]
        require idx < mem[96]
        require ext_code.size(lotteryAddress)
        staticcall lotteryAddress.getHistoryNumbers(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1379 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require _1379 + 31 < _1379 + return_data.size
        _1426 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require 128 <= return_data.size
        s = 0
        t = _1379
        u = _1426
        while s < 4:
            require mem[t] == mem[t + 31 len 1]
            mem[u] = mem[t]
            _1312 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _1657 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 160
        mem[_1657 + 32 len 128] = call.data[calldata.size len 128]
        require mem[_1657]
        mem[_1657 + 32] = mem[_1426 + 31 len 1]
        require 1 < mem[_1657]
        mem[_1657 + 64] = mem[_1426 + 63 len 1]
        require 2 < mem[_1657]
        mem[_1657 + 96] = mem[_1426 + 95 len 1]
        require 3 < mem[_1657]
        mem[_1657 + 128] = mem[_1426 + 127 len 1]
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = _1657
        _1312 = mem[96]
        idx = idx + 1
        continue 
    _1318 = mem[96]
    require mem[96] <= test266151307()
    _1328 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1318) + 32
    if not _1318:
        _1638 = mem[96]
        s = 0
        while s < _1638:
            require s < mem[96]
            _1652 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 128]
            require ext_code.size(lotteryAddress)
            staticcall lotteryAddress.getDrawTime(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1652
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1697 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require s < mem[_1328]
            mem[(32 * s) + _1328 + 32] = mem[_1697]
            _1638 = mem[96]
            s = s + 1
            continue 
        _1644 = mem[96]
        require mem[96] <= test266151307()
        _1651 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _1644) + 32
        if not _1644:
            _1933 = mem[96]
            s = 0
            while s < _1933:
                require ext_code.size(lotteryAddress)
                staticcall lotteryAddress.issueIndex() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1969 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require s < mem[96]
                if mem[(32 * s) + 128] > mem[_1969] - 1:
                    _2038 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    require 0 < mem[_2038]
                    mem[_2038 + 32] = 0
                    require 1 < mem[_2038]
                    mem[_2038 + 64] = 0
                    require 2 < mem[_2038]
                    mem[_2038 + 96] = 0
                    require 3 < mem[_2038]
                    mem[_2038 + 128] = 0
                    require s < mem[_1651]
                    mem[(32 * s) + _1651 + 32] = _2038
                else:
                    _2057 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2057 len 128] = call.data[calldata.size len 128]
                    require s < mem[96]
                    require ext_code.size(lotteryAddress)
                    staticcall lotteryAddress.getHistoryAmounts(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * s) + 128]
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require _2147 + 31 < _2147 + return_data.size
                    _2161 = mem[64]
                    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                    mem[64] = mem[64] + 128
                    require 128 <= return_data.size
                    idx = 0
                    t = _2147
                    u = _2161
                    while idx < 4:
                        mem[u] = mem[t]
                        _1933 = mem[96]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _2206 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 160
                    mem[_2206 + 32 len 128] = call.data[calldata.size len 128]
                    require mem[_2206]
                    mem[_2206 + 32] = mem[_2161]
                    require 1 < mem[_2206]
                    mem[_2206 + 64] = mem[_2161 + 32]
                    require 2 < mem[_2206]
                    mem[_2206 + 96] = mem[_2161 + 64]
                    require 3 < mem[_2206]
                    mem[_2206 + 128] = mem[_2161 + 96]
                    require s < mem[_1651]
                    mem[(32 * s) + _1651 + 32] = _2206
                _1933 = mem[96]
                s = s + 1
                continue 
            _1959 = mem[64]
            mem[mem[64]] = 96
            _1983 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            t = (32 * arg1.length) + 160
            u = mem[64] + (32 * _1983) + 128
            v = mem[64] + 128
            while idx < _1983:
                mem[v] = u + -_1959 - 128
                _2185 = mem[t]
                _2186 = mem[mem[t]]
                mem[u] = mem[mem[t]]
                s = 0
                w = u + 32
                x = _2185 + 32
                while s < _2186:
                    mem[w] = mem[x + 31 len 1]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                t = t + 32
                u = u + (32 * _2186) + 32
                v = v + 32
                continue 
            mem[_1959 + 32] = u - _1959
            _2205 = mem[_1651]
            mem[u] = mem[_1651]
            idx = 0
            t = _1651 + 32
            v = u + (32 * _2205) + 32
            w = u + 32
            while idx < _2205:
                mem[w] = v + -u - 32
                _2345 = mem[t]
                _2346 = mem[mem[t]]
                mem[v] = mem[mem[t]]
                u = 0
                s = v + 32
                x = _2345 + 32
                while u < _2346:
                    mem[s] = mem[x]
                    u = u + 1
                    s = s + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                t = t + 32
                v = v + (32 * _2346) + 32
                w = w + 32
                continue 
            mem[_1959 + 64] = v - _1959
            _2359 = mem[_1328]
            mem[v] = mem[_1328]
            mem[v + 32 len 32 * _2359] = mem[_1328 + 32 len 32 * _2359]
            var50001 = _2359
            return memory
              from mem[64]
               len v + (32 * _2359) + -mem[64] + 32
        mem[_1651 + 32] = 96
        s = _1651 + 32
        idx = _1644
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _2171 = mem[96]
        idx = 0
        while idx < _2171:
            require ext_code.size(lotteryAddress)
            staticcall lotteryAddress.issueIndex() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            if mem[(32 * idx) + 128] > mem[_2226] - 1:
                _2290 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_2290]
                mem[_2290 + 32] = 0
                require 1 < mem[_2290]
                mem[_2290 + 64] = 0
                require 2 < mem[_2290]
                mem[_2290 + 96] = 0
                require 3 < mem[_2290]
                mem[_2290 + 128] = 0
                require idx < mem[_1651]
                mem[(32 * idx) + _1651 + 32] = _2290
            else:
                _2300 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2300 len 128] = call.data[calldata.size len 128]
                require idx < mem[96]
                require ext_code.size(lotteryAddress)
                staticcall lotteryAddress.getHistoryAmounts(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 128]
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2329 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require _2329 + 31 < _2329 + return_data.size
                _2331 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require 128 <= return_data.size
                s = 0
                t = _2329
                u = _2331
                while s < 4:
                    mem[u] = mem[t]
                    _2171 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _2361 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                mem[_2361 + 32 len 128] = call.data[calldata.size len 128]
                require mem[_2361]
                mem[_2361 + 32] = mem[_2331]
                require 1 < mem[_2361]
                mem[_2361 + 64] = mem[_2331 + 32]
                require 2 < mem[_2361]
                mem[_2361 + 96] = mem[_2331 + 64]
                require 3 < mem[_2361]
                mem[_2361 + 128] = mem[_2331 + 96]
                require idx < mem[_1651]
                mem[(32 * idx) + _1651 + 32] = _2361
            _2171 = mem[96]
            idx = idx + 1
            continue 
        _2209 = mem[64]
        mem[mem[64]] = 96
        _2245 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        s = 0
        t = (32 * arg1.length) + 160
        u = mem[64] + (32 * _2245) + 128
        v = mem[64] + 128
        while s < _2245:
            mem[v] = u + -_2209 - 128
            _2348 = mem[t]
            _2349 = mem[mem[t]]
            mem[u] = mem[mem[t]]
            idx = 0
            w = u + 32
            x = _2348 + 32
            while idx < _2349:
                mem[w] = mem[x + 31 len 1]
                idx = idx + 1
                w = w + 32
                x = x + 32
                continue 
            s = s + 1
            t = t + 32
            u = u + (32 * _2349) + 32
            v = v + 32
            continue 
        mem[_2209 + 32] = u - _2209
        _2360 = mem[_1651]
        mem[u] = mem[_1651]
        s = 0
        t = _1651 + 32
        v = u + (32 * _2360) + 32
        w = u + 32
        while s < _2360:
            mem[w] = v + -u - 32
            _2417 = mem[t]
            _2418 = mem[mem[t]]
            mem[v] = mem[mem[t]]
            u = 0
            x = v + 32
            y = _2417 + 32
            while u < _2418:
                mem[x] = mem[y]
                u = u + 1
                x = x + 32
                y = y + 32
                continue 
            s = s + 1
            t = t + 32
            v = v + (32 * _2418) + 32
            w = w + 32
            continue 
        mem[_2209 + 64] = v - _2209
        _2425 = mem[_1328]
        mem[v] = mem[_1328]
        mem[v + 32 len 32 * _2425] = mem[_1328 + 32 len 32 * _2425]
        var54001 = _2425
        return memory
          from mem[64]
           len v + (32 * _2425) + -mem[64] + 32
    mem[_1328 + 32 len 32 * _1318] = call.data[calldata.size len 32 * _1318]
    _1639 = mem[96]
    s = 0
    while s < _1639:
        require s < mem[96]
        _1655 = mem[(32 * s) + 128]
        mem[mem[64] + 4] = mem[(32 * s) + 128]
        require ext_code.size(lotteryAddress)
        staticcall lotteryAddress.getDrawTime(uint256 arg1) with:
                gas gas_remaining wei
               args _1655
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1699 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require s < mem[_1328]
        mem[(32 * s) + _1328 + 32] = mem[_1699]
        _1639 = mem[96]
        s = s + 1
        continue 
    _1646 = mem[96]
    require mem[96] <= test266151307()
    _1654 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1646) + 32
    if not _1646:
        _1934 = mem[96]
        s = 0
        while s < _1934:
            require ext_code.size(lotteryAddress)
            staticcall lotteryAddress.issueIndex() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1971 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require s < mem[96]
            if mem[(32 * s) + 128] > mem[_1971] - 1:
                _2042 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                require 0 < mem[_2042]
                mem[_2042 + 32] = 0
                require 1 < mem[_2042]
                mem[_2042 + 64] = 0
                require 2 < mem[_2042]
                mem[_2042 + 96] = 0
                require 3 < mem[_2042]
                mem[_2042 + 128] = 0
                require s < mem[_1654]
                mem[(32 * s) + _1654 + 32] = _2042
            else:
                _2064 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2064 len 128] = call.data[calldata.size len 128]
                require s < mem[96]
                require ext_code.size(lotteryAddress)
                staticcall lotteryAddress.getHistoryAmounts(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * s) + 128]
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require _2150 + 31 < _2150 + return_data.size
                _2162 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                require 128 <= return_data.size
                idx = 0
                t = _2150
                u = _2162
                while idx < 4:
                    mem[u] = mem[t]
                    _1934 = mem[96]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _2211 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 160
                mem[_2211 + 32 len 128] = call.data[calldata.size len 128]
                require mem[_2211]
                mem[_2211 + 32] = mem[_2162]
                require 1 < mem[_2211]
                mem[_2211 + 64] = mem[_2162 + 32]
                require 2 < mem[_2211]
                mem[_2211 + 96] = mem[_2162 + 64]
                require 3 < mem[_2211]
                mem[_2211 + 128] = mem[_2162 + 96]
                require s < mem[_1654]
                mem[(32 * s) + _1654 + 32] = _2211
            _1934 = mem[96]
            s = s + 1
            continue 
        _1960 = mem[64]
        mem[mem[64]] = 96
        _1986 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        t = 0
        u = (32 * arg1.length) + 160
        v = mem[64] + (32 * _1986) + 128
        w = mem[64] + 128
        while t < _1986:
            mem[w] = v + -_1960 - 128
            _2190 = mem[u]
            _2191 = mem[mem[u]]
            mem[v] = mem[mem[u]]
            idx = 0
            s = v + 32
            x = _2190 + 32
            while idx < _2191:
                mem[s] = mem[x + 31 len 1]
                idx = idx + 1
                s = s + 32
                x = x + 32
                continue 
            t = t + 1
            u = u + 32
            v = v + (32 * _2191) + 32
            w = w + 32
            continue 
        mem[_1960 + 32] = v - _1960
        _2210 = mem[_1654]
        mem[v] = mem[_1654]
        t = 0
        u = _1654 + 32
        w = v + (32 * _2210) + 32
        x = v + 32
        while t < _2210:
            mem[x] = w + -v - 32
            _2351 = mem[u]
            _2352 = mem[mem[u]]
            mem[w] = mem[mem[u]]
            idx = 0
            s = w + 32
            v = _2351 + 32
            while idx < _2352:
                mem[s] = mem[v]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            t = t + 1
            u = u + 32
            w = w + (32 * _2352) + 32
            x = x + 32
            continue 
        mem[_1960 + 64] = w - _1960
        _2364 = mem[_1328]
        mem[w] = mem[_1328]
        mem[w + 32 len 32 * _2364] = mem[_1328 + 32 len 32 * _2364]
        var51001 = _2364
        return memory
          from mem[64]
           len w + (32 * _2364) + -mem[64] + 32
    mem[_1654 + 32] = 96
    t = _1654 + 32
    s = _1646
    while s - 1:
        mem[t + 32] = 96
        t = t + 32
        s = s - 1
        continue 
    _2172 = mem[96]
    s = 0
    while s < _2172:
        require ext_code.size(lotteryAddress)
        staticcall lotteryAddress.issueIndex() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2230 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require s < mem[96]
        if mem[(32 * s) + 128] > mem[_2230] - 1:
            _2293 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            require 0 < mem[_2293]
            mem[_2293 + 32] = 0
            require 1 < mem[_2293]
            mem[_2293 + 64] = 0
            require 2 < mem[_2293]
            mem[_2293 + 96] = 0
            require 3 < mem[_2293]
            mem[_2293 + 128] = 0
            require s < mem[_1654]
            mem[(32 * s) + _1654 + 32] = _2293
        else:
            _2305 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2305 len 128] = call.data[calldata.size len 128]
            require s < mem[96]
            require ext_code.size(lotteryAddress)
            staticcall lotteryAddress.getHistoryAmounts(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * s) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require _2330 + 31 < _2330 + return_data.size
            _2332 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require 128 <= return_data.size
            idx = 0
            t = _2330
            u = _2332
            while idx < 4:
                mem[u] = mem[t]
                _2172 = mem[96]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            _2366 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 160
            mem[_2366 + 32 len 128] = call.data[calldata.size len 128]
            require mem[_2366]
            mem[_2366 + 32] = mem[_2332]
            require 1 < mem[_2366]
            mem[_2366 + 64] = mem[_2332 + 32]
            require 2 < mem[_2366]
            mem[_2366 + 96] = mem[_2332 + 64]
            require 3 < mem[_2366]
            mem[_2366 + 128] = mem[_2332 + 96]
            require s < mem[_1654]
            mem[(32 * s) + _1654 + 32] = _2366
        _2172 = mem[96]
        s = s + 1
        continue 
    _2214 = mem[64]
    mem[mem[64]] = 96
    _2250 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
    t = 0
    u = (32 * arg1.length) + 160
    v = mem[64] + (32 * _2250) + 128
    w = mem[64] + 128
    while t < _2250:
        mem[w] = v + -_2214 - 128
        _2354 = mem[u]
        _2355 = mem[mem[u]]
        mem[v] = mem[mem[u]]
        idx = 0
        s = v + 32
        x = _2354 + 32
        while idx < _2355:
            mem[s] = mem[x + 31 len 1]
            idx = idx + 1
            s = s + 32
            x = x + 32
            continue 
        t = t + 1
        u = u + 32
        v = v + (32 * _2355) + 32
        w = w + 32
        continue 
    mem[_2214 + 32] = v - _2214
    _2365 = mem[_1654]
    mem[v] = mem[_1654]
    idx = 0
    t = _1654 + 32
    u = v + (32 * _2365) + 32
    w = v + 32
    while idx < _2365:
        mem[w] = u + -v - 32
        _2422 = mem[t]
        _2423 = mem[mem[t]]
        mem[u] = mem[mem[t]]
        v = 0
        s = u + 32
        x = _2422 + 32
        while v < _2423:
            mem[s] = mem[x]
            v = v + 1
            s = s + 32
            x = x + 32
            continue 
        idx = idx + 1
        t = t + 32
        u = u + (32 * _2423) + 32
        w = w + 32
        continue 
    mem[_2214 + 64] = u - _2214
    _2426 = mem[_1328]
    mem[u] = mem[_1328]
    mem[u + 32 len 32 * _2426] = mem[_1328 + 32 len 32 * _2426]
    return memory
      from mem[64]
       len u + (32 * _2426) + -mem[64] + 32
}



}
