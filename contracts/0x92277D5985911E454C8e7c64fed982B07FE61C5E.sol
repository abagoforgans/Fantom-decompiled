contract main {




// =====================  Runtime code  =====================


#
#  - sub_18be87c2(?)
#  - getPriceUSD(address arg1)
#
const sub_31e9ecbd(?) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const QUOTE_SYMBOL = 'USD', 0


address adminAddress;
address refAddress;
mapping of address aggregators;
mapping of address sub_0ea8956d;
mapping of address sub_97334305;
address v1PriceOracleAddress;
mapping of struct stor6;
uint256 maxPriceDiff;

function maxPriceDiff() payable {
    return maxPriceDiff
}

function sub_0ea8956d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0ea8956d[arg1]
}

function aggregators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return aggregators[arg1]
}

function ref() payable {
    return refAddress
}

function sub_97334305(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_97334305[arg1]
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

function _setMaxPriceDiff(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the max price diff'
    maxPriceDiff = arg1
    emit MaxPriceDiffUpdated(arg1);
}

function _setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the new admin'
    adminAddress = arg1
    emit AdminUpdated(arg1);
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
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        aggregators[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = address(cd[((32 * idx) + arg2 + 36)])
        emit AggregatorUpdated(address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_30d554fb(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the keeper oracles'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        sub_97334305[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = address(cd[((32 * idx) + cd[36] + 36)])
        emit 0x972ba2db: address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_bf0e7a44(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the keeper oracles'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        sub_0ea8956d[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[96] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[128] = address(cd[((32 * idx) + cd[36] + 36)])
        emit 0x11c4d38d: address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_aecdaffa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_0):
            if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_0):
                if 31 < uint255(stor6[arg1].field_0) * 0.5:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        else:
            if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor6[arg1].field_1 % 128:
                if 31 < stor6[arg1].field_1 % 128:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        mem[ceil32(uint255(stor6[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor6[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor6[arg1].field_0) * 0.5) > uint255(stor6[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor6[arg1].field_0) * 0.5) + (uint255(stor6[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)]), 
    if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor6[arg1].field_0):
        if bool(stor6[arg1].field_0) == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_0):
            if 31 < uint255(stor6[arg1].field_0) * 0.5:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    else:
        if bool(stor6[arg1].field_0) == stor6[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor6[arg1].field_1 % 128:
            if 31 < stor6[arg1].field_1 % 128:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    mem[ceil32(stor6[arg1].field_1 % 128) + 192 len ceil32(stor6[arg1].field_1 % 128)] = mem[128 len ceil32(stor6[arg1].field_1 % 128)]
    if ceil32(stor6[arg1].field_1 % 128) > stor6[arg1].field_1 % 128:
        mem[ceil32(stor6[arg1].field_1 % 128) + stor6[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)], mem[(2 * ceil32(stor6[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor6[arg1].field_1 % 128)]), 
}

function sub_dcbf9002(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the admin may set the symbols'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        if bool(stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0):
            if bool(stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0) == uint255(stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6)
            if not cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 0
                s = sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6))
                while sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6)) + ((uint255(stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
                s = sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6))
                t = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
                while cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 68 > t:
                    stor[s] = cd[t]
                    s = s + 1
                    t = t + 32
                    continue 
                t = s
                while sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6)) + ((uint255(stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * 0.5) + 31 / 32) > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
        else:
            if bool(stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0) == stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6)
            if not cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 0
                s = sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6))
                while sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6)) + (stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
                s = sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6))
                t = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
                while cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 68 > t:
                    stor[s] = cd[t]
                    s = s + 1
                    t = t + 32
                    continue 
                t = s
                while sha3(sha3(address(cd[((32 * idx) + cd[4] + 36)]), 6)) + (stor6[address(cd[((32 * idx) + cd[4] + 36)])].field_1 % 128 + 31 / 32) > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 96 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64] + 96] = 0
        emit 0xe0869a42: address(cd[((32 * idx) + cd[4] + 36)]), Array(len=cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)], data=call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
