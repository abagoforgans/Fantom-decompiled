contract main {




// =====================  Runtime code  =====================


const PRICE_ORACLE_STALE_THRESHOLD = (24 * 3600)


address aAddress;
mapping of address assetOracles;
address eurOracleAddress;

function a() payable {
    return aAddress
}

function assetOracles(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assetOracles[arg1]
}

function eurOracle() payable {
    return eurOracleAddress
}

function _fallback() payable {
    revert
}

function setEurOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require arg1
    eurOracleAddress = arg1
    emit EurOracleUpdated(address(arg1), msg.sender);
}

function setAssetOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xec87621c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not a Manager'
    require arg1
    require arg2
    assetOracles[address(arg1)] = arg2
    emit OracleUpdated(address(arg2), msg.sender, arg1);
}

function getAssetPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(eurOracleAddress)
    staticcall eurOracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'EUR price data not valid'
    if block.timestamp - ext_call.return_data[96] >= 24 * 3600:
        revert with 0, 'EUR price data is stale'
    require ext_code.size(assetOracles[address(arg1)])
    staticcall assetOracles[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Price data not valid'
    if block.timestamp - ext_call.return_data[96] >= 24 * 3600:
        revert with 0, 'Price data is stale'
    require ext_code.size(eurOracleAddress)
    staticcall eurOracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if bool(ext_call.return_data[0]):
        s = 10
        idx = uint8(ext_call.return_data[0]) / 2
        t = 10
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                if s:
                    if 0 / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                s = 0
                idx = idx / 2
                t = 0
                continue 
            if t * t / t != t:
                revert with 0, 'SafeMath: multiplication overflow'
            if not bool(idx):
                s = s
                idx = idx / 2
                t = t * t
                continue 
            if not s:
                s = 0
                idx = idx / 2
                t = t * t
                continue 
            if t * t * s / s != t * t:
                revert with 0, 'SafeMath: multiplication overflow'
            s = t * t * s
            idx = idx / 2
            t = t * t
            continue 
    else:
        s = 1
        idx = uint8(ext_call.return_data[0]) / 2
        t = 10
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                if s:
                    if 0 / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                s = 0
                idx = idx / 2
                t = 0
                continue 
            if t * t / t != t:
                revert with 0, 'SafeMath: multiplication overflow'
            if not bool(idx):
                s = s
                idx = idx / 2
                t = t * t
                continue 
            if not s:
                s = 0
                idx = idx / 2
                t = t * t
                continue 
            if t * t * s / s != t * t:
                revert with 0, 'SafeMath: multiplication overflow'
            s = t * t * s
            idx = idx / 2
            t = t * t
            continue 
    if not ext_call.return_data[32]:
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[32]:
            return (0 / ext_call.return_data[32])
    else:
        if s * ext_call.return_data[32] / ext_call.return_data[32] != s:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[32]:
            return (s * ext_call.return_data[32] / ext_call.return_data[32])
    ('iszero', ('ext_call.return_data', 32, 32))
    revert
}

function convertTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(eurOracleAddress)
    staticcall eurOracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'EUR price data not valid'
    if block.timestamp - ext_call.return_data[96] >= 24 * 3600:
        revert with 0, 'EUR price data is stale'
    require ext_code.size(assetOracles[address(arg1)])
    staticcall assetOracles[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Price data not valid'
    if block.timestamp - ext_call.return_data[96] >= 24 * 3600:
        revert with 0, 'Price data is stale'
    require ext_code.size(eurOracleAddress)
    staticcall eurOracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if bool(ext_call.return_data[0]):
        s = 10
        idx = uint8(ext_call.return_data[0]) / 2
        t = 10
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                if s:
                    if 0 / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                s = 0
                idx = idx / 2
                t = 0
                continue 
            if t * t / t != t:
                revert with 0, 'SafeMath: multiplication overflow'
            if not bool(idx):
                s = s
                idx = idx / 2
                t = t * t
                continue 
            if not s:
                s = 0
                idx = idx / 2
                t = t * t
                continue 
            if t * t * s / s != t * t:
                revert with 0, 'SafeMath: multiplication overflow'
            s = t * t * s
            idx = idx / 2
            t = t * t
            continue 
    else:
        s = 1
        idx = uint8(ext_call.return_data[0]) / 2
        t = 10
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                if s:
                    if 0 / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                s = 0
                idx = idx / 2
                t = 0
                continue 
            if t * t / t != t:
                revert with 0, 'SafeMath: multiplication overflow'
            if not bool(idx):
                s = s
                idx = idx / 2
                t = t * t
                continue 
            if not s:
                s = 0
                idx = idx / 2
                t = t * t
                continue 
            if t * t * s / s != t * t:
                revert with 0, 'SafeMath: multiplication overflow'
            s = t * t * s
            idx = idx / 2
            t = t * t
            continue 
    if not ext_call.return_data[32]:
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[32]:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(aAddress)
            staticcall aAddress.0x16d8a5a9 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(assetOracles[address(arg1)])
            staticcall assetOracles[address(arg1)].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if bool(ext_call.return_data[0]):
                s = 10
                idx = uint8(ext_call.return_data[0]) / 2
                t = 10
                while idx:
                    if not t:
                        if not bool(idx):
                            s = s
                            idx = idx / 2
                            t = 0
                            continue 
                        if s:
                            if 0 / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                        s = 0
                        idx = idx / 2
                        t = 0
                        continue 
                    if t * t / t != t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        s = s
                        idx = idx / 2
                        t = t * t
                        continue 
                    if not s:
                        s = 0
                        idx = idx / 2
                        t = t * t
                        continue 
                    if t * t * s / s != t * t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    s = t * t * s
                    idx = idx / 2
                    t = t * t
                    continue 
            else:
                s = 1
                idx = uint8(ext_call.return_data[0]) / 2
                t = 10
                while idx:
                    if not t:
                        if not bool(idx):
                            s = s
                            idx = idx / 2
                            t = 0
                            continue 
                        if s:
                            if 0 / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                        s = 0
                        idx = idx / 2
                        t = 0
                        continue 
                    if t * t / t != t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        s = s
                        idx = idx / 2
                        t = t * t
                        continue 
                    if not s:
                        s = 0
                        idx = idx / 2
                        t = t * t
                        continue 
                    if t * t * s / s != t * t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    s = t * t * s
                    idx = idx / 2
                    t = t * t
                    continue 
            if uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] < ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: addition overflow'
            if bool(uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1]):
                t = 10
                idx = uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] / 2
                u = 10
                while idx:
                    if not u:
                        if not bool(idx):
                            t = t
                            idx = idx / 2
                            u = 0
                            continue 
                        if t:
                            if 0 / t:
                                revert with 0, 'SafeMath: multiplication overflow'
                        t = 0
                        idx = idx / 2
                        u = 0
                        continue 
                    if u * u / u != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        t = t
                        idx = idx / 2
                        u = u * u
                        continue 
                    if not t:
                        t = 0
                        idx = idx / 2
                        u = u * u
                        continue 
                    if u * u * t / t != u * u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    t = u * u * t
                    idx = idx / 2
                    u = u * u
                    continue 
            else:
                t = 1
                idx = uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] / 2
                u = 10
                while idx:
                    if not u:
                        if not bool(idx):
                            t = t
                            idx = idx / 2
                            u = 0
                            continue 
                        if t:
                            if 0 / t:
                                revert with 0, 'SafeMath: multiplication overflow'
                        t = 0
                        idx = idx / 2
                        u = 0
                        continue 
                    if u * u / u != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        t = t
                        idx = idx / 2
                        u = u * u
                        continue 
                    if not t:
                        t = 0
                        idx = idx / 2
                        u = u * u
                        continue 
                    if u * u * t / t != u * u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    t = u * u * t
                    idx = idx / 2
                    u = u * u
                    continue 
            if not arg2:
                if 0 / ext_call.return_data[32] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[32]:
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if s:
                        return (0 / 0 / ext_call.return_data[32] / s)
            else:
                if t * arg2 / arg2 != t:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / ext_call.return_data[32] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[32]:
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if s:
                        return (t * arg2 / 0 / ext_call.return_data[32] / s)
    else:
        if s * ext_call.return_data[32] / ext_call.return_data[32] != s:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[32]:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(aAddress)
            staticcall aAddress.0x16d8a5a9 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(assetOracles[address(arg1)])
            staticcall assetOracles[address(arg1)].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if bool(ext_call.return_data[0]):
                t = 10
                idx = uint8(ext_call.return_data[0]) / 2
                u = 10
                while idx:
                    if not u:
                        if not bool(idx):
                            t = t
                            idx = idx / 2
                            u = 0
                            continue 
                        if t:
                            if 0 / t:
                                revert with 0, 'SafeMath: multiplication overflow'
                        t = 0
                        idx = idx / 2
                        u = 0
                        continue 
                    if u * u / u != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        t = t
                        idx = idx / 2
                        u = u * u
                        continue 
                    if not t:
                        t = 0
                        idx = idx / 2
                        u = u * u
                        continue 
                    if u * u * t / t != u * u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    t = u * u * t
                    idx = idx / 2
                    u = u * u
                    continue 
            else:
                t = 1
                idx = uint8(ext_call.return_data[0]) / 2
                u = 10
                while idx:
                    if not u:
                        if not bool(idx):
                            t = t
                            idx = idx / 2
                            u = 0
                            continue 
                        if t:
                            if 0 / t:
                                revert with 0, 'SafeMath: multiplication overflow'
                        t = 0
                        idx = idx / 2
                        u = 0
                        continue 
                    if u * u / u != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        t = t
                        idx = idx / 2
                        u = u * u
                        continue 
                    if not t:
                        t = 0
                        idx = idx / 2
                        u = u * u
                        continue 
                    if u * u * t / t != u * u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    t = u * u * t
                    idx = idx / 2
                    u = u * u
                    continue 
            if uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] < ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: addition overflow'
            if bool(uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1]):
                u = 10
                idx = uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] / 2
                v = 10
                while idx:
                    if not v:
                        if not bool(idx):
                            u = u
                            idx = idx / 2
                            v = 0
                            continue 
                        if u:
                            if 0 / u:
                                revert with 0, 'SafeMath: multiplication overflow'
                        u = 0
                        idx = idx / 2
                        v = 0
                        continue 
                    if v * v / v != v:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        u = u
                        idx = idx / 2
                        v = v * v
                        continue 
                    if not u:
                        u = 0
                        idx = idx / 2
                        v = v * v
                        continue 
                    if v * v * u / u != v * v:
                        revert with 0, 'SafeMath: multiplication overflow'
                    u = v * v * u
                    idx = idx / 2
                    v = v * v
                    continue 
            else:
                u = 1
                idx = uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] / 2
                v = 10
                while idx:
                    if not v:
                        if not bool(idx):
                            u = u
                            idx = idx / 2
                            v = 0
                            continue 
                        if u:
                            if 0 / u:
                                revert with 0, 'SafeMath: multiplication overflow'
                        u = 0
                        idx = idx / 2
                        v = 0
                        continue 
                    if v * v / v != v:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        u = u
                        idx = idx / 2
                        v = v * v
                        continue 
                    if not u:
                        u = 0
                        idx = idx / 2
                        v = v * v
                        continue 
                    if v * v * u / u != v * v:
                        revert with 0, 'SafeMath: multiplication overflow'
                    u = v * v * u
                    idx = idx / 2
                    v = v * v
                    continue 
            if not arg2:
                if s * ext_call.return_data[32] / ext_call.return_data[32] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if s * ext_call.return_data[32] / ext_call.return_data[32]:
                    if t <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t:
                        return (0 / s * ext_call.return_data[32] / ext_call.return_data[32] / t)
            else:
                if u * arg2 / arg2 != u:
                    revert with 0, 'SafeMath: multiplication overflow'
                if s * ext_call.return_data[32] / ext_call.return_data[32] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if s * ext_call.return_data[32] / ext_call.return_data[32]:
                    if t <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t:
                        return (u * arg2 / s * ext_call.return_data[32] / ext_call.return_data[32] / t)
    revert
}

function convertFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(eurOracleAddress)
    staticcall eurOracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'EUR price data not valid'
    if block.timestamp - ext_call.return_data[96] >= 24 * 3600:
        revert with 0, 'EUR price data is stale'
    require ext_code.size(assetOracles[address(arg1)])
    staticcall assetOracles[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Price data not valid'
    if block.timestamp - ext_call.return_data[96] >= 24 * 3600:
        revert with 0, 'Price data is stale'
    require ext_code.size(eurOracleAddress)
    staticcall eurOracleAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if bool(ext_call.return_data[0]):
        s = 10
        idx = uint8(ext_call.return_data[0]) / 2
        t = 10
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                if s:
                    if 0 / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                s = 0
                idx = idx / 2
                t = 0
                continue 
            if t * t / t != t:
                revert with 0, 'SafeMath: multiplication overflow'
            if not bool(idx):
                s = s
                idx = idx / 2
                t = t * t
                continue 
            if not s:
                s = 0
                idx = idx / 2
                t = t * t
                continue 
            if t * t * s / s != t * t:
                revert with 0, 'SafeMath: multiplication overflow'
            s = t * t * s
            idx = idx / 2
            t = t * t
            continue 
    else:
        s = 1
        idx = uint8(ext_call.return_data[0]) / 2
        t = 10
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                if s:
                    if 0 / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                s = 0
                idx = idx / 2
                t = 0
                continue 
            if t * t / t != t:
                revert with 0, 'SafeMath: multiplication overflow'
            if not bool(idx):
                s = s
                idx = idx / 2
                t = t * t
                continue 
            if not s:
                s = 0
                idx = idx / 2
                t = t * t
                continue 
            if t * t * s / s != t * t:
                revert with 0, 'SafeMath: multiplication overflow'
            s = t * t * s
            idx = idx / 2
            t = t * t
            continue 
    if not ext_call.return_data[32]:
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[32]:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(aAddress)
            staticcall aAddress.0x16d8a5a9 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(assetOracles[address(arg1)])
            staticcall assetOracles[address(arg1)].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if bool(ext_call.return_data[0]):
                s = 10
                idx = uint8(ext_call.return_data[0]) / 2
                t = 10
                while idx:
                    if not t:
                        if not bool(idx):
                            s = s
                            idx = idx / 2
                            t = 0
                            continue 
                        if s:
                            if 0 / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                        s = 0
                        idx = idx / 2
                        t = 0
                        continue 
                    if t * t / t != t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        s = s
                        idx = idx / 2
                        t = t * t
                        continue 
                    if not s:
                        s = 0
                        idx = idx / 2
                        t = t * t
                        continue 
                    if t * t * s / s != t * t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    s = t * t * s
                    idx = idx / 2
                    t = t * t
                    continue 
            else:
                s = 1
                idx = uint8(ext_call.return_data[0]) / 2
                t = 10
                while idx:
                    if not t:
                        if not bool(idx):
                            s = s
                            idx = idx / 2
                            t = 0
                            continue 
                        if s:
                            if 0 / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                        s = 0
                        idx = idx / 2
                        t = 0
                        continue 
                    if t * t / t != t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        s = s
                        idx = idx / 2
                        t = t * t
                        continue 
                    if not s:
                        s = 0
                        idx = idx / 2
                        t = t * t
                        continue 
                    if t * t * s / s != t * t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    s = t * t * s
                    idx = idx / 2
                    t = t * t
                    continue 
            if uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] < ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: addition overflow'
            if bool(uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1]):
                t = 10
                idx = uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] / 2
                u = 10
                while idx:
                    if not u:
                        if not bool(idx):
                            t = t
                            idx = idx / 2
                            u = 0
                            continue 
                        if t:
                            if 0 / t:
                                revert with 0, 'SafeMath: multiplication overflow'
                        t = 0
                        idx = idx / 2
                        u = 0
                        continue 
                    if u * u / u != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        t = t
                        idx = idx / 2
                        u = u * u
                        continue 
                    if not t:
                        t = 0
                        idx = idx / 2
                        u = u * u
                        continue 
                    if u * u * t / t != u * u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    t = u * u * t
                    idx = idx / 2
                    u = u * u
                    continue 
            else:
                t = 1
                idx = uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] / 2
                u = 10
                while idx:
                    if not u:
                        if not bool(idx):
                            t = t
                            idx = idx / 2
                            u = 0
                            continue 
                        if t:
                            if 0 / t:
                                revert with 0, 'SafeMath: multiplication overflow'
                        t = 0
                        idx = idx / 2
                        u = 0
                        continue 
                    if u * u / u != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        t = t
                        idx = idx / 2
                        u = u * u
                        continue 
                    if not t:
                        t = 0
                        idx = idx / 2
                        u = u * u
                        continue 
                    if u * u * t / t != u * u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    t = u * u * t
                    idx = idx / 2
                    u = u * u
                    continue 
            if not arg2:
                if t <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t:
                    return (0 / t)
            else:
                if 0 / ext_call.return_data[32] * arg2 / arg2 != 0 / ext_call.return_data[32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / ext_call.return_data[32] * arg2:
                    if t <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t:
                        return (0 / t)
                else:
                    if s * 0 / ext_call.return_data[32] * arg2 / 0 / ext_call.return_data[32] * arg2 != s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if t <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t:
                        return (s * 0 / ext_call.return_data[32] * arg2 / t)
            ('iszero', ('var', 2))
    else:
        if s * ext_call.return_data[32] / ext_call.return_data[32] != s:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[32]:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(aAddress)
            staticcall aAddress.0x16d8a5a9 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(assetOracles[address(arg1)])
            staticcall assetOracles[address(arg1)].0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if bool(ext_call.return_data[0]):
                t = 10
                idx = uint8(ext_call.return_data[0]) / 2
                u = 10
                while idx:
                    if not u:
                        if not bool(idx):
                            t = t
                            idx = idx / 2
                            u = 0
                            continue 
                        if t:
                            if 0 / t:
                                revert with 0, 'SafeMath: multiplication overflow'
                        t = 0
                        idx = idx / 2
                        u = 0
                        continue 
                    if u * u / u != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        t = t
                        idx = idx / 2
                        u = u * u
                        continue 
                    if not t:
                        t = 0
                        idx = idx / 2
                        u = u * u
                        continue 
                    if u * u * t / t != u * u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    t = u * u * t
                    idx = idx / 2
                    u = u * u
                    continue 
            else:
                t = 1
                idx = uint8(ext_call.return_data[0]) / 2
                u = 10
                while idx:
                    if not u:
                        if not bool(idx):
                            t = t
                            idx = idx / 2
                            u = 0
                            continue 
                        if t:
                            if 0 / t:
                                revert with 0, 'SafeMath: multiplication overflow'
                        t = 0
                        idx = idx / 2
                        u = 0
                        continue 
                    if u * u / u != u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        t = t
                        idx = idx / 2
                        u = u * u
                        continue 
                    if not t:
                        t = 0
                        idx = idx / 2
                        u = u * u
                        continue 
                    if u * u * t / t != u * u:
                        revert with 0, 'SafeMath: multiplication overflow'
                    t = u * u * t
                    idx = idx / 2
                    u = u * u
                    continue 
            if uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] < ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: addition overflow'
            if bool(uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1]):
                u = 10
                idx = uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] / 2
                v = 10
                while idx:
                    if not v:
                        if not bool(idx):
                            u = u
                            idx = idx / 2
                            v = 0
                            continue 
                        if u:
                            if 0 / u:
                                revert with 0, 'SafeMath: multiplication overflow'
                        u = 0
                        idx = idx / 2
                        v = 0
                        continue 
                    if v * v / v != v:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        u = u
                        idx = idx / 2
                        v = v * v
                        continue 
                    if not u:
                        u = 0
                        idx = idx / 2
                        v = v * v
                        continue 
                    if v * v * u / u != v * v:
                        revert with 0, 'SafeMath: multiplication overflow'
                    u = v * v * u
                    idx = idx / 2
                    v = v * v
                    continue 
            else:
                u = 1
                idx = uint8(ext_call.return_data[0]) + ext_call.return_data[31 len 1] / 2
                v = 10
                while idx:
                    if not v:
                        if not bool(idx):
                            u = u
                            idx = idx / 2
                            v = 0
                            continue 
                        if u:
                            if 0 / u:
                                revert with 0, 'SafeMath: multiplication overflow'
                        u = 0
                        idx = idx / 2
                        v = 0
                        continue 
                    if v * v / v != v:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not bool(idx):
                        u = u
                        idx = idx / 2
                        v = v * v
                        continue 
                    if not u:
                        u = 0
                        idx = idx / 2
                        v = v * v
                        continue 
                    if v * v * u / u != v * v:
                        revert with 0, 'SafeMath: multiplication overflow'
                    u = v * v * u
                    idx = idx / 2
                    v = v * v
                    continue 
            if not arg2:
                if u <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if u:
                    return (0 / u)
            else:
                if s * ext_call.return_data[32] / ext_call.return_data[32] * arg2 / arg2 != s * ext_call.return_data[32] / ext_call.return_data[32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not s * ext_call.return_data[32] / ext_call.return_data[32] * arg2:
                    if u <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if u:
                        return (0 / u)
                else:
                    if t * s * ext_call.return_data[32] / ext_call.return_data[32] * arg2 / s * ext_call.return_data[32] / ext_call.return_data[32] * arg2 != t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if u <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if u:
                        return (t * s * ext_call.return_data[32] / ext_call.return_data[32] * arg2 / u)
            ('iszero', ('var', 3))
    revert
}



}
