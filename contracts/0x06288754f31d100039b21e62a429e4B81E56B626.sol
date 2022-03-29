contract main {




// =====================  Runtime code  =====================


#
#  - getUnderlyingPrice(address arg1)
#
const QUOTE_SYMBOL = '', 0


address adminAddress;
address refAddress;
mapping of address aggregators;
address v1PriceOracleAddress;
array of uint256 underlyingSymbols;
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
    return underlyingSymbols[arg1][0 len underlyingSymbols[arg1].length]
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
        underlyingSymbols[address(cd[((32 * idx) + arg1 + 36)])] = (2 * cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 1
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



}
