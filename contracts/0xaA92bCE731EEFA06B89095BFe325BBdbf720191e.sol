contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
uint256 period;
uint256 startTime;
uint256 stor4;
address token0Address;
address token1Address;
uint32 blockTimestampLast; offset 160
address pairAddress;
uint256 price0CumulativeLast;
uint256 price1CumulativeLast;
uint256 price0Average;
uint256 price1Average;

function token0() payable {
    return token0Address
}

function getPeriod() payable {
    return period
}

function operator() payable {
    return operatorAddress
}

function price0CumulativeLast() payable {
    return price0CumulativeLast
}

function price1CumulativeLast() payable {
    return price1CumulativeLast
}

function price1Average() payable {
    return price1Average
}

function owner() payable {
    return owner
}

function price0Average() payable {
    return price0Average
}

function pair() payable {
    return pairAddress
}

function blockTimestampLast() payable {
    return blockTimestampLast
}

function getStartTime() payable {
    return startTime
}

function token1() payable {
    return token1Address
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getLastEpoch() payable {
    if startTime > stor4:
        revert with 0, 'SafeMath: subtraction overflow'
    if period <= 0:
        revert with 0, 'SafeMath: division by zero'
    require period
    return (stor4 - startTime / period)
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x776f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    period = arg1
}

function getNextEpoch() payable {
    if startTime > stor4:
        revert with 0, 'SafeMath: subtraction overflow'
    if period <= 0:
        revert with 0, 'SafeMath: division by zero'
    if startTime == stor4:
        require period
        return (stor4 - startTime / period)
    require period
    if (stor4 - startTime / period) + 1 < stor4 - startTime / period:
        revert with 0, 'SafeMath: addition overflow'
    return ((stor4 - startTime / period) + 1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x536f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function getCurrentEpoch() payable {
    if startTime >= block.timestamp:
        if startTime > startTime:
            revert with 0, 'SafeMath: subtraction overflow'
        if period <= 0:
            revert with 0, 'SafeMath: division by zero'
        if period:
            return (0 / period)
    else:
        if startTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if period <= 0:
            revert with 0, 'SafeMath: division by zero'
        if period:
            return (block.timestamp - startTime / period)
    ('iszero', ('stor', ('name', 'period', 2)))
    revert
}

function pairFor(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(sha3(0, arg1, sha3(arg2, arg3), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
    if not arg3:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg3, arg2), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if token0Address == arg1:
        if not arg2:
            return 0
        if 10^12 * arg2 / arg2 != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10^12 * arg2:
            return 0
        require 10^12 * arg2
        if 10^12 * price0Average * arg2 / 10^12 * arg2 != price0Average:
            revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
        return (Mask(32, 112, 10^12 * price0Average * arg2) >> 112)
    if not arg2:
        if token1Address != arg1:
            revert with 0, 'Oracle: INVALID_TOKEN'
        else:
            return 0
    if 10^12 * arg2 / arg2 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if token1Address != arg1:
        revert with 0, 'Oracle: INVALID_TOKEN'
    if not 10^12 * arg2:
        return 0
    require 10^12 * arg2
    if 10^12 * price1Average * arg2 / 10^12 * arg2 != price1Average:
        revert with 0, 32, 35, 0x724669786564506f696e743a204d554c5449504c49434154494f4e5f4f564552464c4f, mem[263 len 29]
    return (Mask(32, 112, 10^12 * price1Average * arg2) >> 112)
}

function nextEpochPoint() payable {
    if startTime > stor4:
        revert with 0, 'SafeMath: subtraction overflow'
    if period <= 0:
        revert with 0, 'SafeMath: division by zero'
    require period
    if startTime == stor4:
        if not stor4 - startTime / period:
            if startTime < startTime:
                revert with 0, 'SafeMath: addition overflow'
            return startTime
        if period * stor4 - startTime / period / stor4 - startTime / period != period:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (period * stor4 - startTime / period) + startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        return ((period * stor4 - startTime / period) + startTime)
    if (stor4 - startTime / period) + 1 < stor4 - startTime / period:
        revert with 0, 'SafeMath: addition overflow'
    if not (stor4 - startTime / period) + 1:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        return startTime
    if period + (stor4 - startTime / period * period) / (stor4 - startTime / period) + 1 != period:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if period + (stor4 - startTime / period * period) + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    return (period + (stor4 - startTime / period * period) + startTime)
}

function update() payable {
    if block.timestamp <= startTime:
        revert with 0, 'Epoch: not started yet'
    if startTime > stor4:
        revert with 0, 'SafeMath: subtraction overflow'
    if period <= 0:
        revert with 0, 'SafeMath: division by zero'
    require period
    if startTime == stor4:
        if startTime >= block.timestamp:
            if startTime > startTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if period <= 0:
                revert with 0, 'SafeMath: division by zero'
            require period
            if 0 / period < stor4 - startTime / period:
                revert with 0, 'Epoch: not allowed'
        else:
            if startTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if period <= 0:
                revert with 0, 'SafeMath: division by zero'
            require period
            if block.timestamp - startTime / period < stor4 - startTime / period:
                revert with 0, 'Epoch: not allowed'
    else:
        if (stor4 - startTime / period) + 1 < stor4 - startTime / period:
            revert with 0, 'SafeMath: addition overflow'
        if startTime >= block.timestamp:
            if startTime > startTime:
                revert with 0, 'SafeMath: subtraction overflow'
            if period <= 0:
                revert with 0, 'SafeMath: division by zero'
            require period
            if 0 / period < (stor4 - startTime / period) + 1:
                revert with 0, 'Epoch: not allowed'
        else:
            if startTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if period <= 0:
                revert with 0, 'SafeMath: division by zero'
            require period
            if block.timestamp - startTime / period < (stor4 - startTime / period) + 1:
                revert with 0, 'Epoch: not allowed'
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x5909c0d5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x5a3d5493 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if uint32(block.timestamp) == ext_call.return_data[92 len 4]:
        if uint32(uint32(block.timestamp) - blockTimestampLast):
            price0Average = Mask(224, 0, ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price1Average = Mask(224, 0, ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price0CumulativeLast = ext_call.return_data[0]
            price1CumulativeLast = ext_call.return_data[0]
            blockTimestampLast = uint32(block.timestamp)
            emit Updated(ext_call.return_data[0], ext_call.return_data[0]);
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        require Mask(112, 0, ext_call.return_data[32])
        if uint32(uint32(block.timestamp) - blockTimestampLast):
            price0Average = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price0CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price1Average = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - price1CumulativeLast / uint32(uint32(block.timestamp) - blockTimestampLast))
            price0CumulativeLast = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            price1CumulativeLast = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            blockTimestampLast = uint32(block.timestamp)
            emit Updated((Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0], (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]);
    stor4 = block.timestamp
}



}
