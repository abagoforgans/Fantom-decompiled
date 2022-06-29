contract main {




// =====================  Runtime code  =====================


#
#  - rebase()
#  - overrideRebase()
#
address owner;
array of struct transactions;
address sub_4aa7d025Address;
address marketOracleAddress;
uint256 deviationThreshold;
uint256 ceiling;
uint256 rebaseCooldown;
uint256 lastRebaseTimestampSec;
uint256 epoch;
uint256 targetRate;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
uint8 stor10; offset 24
uint256 stor10; offset 16

function sub_2c6b3655(?) payable {
    return bool(uint8(stor10.field_24))
}

function rebaseLocked() payable {
    return bool(uint8(stor10.field_0))
}

function lastRebaseTimestampSec() payable {
    return lastRebaseTimestampSec
}

function sub_4aa7d025(?) payable {
    return sub_4aa7d025Address
}

function sub_50e3ab42(?) payable {
    return bool(uint8(stor10.field_8))
}

function rebaseCooldown() payable {
    return rebaseCooldown
}

function marketOracle() payable {
    return marketOracleAddress
}

function ceiling() payable {
    return ceiling
}

function owner() payable {
    return owner
}

function epoch() payable {
    return epoch
}

function transactionsSize() payable {
    return transactions.length
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < transactions.length
    mem[128] = stor[sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(transactions[arg1].field_0), 
           transactions[arg1].field_0,
           Array(len=stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length])
}

function targetRate() payable {
    return targetRate
}

function deviationThreshold() payable {
    return deviationThreshold
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setMarketOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    marketOracleAddress = arg1
}

function setRebaseLocked(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    uint8(stor10.field_0) = uint8(arg1)
}

function renounceOwnership() payable {
    require msg.sender == owner
    require not uint8(stor10.field_0)
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cooldownExpiryTimestamp() payable {
    if lastRebaseTimestampSec + rebaseCooldown < lastRebaseTimestampSec:
        revert with 0, 'SafeMath: addition overflow'
    return (lastRebaseTimestampSec + rebaseCooldown)
}

function canRebase() payable {
    if uint8(stor10.field_8):
        return 1
    if uint8(stor10.field_0):
        if owner != msg.sender:
            return (msg.sender == owner)
    if lastRebaseTimestampSec + rebaseCooldown < lastRebaseTimestampSec:
        revert with 0, 'SafeMath: addition overflow'
    return (lastRebaseTimestampSec + rebaseCooldown < block.timestamp)
}

function setInitialTargetRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not uint8(stor10.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7743616e6e6f742073657420696e697469616c2072617465206d6f7265207468616e206f6e63,
                    mem[202 len 26]
    targetRate = arg1
    Mask(240, 0, stor10.field_16) = 0
}

function setTransactionEnabled(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe696e646578206d75737420626520696e2072616e6765206f662073746f726564207478206c6973,
                    mem[204 len 24]
    transactions[arg1].field_0 = uint8(arg2)
}

function addTransaction(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    transactions.length++
    transactions[transactions.length].field_0 = 1
    transactions[transactions.length].field_8 = arg1
    if arg2.length:
        stor[sha3((2 * transactions.length) + ('name', 'transactions', 1) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        transactions[transactions.length].field_256 = 0
        idx = 0
        while stor[(2 * transactions.length) + ('name', 'transactions', 1) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * transactions.length) + ('name', 'transactions', 1) + 1)].field_0 = 0
            idx = idx + 1
            continue 
}

function adjustTargetRate() payable {
    require ext_code.size(marketOracleAddress)
    staticcall marketOracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > targetRate:
        if not ext_call.return_data[0]:
            targetRate = 0
        else:
            require ext_call.return_data[0]
            if 10096665523 * ext_call.return_data[0] / ext_call.return_data[0] != 10096665523:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            targetRate = 10096665523 * ext_call.return_data[0] / 10^10
}

function removeTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0, 'index out of bounds'
    if arg1 < transactions.length - 1:
        require transactions.length - 1 < transactions.length
        require arg1 < transactions.length
        transactions[arg1].field_0 = uint8(bool(transactions[transactions.length - 1].field_0))
        transactions[arg1].field_8 = transactions[transactions.length - 1].field_8
        if not stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length:
            transactions[arg1].field_256 = 0
            idx = 0
            while stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length + 31 / 32 > idx:
                stor[idx + sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if 31 >= stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length:
                transactions[arg1].field_256 = transactions[transactions.length - 1].field_256
                idx = 0
                while stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                transactions[arg1].field_256 = Mask(255, 1, (256 * not transactions[transactions.length - 1].field_256) - 1 and transactions[transactions.length - 1].field_256) + 1
                if not Mask(255, 1, (256 * not transactions[transactions.length - 1].field_256) - 1 and transactions[transactions.length - 1].field_256):
                    idx = 0
                    while stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length + 31 / 32 > idx:
                        stor[s + sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_0 = stor[idx + sha3((2 * transactions.length - 1) + ('name', 'transactions', 1) + 1)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length + 31 / 32
                    while stor[(2 * arg1) + ('name', 'transactions', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((2 * arg1) + ('name', 'transactions', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
    require transactions.length
    transactions[transactions.length - 1].field_0 = 0
    transactions[transactions.length - 1].field_8 = 0
    transactions[transactions.length - 1].field_256 = 0
    if 31 < stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length:
        idx = 0
        while stor[(2 * transactions.length - 1) + ('name', 'transactions', 1) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * transactions.length - 1) + ('name', 'transactions', 1) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    transactions.length--
}

function getRebaseValues() payable {
    require ext_code.size(marketOracleAddress)
    staticcall marketOracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require targetRate <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if ext_call.return_data[0] > 2000000 * 10^18:
        if targetRate < 0:
            require -targetRate + 2000000 * 10^18 > 2000000 * 10^18
        else:
            if -targetRate + 2000000 * 10^18 > 2000000 * 10^18:
                require targetRate < 0
                require -targetRate + 2000000 * 10^18 > 2000000 * 10^18
        require ext_code.size(sub_4aa7d025Address)
        staticcall sub_4aa7d025Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if (2000000 * 10^18 * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, -targetRate + 2000000 * 10^18)
        if -targetRate + 2000000 * 10^18:
            require -targetRate + 2000000 * 10^18
            require (2000000 * 10^18 * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / -targetRate + 2000000 * 10^18 == ext_call.return_data[0]
        if targetRate == -1:
            require (2000000 * 10^18 * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
        require targetRate
        if (2000000 * 10^18 * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate <= 0:
            return 2000000 * 10^18, (2000000 * 10^18 * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate
        require ext_code.size(sub_4aa7d025Address)
        staticcall sub_4aa7d025Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + ((2000000 * 10^18 * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] + ((2000000 * 10^18 * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate) <= 0x4d5f0a66a23a9da96249354b393c9aa16bc61b0ae79d:
            return 2000000 * 10^18, (2000000 * 10^18 * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate
        require ext_code.size(sub_4aa7d025Address)
        staticcall sub_4aa7d025Address.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x4d5f0a66a23a9da96249354b393c9aa16bc61b0ae79d:
            revert with 0, 'SafeMath: subtraction overflow'
        require -ext_call.return_data[0] + 0x4d5f0a66a23a9da96249354b393c9aa16bc61b0ae79d <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        return 2000000 * 10^18, -ext_call.return_data[0] + 0x4d5f0a66a23a9da96249354b393c9aa16bc61b0ae79d
    require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if targetRate < 0:
        require ext_call.return_data[0] - targetRate > ext_call.return_data[0]
    else:
        if ext_call.return_data[0] - targetRate > ext_call.return_data[0]:
            require targetRate < 0
            require ext_call.return_data[0] - targetRate > ext_call.return_data[0]
    require ext_code.size(sub_4aa7d025Address)
    staticcall sub_4aa7d025Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require Mask(1, 255, ext_call.return_data[0]) != Mask(1, 255, ext_call.return_data[0] - targetRate)
    if ext_call.return_data[0] - targetRate:
        require ext_call.return_data[0] - targetRate
        require (ext_call.return_data[0] * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / ext_call.return_data[0] - targetRate == ext_call.return_data[0]
    if targetRate == -1:
        require (ext_call.return_data[0] * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
    require targetRate
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate <= 0:
        return ext_call.return_data[0], 
               (ext_call.return_data[0] * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate
    require ext_code.size(sub_4aa7d025Address)
    staticcall sub_4aa7d025Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate) < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate) <= 0x4d5f0a66a23a9da96249354b393c9aa16bc61b0ae79d:
        return ext_call.return_data[0], 
               (ext_call.return_data[0] * ext_call.return_data[0]) - (targetRate * ext_call.return_data[0]) / targetRate
    require ext_code.size(sub_4aa7d025Address)
    staticcall sub_4aa7d025Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x4d5f0a66a23a9da96249354b393c9aa16bc61b0ae79d:
        revert with 0, 'SafeMath: subtraction overflow'
    require -ext_call.return_data[0] + 0x4d5f0a66a23a9da96249354b393c9aa16bc61b0ae79d <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    return ext_call.return_data[0], -ext_call.return_data[0] + 0x4d5f0a66a23a9da96249354b393c9aa16bc61b0ae79d
}



}
