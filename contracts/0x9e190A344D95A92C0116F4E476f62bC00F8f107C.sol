contract main {




// =====================  Runtime code  =====================


#
#  - removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, address arg7, address arg8, address arg9, uint256 arg10, uint256 arg11, address arg12, uint256 arg13, uint8 arg14, bytes32 arg15, bytes32 arg16, uint256 arg17, address[][] arg18)
#  - swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5, address arg6, address arg7, address arg8, uint256 arg9, uint256 arg10, address arg11, uint256 arg12, uint8 arg13, bytes32 arg14, bytes32 arg15, uint256 arg16, address[][] arg17)
#  - removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, address arg7, address arg8, address arg9, uint256 arg10, uint256 arg11, address arg12, uint256 arg13, uint8 arg14, bytes32 arg15, bytes32 arg16, uint256 arg17, address[][] arg18)
#  - swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5, address arg6, address arg7, address arg8, uint256 arg9, uint256 arg10, address arg11, uint256 arg12, uint8 arg13, bytes32 arg14, bytes32 arg15, uint256 arg16, address[][] arg17)
#  - swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4, address arg5, address arg6, address arg7, uint256 arg8, uint256 arg9, address arg10, uint256 arg11, uint8 arg12, bytes32 arg13, bytes32 arg14, uint256 arg15, address[][] arg16)
#  - removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, bool arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, address arg11, address arg12, address arg13, uint256 arg14, uint256 arg15, address arg16, uint256 arg17, uint8 arg18, bytes32 arg19, bytes32 arg20, uint256 arg21, address[][] arg22)
#  - swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5, address arg6, address arg7, address arg8, uint256 arg9, uint256 arg10, address arg11, uint256 arg12, uint8 arg13, bytes32 arg14, bytes32 arg15, uint256 arg16, address[][] arg17)
#  - swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5, address arg6, address arg7, address arg8, uint256 arg9, uint256 arg10, address arg11, uint256 arg12, uint8 arg13, bytes32 arg14, bytes32 arg15, uint256 arg16, address[][] arg17)
#  - fillOrder(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address[] arg12)
#  - swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5, address arg6, address arg7, address arg8, uint256 arg9, uint256 arg10, address arg11, uint256 arg12, uint8 arg13, bytes32 arg14, bytes32 arg15, uint256 arg16, address[][] arg17)
#  - addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, address arg7, address arg8, address arg9, uint256 arg10, uint256 arg11, address arg12, uint256 arg13, uint8 arg14, bytes32 arg15, bytes32 arg16, uint256 arg17, address[][] arg18)
#  - swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5, address arg6, address arg7, address arg8, uint256 arg9, uint256 arg10, address arg11, uint256 arg12, uint8 arg13, bytes32 arg14, bytes32 arg15, uint256 arg16, address[][] arg17)
#  - removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, address arg8, address arg9, address arg10, uint256 arg11, uint256 arg12, address arg13, uint256 arg14, uint8 arg15, bytes32 arg16, bytes32 arg17, uint256 arg18, address[][] arg19)
#  - swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4, address arg5, address arg6, address arg7, uint256 arg8, uint256 arg9, address arg10, uint256 arg11, uint8 arg12, bytes32 arg13, bytes32 arg14, uint256 arg15, address[][] arg16)
#  - fillOrders(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address[][] arg12)
#  - addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8, address arg9, address arg10, address arg11, uint256 arg12, uint256 arg13, address arg14, uint256 arg15, uint8 arg16, bytes32 arg17, bytes32 arg18, uint256 arg19, address[][] arg20)
#  - swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4, address arg5, address arg6, address arg7, uint256 arg8, uint256 arg9, address arg10, uint256 arg11, uint8 arg12, bytes32 arg13, bytes32 arg14, uint256 arg15, address[][] arg16)
#
address owner;
address factoryAddress;
uint8 stor2; offset 160
address WETHAddress;
array of struct stor3;
array of struct numberOfCanceledHashesOfMaker;
array of struct numberOfCanceledHashesOfFromToken;
array of struct numberOfCanceledHashesOfToToken;
mapping of uint8 stor7;
mapping of uint256 filledAmountInOfHash;
address sushiAddress;
address feeSplitRecipientAddress;
uint256 feeNumerator;
uint256 feeSplitNumerator;

function sushi() {
    return sushiAddress
}

function numberOfCanceledHashesOfToToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numberOfCanceledHashesOfToToken[address(arg1)].field_0
}

function numberOfAllCanceledHashes() {
    return stor3.length
}

function feeSplitNumerator() {
    return feeSplitNumerator
}

function filledAmountInOfHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return filledAmountInOfHash[arg1]
}

function numberOfCanceledHashesOfFromToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numberOfCanceledHashesOfFromToken[address(arg1)].field_0
}

function owner() {
    return owner
}

function feeSplitRecipient() {
    return feeSplitRecipientAddress
}

function WETH() {
    return WETHAddress
}

function numberOfCanceledHashesOfMaker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numberOfCanceledHashesOfMaker[address(arg1)].field_0
}

function canceledOfHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function factory() {
    return factoryAddress
}

function feeNumerator() {
    return feeNumerator
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'msg-sender-not-owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'msg-sender-not-owner'
    feeNumerator = arg1
    feeSplitNumerator = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'msg-sender-not-owner'
    if not arg1:
        revert with 0, 'invalid-address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function hashOfOrder(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg6 == arg6
    return sha3(0x2f6dc7ce3eb5b1bd3bb37a6ff443d8c9922f817e83adacce3f8c7cdda6fa1e4, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor2:
        revert with 0, 'already-initialized'
    owner = arg1
    factoryAddress = arg2
    WETHAddress = arg3
    sushiAddress = arg4
    feeSplitRecipientAddress = arg5
    feeNumerator = arg6
    feeSplitNumerator = arg7
    stor2 = 1
}

function quote(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if not arg3:
        if arg2:
            return (0 / arg2)
    else:
        if arg3:
            if arg1 * arg3 / arg3 != arg1:
                revert with 0, 'ds-math-mul-overflow'
            if arg2:
                return (arg1 * arg3 / arg2)
    revert
}

function allCanceledHashes(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor3.length:
        mem[128] = uint256(stor3.field_0)
        if (32 * stor3.length) + 32 > 64:
            mem[160] = uint256(stor3.field_256)
            idx = 160
            s = 1
            while (32 * stor3.length) + 96 > idx:
                mem[idx + 32] = stor3[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    require arg2 <= test266151307()
    mem[(32 * stor3.length) + 128] = arg2
    if arg2:
        mem[(32 * stor3.length) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if (arg1 * arg2) + idx >= stor3.length:
            require idx < arg2
            mem[(32 * idx) + (32 * stor3.length) + 160] = 0
        else:
            require (arg1 * arg2) + idx < stor3.length
            require idx < arg2
            mem[(32 * idx) + (32 * stor3.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 128]
        idx = idx + 1
        continue 
    return Array(len=arg2, data=mem[(32 * stor3.length) + 160 len 32 * arg2])
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if 997 * arg1 / 997 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not arg3:
        if 1000 * arg2 / 1000 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
            revert with 0, 'ds-math-add-overflow'
        if (1000 * arg2) + (997 * arg1):
            return (0 / (1000 * arg2) + (997 * arg1))
    else:
        if arg3:
            if 997 * arg1 * arg3 / arg3 != 997 * arg1:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * arg2 / 1000 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
                revert with 0, 'ds-math-add-overflow'
            if (1000 * arg2) + (997 * arg1):
                return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
    revert
}

function canceledHashesOfToToken(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if numberOfCanceledHashesOfToToken[address(arg1)].field_0:
        mem[128] = numberOfCanceledHashesOfToToken[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * numberOfCanceledHashesOfToToken[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = numberOfCanceledHashesOfToToken[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require arg3 <= test266151307()
    mem[(32 * numberOfCanceledHashesOfToToken[address(arg1)].field_0) + 128] = arg3
    if arg3:
        mem[(32 * numberOfCanceledHashesOfToToken[address(arg1)].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        if (arg2 * arg3) + idx >= numberOfCanceledHashesOfToToken[address(arg1)].field_0:
            require idx < arg3
            mem[(32 * idx) + (32 * numberOfCanceledHashesOfToToken[address(arg1)].field_0) + 160] = 0
        else:
            require (arg2 * arg3) + idx < numberOfCanceledHashesOfToToken[address(arg1)].field_0
            require idx < arg3
            mem[(32 * idx) + (32 * numberOfCanceledHashesOfToToken[address(arg1)].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
        idx = idx + 1
        continue 
    return Array(len=arg3, data=mem[(32 * numberOfCanceledHashesOfToToken[address(arg1)].field_0) + 160 len 32 * arg3])
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if not arg1:
        if arg3 - arg1 > arg3:
            revert with 0, 'ds-math-sub-underflow'
        if (997 * arg3) - (997 * arg1) / 997 != arg3 - arg1:
            revert with 0, 'ds-math-mul-overflow'
        require (997 * arg3) - (997 * arg1)
        if (0 / (997 * arg3) - (997 * arg1)) + 1 < 0 / (997 * arg3) - (997 * arg1):
            revert with 0, 'ds-math-add-overflow'
        return ((0 / (997 * arg3) - (997 * arg1)) + 1)
    require arg1
    if arg2 * arg1 / arg1 != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * arg2 * arg1 / 1000 != arg2 * arg1:
        revert with 0, 'ds-math-mul-overflow'
    if arg3 - arg1 > arg3:
        revert with 0, 'ds-math-sub-underflow'
    if (997 * arg3) - (997 * arg1) / 997 != arg3 - arg1:
        revert with 0, 'ds-math-mul-overflow'
    require (997 * arg3) - (997 * arg1)
    if (1000 * arg2 * arg1 / (997 * arg3) - (997 * arg1)) + 1 < 1000 * arg2 * arg1 / (997 * arg3) - (997 * arg1):
        revert with 0, 'ds-math-add-overflow'
    return ((1000 * arg2 * arg1 / (997 * arg3) - (997 * arg1)) + 1)
}

function cancelOrder(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg6 == arg6
    if arg1 != msg.sender:
        revert with 0, 'not-called-by-maker'
    stor3.length++
    stor3[stor3.length].field_0 = sha3(0x2f6dc7ce3eb5b1bd3bb37a6ff443d8c9922f817e83adacce3f8c7cdda6fa1e4, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    numberOfCanceledHashesOfMaker[address(arg1)].field_0++
    numberOfCanceledHashesOfMaker[address(arg1)][numberOfCanceledHashesOfMaker[address(arg1)].field_0].field_0 = sha3(0x2f6dc7ce3eb5b1bd3bb37a6ff443d8c9922f817e83adacce3f8c7cdda6fa1e4, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    numberOfCanceledHashesOfFromToken[address(arg2)].field_0++
    numberOfCanceledHashesOfFromToken[address(arg2)][numberOfCanceledHashesOfFromToken[address(arg2)].field_0].field_0 = sha3(0x2f6dc7ce3eb5b1bd3bb37a6ff443d8c9922f817e83adacce3f8c7cdda6fa1e4, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    numberOfCanceledHashesOfToToken[address(arg3)].field_0++
    numberOfCanceledHashesOfToToken[address(arg3)][numberOfCanceledHashesOfToToken[address(arg3)].field_0].field_0 = sha3(0x2f6dc7ce3eb5b1bd3bb37a6ff443d8c9922f817e83adacce3f8c7cdda6fa1e4, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    stor7[0x2f6dc7ce3eb5b1bd3bb37a6ff443d8c9922f817e83adacce3f8c7cdda6fa1e4][arg1][arg2][arg3][arg4][arg5][arg6][arg7] = 1
    emit OrderCanceled(sha3(0x2f6dc7ce3eb5b1bd3bb37a6ff443d8c9922f817e83adacce3f8c7cdda6fa1e4, arg1, arg2, arg3, arg4, arg5, arg6, arg7));
}

function canceledHashesOfMaker(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if numberOfCanceledHashesOfMaker[address(arg1)].field_0:
        mem[128] = numberOfCanceledHashesOfMaker[address(arg1)].field_0
        if (32 * numberOfCanceledHashesOfMaker[address(arg1)].field_0) + 32 > 64:
            mem[160] = numberOfCanceledHashesOfMaker[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * numberOfCanceledHashesOfMaker[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = numberOfCanceledHashesOfMaker[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    require arg3 <= test266151307()
    mem[(32 * numberOfCanceledHashesOfMaker[address(arg1)].field_0) + 128] = arg3
    if arg3:
        mem[(32 * numberOfCanceledHashesOfMaker[address(arg1)].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        if (arg2 * arg3) + idx >= numberOfCanceledHashesOfMaker[address(arg1)].field_0:
            require idx < arg3
            mem[(32 * idx) + (32 * numberOfCanceledHashesOfMaker[address(arg1)].field_0) + 160] = 0
        else:
            require (arg2 * arg3) + idx < numberOfCanceledHashesOfMaker[address(arg1)].field_0
            require idx < arg3
            mem[(32 * idx) + (32 * numberOfCanceledHashesOfMaker[address(arg1)].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
        idx = idx + 1
        continue 
    return Array(len=arg3, data=mem[(32 * numberOfCanceledHashesOfMaker[address(arg1)].field_0) + 160 len 32 * arg3])
}

function canceledHashesOfFromToken(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if numberOfCanceledHashesOfFromToken[address(arg1)].field_0:
        mem[128] = numberOfCanceledHashesOfFromToken[address(arg1)].field_0
        if (32 * numberOfCanceledHashesOfFromToken[address(arg1)].field_0) + 32 > 64:
            mem[160] = numberOfCanceledHashesOfFromToken[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * numberOfCanceledHashesOfFromToken[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = numberOfCanceledHashesOfFromToken[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    require arg3 <= test266151307()
    mem[(32 * numberOfCanceledHashesOfFromToken[address(arg1)].field_0) + 128] = arg3
    if arg3:
        mem[(32 * numberOfCanceledHashesOfFromToken[address(arg1)].field_0) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        if (arg2 * arg3) + idx >= numberOfCanceledHashesOfFromToken[address(arg1)].field_0:
            require idx < arg3
            mem[(32 * idx) + (32 * numberOfCanceledHashesOfFromToken[address(arg1)].field_0) + 160] = 0
        else:
            require (arg2 * arg3) + idx < numberOfCanceledHashesOfFromToken[address(arg1)].field_0
            require idx < arg3
            mem[(32 * idx) + (32 * numberOfCanceledHashesOfFromToken[address(arg1)].field_0) + 160] = mem[(32 * (arg2 * arg3) + idx) + 128]
        idx = idx + 1
        continue 
    return Array(len=arg3, data=mem[(32 * numberOfCanceledHashesOfFromToken[address(arg1)].field_0) + 160 len 32 * arg3])
}

function removeLiquidityETHWithPermit(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, bool arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, address arg11, address arg12, address arg13, uint256 arg14, uint256 arg15, address arg16, uint256 arg17, uint8 arg18, bytes32 arg19, bytes32 arg20, uint256 arg21, address[][] arg22) {
    require calldata.size - 4 >= 352
    require arg1 == arg1
    require arg5 == arg5
    require arg7 == arg7
    require arg8 == arg8
    require arg11 <= test266151307()
    require arg11 + 35 < calldata.size
    require arg11.length <= test266151307()
    require (32 * arg11.length) + 128 >= 96 and (32 * arg11.length) + 128 <= test266151307()
    mem[64] = (32 * arg11.length) + 128
    idx = 0
    s = arg11 + 36
    t = 128
    while idx < arg11.length:
        require calldata.size + -arg11 + -cd[s] - 36 >= 384
        _8 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require calldata.size + -arg11 + -cd[s] - 36 >= 320
        _10 = mem[64]
        require mem[64] + 320 >= mem[64] and mem[64] + 320 <= test266151307()
        mem[64] = mem[64] + 320
        require cd[(arg11 + cd[s] + 36)] == address(cd[(arg11 + cd[s] + 36)])
        mem[_10] = cd[(arg11 + cd[s] + 36)]
        require cd[(arg11 + cd[s] + 68)] == address(cd[(arg11 + cd[s] + 68)])
        mem[_10 + 32] = cd[(arg11 + cd[s] + 68)]
        require cd[(arg11 + cd[s] + 100)] == address(cd[(arg11 + cd[s] + 100)])
        mem[_10 + 64] = cd[(arg11 + cd[s] + 100)]
        mem[_10 + 96] = cd[(arg11 + cd[s] + 132)]
        mem[_10 + 128] = cd[(arg11 + cd[s] + 164)]
        require cd[(arg11 + cd[s] + 196)] == address(cd[(arg11 + cd[s] + 196)])
        mem[_10 + 160] = cd[(arg11 + cd[s] + 196)]
        mem[_10 + 192] = cd[(arg11 + cd[s] + 228)]
        require cd[(arg11 + cd[s] + 260)] == uint8(cd[(arg11 + cd[s] + 260)])
        mem[_10 + 224] = cd[(arg11 + cd[s] + 260)]
        mem[_10 + 256] = cd[(arg11 + cd[s] + 292)]
        mem[_10 + 288] = cd[(arg11 + cd[s] + 324)]
        mem[_8] = _10
        mem[_8 + 32] = cd[(arg11 + cd[s] + 356)]
        require cd[(arg11 + cd[s] + 388)] <= test266151307()
        require arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 67 < calldata.size
        require cd[(arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 36)] <= test266151307()
        _11 = mem[64]
        require mem[64] + (32 * cd[(arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 36)]) + 32
        mem[_11] = cd[(arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 36)]
        require calldata.size >= arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + (32 * cd[(arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 36)]) + 68
        u = 0
        v = arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 68
        w = _11 + 32
        while u < cd[(arg11 + cd[s] + cd[(arg11 + cd[s] + 388)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_8 + 64] = _11
        mem[t] = _8
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    revert with 0, 'Unimplemented'
}

function removeLiquidityWithPermit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, bool arg8, uint8 arg9, bytes32 arg10, bytes32 arg11, address arg12, address arg13, address arg14, uint256 arg15, uint256 arg16, address arg17, uint256 arg18, uint8 arg19, bytes32 arg20, bytes32 arg21, uint256 arg22, address[][] arg23) {
    require calldata.size - 4 >= 384
    require arg1 == arg1
    require arg2 == arg2
    require arg6 == arg6
    require arg8 == arg8
    require arg9 == arg9
    require arg12 <= test266151307()
    require arg12 + 35 < calldata.size
    require arg12.length <= test266151307()
    require (32 * arg12.length) + 128 >= 96 and (32 * arg12.length) + 128 <= test266151307()
    mem[64] = (32 * arg12.length) + 128
    idx = 0
    s = arg12 + 36
    t = 128
    while idx < arg12.length:
        require calldata.size + -arg12 + -cd[s] - 36 >= 384
        _8 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require calldata.size + -arg12 + -cd[s] - 36 >= 320
        _10 = mem[64]
        require mem[64] + 320 >= mem[64] and mem[64] + 320 <= test266151307()
        mem[64] = mem[64] + 320
        require cd[(arg12 + cd[s] + 36)] == address(cd[(arg12 + cd[s] + 36)])
        mem[_10] = cd[(arg12 + cd[s] + 36)]
        require cd[(arg12 + cd[s] + 68)] == address(cd[(arg12 + cd[s] + 68)])
        mem[_10 + 32] = cd[(arg12 + cd[s] + 68)]
        require cd[(arg12 + cd[s] + 100)] == address(cd[(arg12 + cd[s] + 100)])
        mem[_10 + 64] = cd[(arg12 + cd[s] + 100)]
        mem[_10 + 96] = cd[(arg12 + cd[s] + 132)]
        mem[_10 + 128] = cd[(arg12 + cd[s] + 164)]
        require cd[(arg12 + cd[s] + 196)] == address(cd[(arg12 + cd[s] + 196)])
        mem[_10 + 160] = cd[(arg12 + cd[s] + 196)]
        mem[_10 + 192] = cd[(arg12 + cd[s] + 228)]
        require cd[(arg12 + cd[s] + 260)] == uint8(cd[(arg12 + cd[s] + 260)])
        mem[_10 + 224] = cd[(arg12 + cd[s] + 260)]
        mem[_10 + 256] = cd[(arg12 + cd[s] + 292)]
        mem[_10 + 288] = cd[(arg12 + cd[s] + 324)]
        mem[_8] = _10
        mem[_8 + 32] = cd[(arg12 + cd[s] + 356)]
        require cd[(arg12 + cd[s] + 388)] <= test266151307()
        require arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 67 < calldata.size
        require cd[(arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 36)] <= test266151307()
        _11 = mem[64]
        require mem[64] + (32 * cd[(arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 36)]) + 32
        mem[_11] = cd[(arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 36)]
        require calldata.size >= arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + (32 * cd[(arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 36)]) + 68
        u = 0
        v = arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 68
        w = _11 + 32
        while u < cd[(arg12 + cd[s] + cd[(arg12 + cd[s] + 388)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_8 + 64] = _11
        mem[t] = _8
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    revert with 0, 'Unimplemented'
}

function getAmountsOut(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg2.length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg2.length) + 160] = arg1
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[96]
            _1056 = mem[(32 * idx) + 128]
            require idx + 1 < mem[96]
            _1060 = mem[(32 * idx + 1) + 128]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1098 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_1060)
                    _1114 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1116 = sha3(mem[_1114 + 32 len mem[_1114]])
                    mem[_1098 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1098 + 105] = Mask(160, 96, factoryAddress)
                    mem[_1098 + 125] = _1116
                    mem[_1098 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                    mem[_1098 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _1116, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                    staticcall address(sha3(0, factoryAddress, _1116, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1098 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1098 + ceil32(return_data.size) + 189
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1099 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_1056)
                    _1118 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1120 = sha3(mem[_1118 + 32 len mem[_1118]])
                    mem[_1099 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1099 + 105] = Mask(160, 96, factoryAddress)
                    mem[_1099 + 125] = _1120
                    mem[_1099 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                    mem[_1099 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _1120, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                    staticcall address(sha3(0, factoryAddress, _1120, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1099 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1099 + ceil32(return_data.size) + 189
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require idx < mem[(32 * arg2.length) + 128]
                if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(_1056) == address(_1056):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 != mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    else:
                        require ext_call.return_data[50 len 14]
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 != mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    else:
                        require ext_call.return_data[18 len 14]
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1100 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(_1060)
                    _1122 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1124 = sha3(mem[_1122 + 32 len mem[_1122]])
                    mem[_1100 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1100 + 105] = Mask(160, 96, factoryAddress)
                    mem[_1100 + 125] = _1124
                    mem[_1100 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                    mem[_1100 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _1124, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                    staticcall address(sha3(0, factoryAddress, _1124, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1100 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1100 + ceil32(return_data.size) + 189
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1101 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                    mem[mem[64] + 52] = address(_1056)
                    _1126 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1128 = sha3(mem[_1126 + 32 len mem[_1126]])
                    mem[_1101 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1101 + 105] = Mask(160, 96, factoryAddress)
                    mem[_1101 + 125] = _1128
                    mem[_1101 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                    mem[_1101 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _1128, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                    staticcall address(sha3(0, factoryAddress, _1128, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1101 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1101 + ceil32(return_data.size) + 189
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require idx < mem[(32 * arg2.length) + 128]
                if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if address(_1056) == address(_1060):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 != mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    else:
                        require ext_call.return_data[50 len 14]
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 != mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    else:
                        require ext_call.return_data[18 len 14]
                        if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _1064 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len 32 * _1064] = mem[(32 * arg2.length) + 160 len 32 * _1064]
        return 32, mem[mem[64] + 32 len (32 * _1064) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg2.length) + 160] = arg1
    idx = 0
    while idx < arg2.length - 1:
        require idx < mem[96]
        _1058 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _1061 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1102 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_1061)
                _1130 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1132 = sha3(mem[_1130 + 32 len mem[_1130]])
                mem[_1102 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1102 + 105] = Mask(160, 96, factoryAddress)
                mem[_1102 + 125] = _1132
                mem[_1102 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                mem[_1102 + 72] = 85
                require ext_code.size(address(sha3(0, factoryAddress, _1132, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                staticcall address(sha3(0, factoryAddress, _1132, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                        gas gas_remaining wei
                mem[_1102 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1102 + ceil32(return_data.size) + 189
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1103 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_1058)
                _1134 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1136 = sha3(mem[_1134 + 32 len mem[_1134]])
                mem[_1103 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1103 + 105] = Mask(160, 96, factoryAddress)
                mem[_1103 + 125] = _1136
                mem[_1103 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                mem[_1103 + 72] = 85
                require ext_code.size(address(sha3(0, factoryAddress, _1136, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                staticcall address(sha3(0, factoryAddress, _1136, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                        gas gas_remaining wei
                mem[_1103 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1103 + ceil32(return_data.size) + 189
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require idx < mem[(32 * arg2.length) + 128]
            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if address(_1058) == address(_1058):
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 != mem[(32 * idx) + (32 * arg2.length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 != mem[(32 * idx) + (32 * arg2.length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1104 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(_1061)
                _1138 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1140 = sha3(mem[_1138 + 32 len mem[_1138]])
                mem[_1104 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1104 + 105] = Mask(160, 96, factoryAddress)
                mem[_1104 + 125] = _1140
                mem[_1104 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                mem[_1104 + 72] = 85
                require ext_code.size(address(sha3(0, factoryAddress, _1140, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                staticcall address(sha3(0, factoryAddress, _1140, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                        gas gas_remaining wei
                mem[_1104 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1104 + ceil32(return_data.size) + 189
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1105 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                mem[mem[64] + 52] = address(_1058)
                _1142 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1144 = sha3(mem[_1142 + 32 len mem[_1142]])
                mem[_1105 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1105 + 105] = Mask(160, 96, factoryAddress)
                mem[_1105 + 125] = _1144
                mem[_1105 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                mem[_1105 + 72] = 85
                require ext_code.size(address(sha3(0, factoryAddress, _1144, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                staticcall address(sha3(0, factoryAddress, _1144, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                        gas gas_remaining wei
                mem[_1105 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1105 + ceil32(return_data.size) + 189
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require idx < mem[(32 * arg2.length) + 128]
            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if address(_1058) == address(_1061):
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 != mem[(32 * idx) + (32 * arg2.length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                else:
                    require ext_call.return_data[50 len 14]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] / 997 != mem[(32 * idx) + (32 * arg2.length) + 160]:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                else:
                    require ext_call.return_data[18 len 14]
                    if 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    require idx + 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx + 1) + (32 * arg2.length) + 160] = 997 * mem[(32 * idx) + (32 * arg2.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _1065 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len 32 * _1065] = mem[(32 * arg2.length) + 160 len 32 * _1065]
    return 32, mem[mem[64] + 32 len (32 * _1065) + 32]
}

function getAmountsIn(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg2.length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        require arg2.length - 1 < arg2.length
        mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
        idx = mem[96] - 1
        while idx:
            require idx - 1 < mem[96]
            require idx < mem[96]
            _1190 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1228 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_1190)
                    _1244 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1246 = sha3(mem[_1244 + 32 len mem[_1244]])
                    mem[_1228 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1228 + 105] = Mask(160, 96, factoryAddress)
                    mem[_1228 + 125] = _1246
                    mem[_1228 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                    mem[_1228 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _1246, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                    staticcall address(sha3(0, factoryAddress, _1246, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1228 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1228 + ceil32(return_data.size) + 189
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1229 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _1248 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1250 = sha3(mem[_1248 + 32 len mem[_1248]])
                    mem[_1229 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1229 + 105] = Mask(160, 96, factoryAddress)
                    mem[_1229 + 125] = _1250
                    mem[_1229 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                    mem[_1229 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _1250, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                    staticcall address(sha3(0, factoryAddress, _1250, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1229 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1229 + ceil32(return_data.size) + 189
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require idx < mem[(32 * arg2.length) + 128]
                if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                    else:
                        require mem[(32 * idx) + (32 * arg2.length) + 160]
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                    else:
                        require mem[(32 * idx) + (32 * arg2.length) + 160]
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1230 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_1190)
                    _1252 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1254 = sha3(mem[_1252 + 32 len mem[_1252]])
                    mem[_1230 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1230 + 105] = Mask(160, 96, factoryAddress)
                    mem[_1230 + 125] = _1254
                    mem[_1230 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                    mem[_1230 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _1254, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                    staticcall address(sha3(0, factoryAddress, _1254, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1230 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1230 + ceil32(return_data.size) + 189
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1231 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _1256 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1258 = sha3(mem[_1256 + 32 len mem[_1256]])
                    mem[_1231 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1231 + 105] = Mask(160, 96, factoryAddress)
                    mem[_1231 + 125] = _1258
                    mem[_1231 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                    mem[_1231 + 72] = 85
                    require ext_code.size(address(sha3(0, factoryAddress, _1258, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                    staticcall address(sha3(0, factoryAddress, _1258, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1231 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1231 + ceil32(return_data.size) + 189
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require idx < mem[(32 * arg2.length) + 128]
                if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                if mem[(32 * idx - 1) + 140 len 20] == address(_1190):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                    else:
                        require mem[(32 * idx) + (32 * arg2.length) + 160]
                        if ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                    else:
                        require mem[(32 * idx) + (32 * arg2.length) + 160]
                        if ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-sub-underflow'
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                            revert with 0, 'ds-math-mul-overflow'
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                        if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                            revert with 0, 'ds-math-add-overflow'
                        require idx - 1 < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
            idx = idx - 1
            continue 
        mem[mem[64]] = 32
        _1194 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len 32 * _1194] = mem[(32 * arg2.length) + 160 len 32 * _1194]
        return 32, mem[mem[64] + 32 len (32 * _1194) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length - 1 < arg2.length
    mem[(32 * arg2.length - 1) + (32 * arg2.length) + 160] = arg1
    idx = mem[96] - 1
    while idx:
        require idx - 1 < mem[96]
        require idx < mem[96]
        _1191 = mem[(32 * idx) + 128]
        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
            if not mem[(32 * idx - 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1232 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_1191)
                _1260 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1262 = sha3(mem[_1260 + 32 len mem[_1260]])
                mem[_1232 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1232 + 105] = Mask(160, 96, factoryAddress)
                mem[_1232 + 125] = _1262
                mem[_1232 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                mem[_1232 + 72] = 85
                require ext_code.size(address(sha3(0, factoryAddress, _1262, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                staticcall address(sha3(0, factoryAddress, _1262, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                        gas gas_remaining wei
                mem[_1232 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1232 + ceil32(return_data.size) + 189
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1233 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _1264 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1266 = sha3(mem[_1264 + 32 len mem[_1264]])
                mem[_1233 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1233 + 105] = Mask(160, 96, factoryAddress)
                mem[_1233 + 125] = _1266
                mem[_1233 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                mem[_1233 + 72] = 85
                require ext_code.size(address(sha3(0, factoryAddress, _1266, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                staticcall address(sha3(0, factoryAddress, _1266, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                        gas gas_remaining wei
                mem[_1233 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1233 + ceil32(return_data.size) + 189
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require idx < mem[(32 * arg2.length) + 128]
            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                        revert with 0, 'ds-math-add-overflow'
                    require idx - 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                else:
                    require mem[(32 * idx) + (32 * arg2.length) + 160]
                    if ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                        revert with 0, 'ds-math-add-overflow'
                    require idx - 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                        revert with 0, 'ds-math-add-overflow'
                    require idx - 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                else:
                    require mem[(32 * idx) + (32 * arg2.length) + 160]
                    if ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                        revert with 0, 'ds-math-add-overflow'
                    require idx - 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
        else:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1234 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_1191)
                _1268 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1270 = sha3(mem[_1268 + 32 len mem[_1268]])
                mem[_1234 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1234 + 105] = Mask(160, 96, factoryAddress)
                mem[_1234 + 125] = _1270
                mem[_1234 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                mem[_1234 + 72] = 85
                require ext_code.size(address(sha3(0, factoryAddress, _1270, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                staticcall address(sha3(0, factoryAddress, _1270, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                        gas gas_remaining wei
                mem[_1234 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1234 + ceil32(return_data.size) + 189
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1235 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _1272 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1274 = sha3(mem[_1272 + 32 len mem[_1272]])
                mem[_1235 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1235 + 105] = Mask(160, 96, factoryAddress)
                mem[_1235 + 125] = _1274
                mem[_1235 + 157] = 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21
                mem[_1235 + 72] = 85
                require ext_code.size(address(sha3(0, factoryAddress, _1274, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)))
                staticcall address(sha3(0, factoryAddress, _1274, 0x9d6a514572482299fe260d57cf42a6dd12afda42484913ea67c57bba3fa77e21)).getReserves() with:
                        gas gas_remaining wei
                mem[_1235 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1235 + ceil32(return_data.size) + 189
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require idx < mem[(32 * arg2.length) + 128]
            if mem[(32 * idx) + (32 * arg2.length) + 160] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
            if mem[(32 * idx - 1) + 140 len 20] == address(_1191):
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                        revert with 0, 'ds-math-add-overflow'
                    require idx - 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                else:
                    require mem[(32 * idx) + (32 * arg2.length) + 160]
                    if ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                        revert with 0, 'ds-math-add-overflow'
                    require idx - 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if not mem[(32 * idx) + (32 * arg2.length) + 160]:
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                        revert with 0, 'ds-math-add-overflow'
                    require idx - 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
                else:
                    require mem[(32 * idx) + (32 * arg2.length) + 160]
                    if ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / mem[(32 * idx) + (32 * arg2.length) + 160] != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160] > ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-sub-underflow'
                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * idx) + (32 * arg2.length) + 160]:
                        revert with 0, 'ds-math-mul-overflow'
                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])
                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160]):
                        revert with 0, 'ds-math-add-overflow'
                    require idx - 1 < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg2.length) + 160] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * arg2.length) + 160] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + (32 * arg2.length) + 160])) + 1
        idx = idx - 1
        continue 
    mem[mem[64]] = 32
    _1195 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len 32 * _1195] = mem[(32 * arg2.length) + 160 len 32 * _1195]
    return 32, mem[mem[64] + 32 len (32 * _1195) + 32]
}



}
