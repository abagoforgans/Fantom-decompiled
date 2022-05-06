contract main {




// =====================  Runtime code  =====================


const isPriceOracle = 1

const QUOTE_SYMBOL = '', 0


address adminAddress;
address refAddress;
mapping of address aggregators;
address v1PriceOracleAddress;
array of struct underlyingSymbols;
uint256 maxPriceDiff;

function maxPriceDiff() payable {
    return maxPriceDiff
}

function aggregators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return aggregators[arg1]
}

function ref() payable {
    return refAddress
}

function underlyingSymbols(address arg1) payable {
    return underlyingSymbols[arg1][0 len underlyingSymbols[arg1].length].field_0
}

function admin() payable {
    return adminAddress
}

function v1PriceOracle() payable {
    return v1PriceOracleAddress
}

function _fallback() payable {
    revert
}

function _setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the new admin'
    adminAddress = arg1
    emit AdminUpdated(arg1);
}

function _setMaxPriceDiff(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the max price diff'
    maxPriceDiff = arg1
    emit MaxPriceDiffUpdated(arg1);
}

function _setAggregators(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the aggregators'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        aggregators[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = address(cd[((32 * idx) + arg2 + 36)])
        emit AggregatorUpdated(address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}

function _setUnderlyingSymbols(address[] arg1, string[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the undelrying symbols'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        mem[0] = sha3(address(cd[((32 * idx) + arg1 + 36)]), 4)
        underlyingSymbols[address(cd[((32 * idx) + arg1 + 36)])].field_0 = (2 * cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 1
        s = sha3(sha3(address(cd[((32 * idx) + arg1 + 36)]), 4))
        t = arg2 + cd[(arg2 + (32 * idx) + 36)] + 68
        while arg2 + cd[(arg2 + (32 * idx) + 36)] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 68 > t:
            stor[s] = cd[t]
            s = s + 1
            t = t + 32
            continue 
        t = s
        while sha3(sha3(address(cd[((32 * idx) + arg1 + 36)]), 4)) + (underlyingSymbols[address(cd[((32 * idx) + arg1 + 36)])].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 96 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64] + 96] = 0
        emit UnderlyingSymbolUpdated(address(cd[((32 * idx) + arg1 + 36)]), Array(len=cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)], data=call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]));
        idx = idx + 1
        continue 
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not aggregators[address(arg1)]:
        mem[128] = underlyingSymbols[address(arg1)].field_0
        idx = 128
        s = 0
        while underlyingSymbols[address(arg1)].length + 96 > idx:
            mem[idx + 32] = underlyingSymbols[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if underlyingSymbols[address(arg1)].length != 0:
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(underlyingSymbols[address(arg1)].length) + 96, underlyingSymbols[address(arg1)].length, mem[128 len ceil32(underlyingSymbols[address(arg1)].length)], 3, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require bool(ceil32(underlyingSymbols[address(arg1)].length) + ceil32(return_data.size) + 384 <= test266151307())
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(arg1)
            staticcall arg1.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[0]:
                if 10^(-uint8(ext_call.return_data[0]) + 18):
                    require ext_call.return_data[0]
                    if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 'multiplication overflow', 0
                    if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                        return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0])
    else:
        require ext_code.size(aggregators[address(arg1)])
        staticcall aggregators[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        mem[96 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if 0 == ext_call.return_data[32]:
            mem[ceil32(return_data.size) + 128] = underlyingSymbols[address(arg1)].field_0
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + underlyingSymbols[address(arg1)].length + 96 > idx:
                mem[idx + 32] = underlyingSymbols[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if underlyingSymbols[address(arg1)].length != 0:
                require ext_code.size(refAddress)
                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, ceil32(underlyingSymbols[address(arg1)].length) + 96, underlyingSymbols[address(arg1)].length, mem[ceil32(return_data.size) + 128 len ceil32(underlyingSymbols[address(arg1)].length)], 3, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require bool((2 * ceil32(return_data.size)) + ceil32(underlyingSymbols[address(arg1)].length) + 384 <= test266151307())
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_code.size(arg1)
                staticcall arg1.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(ext_call.return_data[12 len 20])
                staticcall ext_call.return_data[12 len 20].decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[0]:
                    if 10^(-uint8(ext_call.return_data[0]) + 18):
                        require ext_call.return_data[0]
                        if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-uint8(ext_call.return_data[0]) + 18):
                            revert with 0, 'multiplication overflow', 0
                        if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                            return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0])
        else:
            require ext_code.size(aggregators[address(arg1)])
            staticcall aggregators[address(arg1)].decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[32]:
                require ext_code.size(arg1)
                staticcall arg1.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[(6 * ceil32(return_data.size)) + 256] = underlyingSymbols[address(arg1)].field_0
                idx = (6 * ceil32(return_data.size)) + 256
                s = 0
                while (6 * ceil32(return_data.size)) + underlyingSymbols[address(arg1)].length + 224 > idx:
                    mem[idx + 32] = underlyingSymbols[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if underlyingSymbols[address(arg1)].length != 0:
                    require ext_code.size(refAddress)
                    staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                            gas gas_remaining wei
                           args 64, ceil32(underlyingSymbols[address(arg1)].length) + 96, underlyingSymbols[address(arg1)].length, mem[(6 * ceil32(return_data.size)) + 256 len ceil32(underlyingSymbols[address(arg1)].length)], 3, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require bool((7 * ceil32(return_data.size)) + ceil32(underlyingSymbols[address(arg1)].length) + 512 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(ext_call.return_data[12 len 20])
                    staticcall ext_call.return_data[12 len 20].decimals() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if ext_call.return_data[0]:
                        if 10^(-uint8(ext_call.return_data[0]) + 18):
                            require ext_call.return_data[0]
                            if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                revert with 0, 'multiplication overflow', 0
                            if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0])
            else:
                if not 10^(-uint8(ext_call.return_data[0]) + 18):
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[(6 * ceil32(return_data.size)) + 256] = underlyingSymbols[address(arg1)].field_0
                    idx = (6 * ceil32(return_data.size)) + 256
                    s = 0
                    while (6 * ceil32(return_data.size)) + underlyingSymbols[address(arg1)].length + 224 > idx:
                        mem[idx + 32] = underlyingSymbols[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if underlyingSymbols[address(arg1)].length != 0:
                        require ext_code.size(refAddress)
                        staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                                gas gas_remaining wei
                               args 64, ceil32(underlyingSymbols[address(arg1)].length) + 96, underlyingSymbols[address(arg1)].length, mem[(6 * ceil32(return_data.size)) + 256 len ceil32(underlyingSymbols[address(arg1)].length)], 3, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require bool((7 * ceil32(return_data.size)) + ceil32(underlyingSymbols[address(arg1)].length) + 512 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_code.size(arg1)
                        staticcall arg1.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(ext_call.return_data[12 len 20])
                        staticcall ext_call.return_data[12 len 20].decimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[0]:
                            if 10^(-uint8(ext_call.return_data[0]) + 18):
                                require ext_call.return_data[0]
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                    revert with 0, 'multiplication overflow', 0
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                    return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0])
                else:
                    require ext_call.return_data[32]
                    if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / ext_call.return_data[32] != 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 'multiplication overflow', 0
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).decimals() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                        mem[(6 * ceil32(return_data.size)) + 256] = underlyingSymbols[address(arg1)].field_0
                        idx = (6 * ceil32(return_data.size)) + 256
                        s = 0
                        while (6 * ceil32(return_data.size)) + underlyingSymbols[address(arg1)].length + 224 > idx:
                            mem[idx + 32] = underlyingSymbols[address(arg1)][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if underlyingSymbols[address(arg1)].length != 0:
                            require ext_code.size(refAddress)
                            staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                                    gas gas_remaining wei
                                   args 64, ceil32(underlyingSymbols[address(arg1)].length) + 96, underlyingSymbols[address(arg1)].length, mem[(6 * ceil32(return_data.size)) + 256 len ceil32(underlyingSymbols[address(arg1)].length)], 3, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require bool((7 * ceil32(return_data.size)) + ceil32(underlyingSymbols[address(arg1)].length) + 512 <= test266151307())
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_code.size(arg1)
                            staticcall arg1.underlying() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(ext_call.return_data[12 len 20])
                            staticcall ext_call.return_data[12 len 20].decimals() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if ext_call.return_data[0]:
                                if 10^(-uint8(ext_call.return_data[0]) + 18):
                                    require ext_call.return_data[0]
                                    if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                        revert with 0, 'multiplication overflow', 0
                                    if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                        return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0])
                    else:
                        if not 10^(-uint8(ext_call.return_data[0]) + 18):
                            mem[(6 * ceil32(return_data.size)) + 256] = underlyingSymbols[address(arg1)].field_0
                            idx = (6 * ceil32(return_data.size)) + 256
                            s = 0
                            while (6 * ceil32(return_data.size)) + underlyingSymbols[address(arg1)].length + 224 > idx:
                                mem[idx + 32] = underlyingSymbols[address(arg1)][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if underlyingSymbols[address(arg1)].length != 0:
                                require ext_code.size(refAddress)
                                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                                        gas gas_remaining wei
                                       args 64, ceil32(underlyingSymbols[address(arg1)].length) + 96, underlyingSymbols[address(arg1)].length, mem[(6 * ceil32(return_data.size)) + 256 len ceil32(underlyingSymbols[address(arg1)].length)], 3, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require bool((7 * ceil32(return_data.size)) + ceil32(underlyingSymbols[address(arg1)].length) + 512 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                require ext_code.size(arg1)
                                staticcall arg1.underlying() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(ext_call.return_data[12 len 20])
                                staticcall ext_call.return_data[12 len 20].decimals() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if ext_call.return_data[0]:
                                    if 10^(-uint8(ext_call.return_data[0]) + 18):
                                        require ext_call.return_data[0]
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                            revert with 0, 'multiplication overflow', 0
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                            return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0])
                        else:
                            require 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]
                            if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                revert with 0, 'multiplication overflow', 0
                            mem[(6 * ceil32(return_data.size)) + 256] = underlyingSymbols[address(arg1)].field_0
                            idx = (6 * ceil32(return_data.size)) + 256
                            s = 0
                            while (6 * ceil32(return_data.size)) + underlyingSymbols[address(arg1)].length + 224 > idx:
                                mem[idx + 32] = underlyingSymbols[address(arg1)][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == underlyingSymbols[address(arg1)].length:
                                if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                    if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                        return (10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32])
                            else:
                                require ext_code.size(refAddress)
                                staticcall refAddress.getReferenceData(string arg1, string arg2) with:
                                        gas gas_remaining wei
                                       args 64, ceil32(underlyingSymbols[address(arg1)].length) + 96, underlyingSymbols[address(arg1)].length, mem[(6 * ceil32(return_data.size)) + 256 len ceil32(underlyingSymbols[address(arg1)].length)], 3, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require bool((7 * ceil32(return_data.size)) + ceil32(underlyingSymbols[address(arg1)].length) + 512 <= test266151307())
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                require ext_code.size(arg1)
                                staticcall arg1.underlying() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(ext_call.return_data[12 len 20])
                                staticcall ext_call.return_data[12 len 20].decimals() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if not ext_call.return_data[0]:
                                    if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                            return (10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32])
                                else:
                                    if not 10^(-uint8(ext_call.return_data[0]) + 18):
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                                return (10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32])
                                    else:
                                        require ext_call.return_data[0]
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] / ext_call.return_data[0] != 10^(-uint8(ext_call.return_data[0]) + 18):
                                            revert with 0, 'multiplication overflow', 0
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                                if maxPriceDiff + 10^18 < 10^18:
                                                    revert with 0, 'addition overflow', 0
                                                if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] < 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                                        if 0 <= 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                                            revert with 0, 'too much diff between price feeds'
                                                    else:
                                                        if not maxPriceDiff + 10^18:
                                                            if 0 <= 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                                                revert with 0, 'too much diff between price feeds'
                                                        else:
                                                            require 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]
                                                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) + (maxPriceDiff * 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] != maxPriceDiff + 10^18:
                                                                revert with 0, 'multiplication overflow', 0
                                                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) + (maxPriceDiff * 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 10^18 <= 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                                                revert with 0, 'too much diff between price feeds'
                                                else:
                                                    if not 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                                        if 0 <= 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                                            revert with 0, 'too much diff between price feeds'
                                                    else:
                                                        if not maxPriceDiff + 10^18:
                                                            if 0 <= 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                                                revert with 0, 'too much diff between price feeds'
                                                        else:
                                                            require 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]
                                                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]) + (maxPriceDiff * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]) / 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0] != maxPriceDiff + 10^18:
                                                                revert with 0, 'multiplication overflow', 0
                                                            if (10^18 * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]) + (maxPriceDiff * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]) / 10^18 <= 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                                                revert with 0, 'too much diff between price feeds'
                                                if (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]) + (10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) < 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                                    revert with 0, 'addition overflow', 0
                                                return ((10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]) + (10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 2)
                                            if 10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]:
                                                return (10^(-uint8(ext_call.return_data[0]) + 18) * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32])
                                        if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0]:
                                            return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(v1PriceOracleAddress)
    staticcall v1PriceOracleAddress.assetPrices(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
